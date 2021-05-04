#include <xc.h>
#include <avr/interrupt.h>

#define BTN_NONE 0
#define BTN_HP 1
#define BTN_HM 2
#define BTN_MP 3
#define BTN_MM 4

// increase if getting bouncing
#define BTN_COUNT_TARGET 200

uint16_t ms = 0;
uint8_t s = 0;
uint8_t m = 0;
uint8_t h = 0;
uint8_t change = 1;
uint8_t btn_count = 0;
uint8_t btn_last_captured = 0;

void clock_data(uint8_t);
void send_digit(uint8_t);
void send_2_dig(uint8_t);
uint8_t which_button(unsigned char code);
void btn_action(uint8_t btn);

const uint8_t digit_to_seg[] = {
	0b1111110,
	0b0110000,
	0b1101101,
	0b1111001,
	0b0110011,
	0b1011011,
	0b1011111,
	0b1110000,
	0b1111111,
	0b1111011,
};

int main(void)
{
	// pin 0 is data
	// pin 1 is clk
	// pin 2 interrupt for clock
	// pin 3 buttons with adc
	DDRB = 0b0011;
	PORTB = 0;
	
	// gotta go FAST (8MHz)
	CCP = 0xD8;
	CLKPSR = 0;
	
	// enable external pin change interrupt
	PCICR = 1;
	// enable INT0 interrupt
	EIMSK = 1;
	// enable rising edge interrupt for INT0 (pin2)
	EICRA = 0b11;
	
	// use pin 3 for adc
	ADMUX = 0b11;
	// set free running mode
	ADCSRB = 0;
	// enable adc, start adc, auto trigger (free running), use interrupt, set slowest adc clock (1/128*system clock)
	ADCSRA = 0b11101111;
	
	// global interrupt enable 
	sei();
    while(1)
    {
        if (change) {
			change = 0;
			send_2_dig(h);
			clock_data(s & 1);
			send_2_dig(m);
			clock_data(0);
		}
    }
}

ISR(INT0_vect) {
	ms++;
	if (ms == 32768) {
		ms = 0;
		s++;
		change = 1;
		if (s == 60) {
			s = 0;
			m++;
			if (m == 60) {
				h++;
				m = 0;
				if (h == 24) {
					h = 0;
				}
			}
		}
	}
}

ISR(ADC_vect) {
	uint8_t btn = which_button(ADCL);
	if (btn_last_captured == btn && btn != BTN_NONE) {
		btn_count++;
		if (btn_count == BTN_COUNT_TARGET) {
			btn_action(btn);
		}
	} else {
		if (btn != BTN_NONE) {
			btn_last_captured = btn;
		}
		btn_count = 0;
	}
	
}

void btn_action(uint8_t btn) {
	change = 1;
	if (btn == BTN_HM) {
		h--;
	} else if (btn == BTN_HP) {
		h++;
	} else if (btn == BTN_MP) {
		m++;
	} else if (btn == BTN_MM) {
		m--;
	}
}

uint8_t which_button(uint8_t code) {
	if (code > 204) {
		return BTN_HP;
	}
	if (code > 153) {
		return BTN_HM;
	}
	if (code > 102) {
		return BTN_MP;
	}
	if (code > 51) {
		return BTN_MM;
	}
	return BTN_NONE;
}

void clock_data(uint8_t data) {
	PORTB = data ? 1 : 0;
	PORTB |= 0b10;
}

void send_digit(uint8_t dig) {
	for (uint8_t i = 0; i < 7; i++) {
		clock_data(digit_to_seg[dig] & (1 << i));
	}
}

void send_2_dig(uint8_t data) {
	send_digit(data / 10);
	clock_data(0);
	send_digit(data % 10);
}

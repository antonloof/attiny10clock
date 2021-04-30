#include <xc.h>
#include <avr/interrupt.h>

uint16_t ms = 0;
uint8_t s = 0;
uint8_t m = 0;
uint8_t h = 0;
uint8_t change = 1;

void clock_data(uint8_t);
void send_digit(uint8_t);
void send_2_dig(uint8_t);
// order assumes a,b,c,d,e,f,g
// change when layout is done :D
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
/*
ISR(ADC_vect) {
	if (ADCL > 20) {
		change = 1;
		if (ADCL > 55) {
			if (ADCL > 120) {
				if (ADCL > 190) {
					h--;
				} else {
					m--;
				}
			} else {
				m++;
			}
		} else {
			h++;
		}
	}
}
*/
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

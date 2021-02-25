#include <xc.h>
#include <avr/interrupt.h>

#define clock_data(data) PORTB = (data) ? 1 : 0; PORTB |= 0b10
#define A 0b1
#define B 0b10
#define C 0b100
#define D 0b1000


uint16_t ms = 0;
uint8_t s = 1;
uint8_t ml = 7, mh = 3;
uint8_t hl = 3, hh = 1;
uint8_t change = 1;

void inc_h();
void inc_m();
void dec_h();
void dec_m();


int main(void)
{
	// pin 0 is data
	// pin 1 is clk
	// pin 2 interrupt for clock
	// pin 3 buttons with adc
	DDRB = 0b0011;
	PORTB = 0;
	
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
	//sei();
	
    while(1)
    {
        if (change) {
			clock_data(s & 1);
			
			clock_data(hl & B);
			clock_data(hl & C);
			clock_data(hl & D);
			clock_data(hl & A);
			
			clock_data(hh & B);
			clock_data(hh & A);
			clock_data(0);
			
			clock_data(ml & B);
			clock_data(ml & C);
			clock_data(ml & D);
			clock_data(ml & A);
			
			clock_data(mh & B);
			clock_data(mh & C);
			clock_data(mh & A);
			clock_data(0);
			
			clock_data(0);
			change = 0;
		}
		for (volatile int i = 0; i < 10000; i++) {
			if (i == 254) {
				change = 1;
				inc_m();
			}	
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
			inc_m();
		}
	}
}

ISR(ADC_vect) {
	if (ADCL > 20) {
		if (ADCL > 55) {
			if (ADCL > 120) {
				if (ADCL > 190) {
					dec_h();
				} else {
					dec_m();
				}
			} else {
				inc_m();
			}
		} else {
			inc_h();
		}
	}
}


void inc_h() {
	hl++;
	if (hl == 10) {
		hl = 0;
		hh++;
	}
	if (hl == 4 && hh == 2) {
		hh = 0;
		hl = 0;
	}
}

void inc_m() {
	ml++;
	if (ml == 10) {
		ml = 0;
		mh++;
		if (mh == 6) {
			mh = 0;
			inc_h();
		}
	}
}

void dec_h() {
	if (hl == 0) {
		if (hh == 0) {
			hh = 2;
			hl = 4;
		} else {
			hl = 10;
			hh--;
		}
	}
	hl--;
}

void dec_m() {
	if (ml == 0) {
		ml = 10;
		if (mh == 0) {
			dec_h();
			mh = 6;
		}
		mh--;
	}
	ml--;
}

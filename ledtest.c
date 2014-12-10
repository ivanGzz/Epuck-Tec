#include "init_port.h"

int main(void) {
	long i;
	int led = 1;
	InitPort();
	while(1) {
            LED0 = led;
            LED1 = led;
            LED2 = led;
            LED3 = led;
            for(i = 0; i < 300000; i++) {
		asm("nop");
            }
            led = led^1;
	}

}

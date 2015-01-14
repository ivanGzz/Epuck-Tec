/* 
 * File:   main.c
 * Author: nigonzalez
 *
 * Created on January 13, 2015, 8:48 PM
 */

#include <stdlib.h>
#include "e_init_port.h"
#include "e_epuck_ports.h"

int main(void) {
    long i;
    int led = 1;
    e_init_port();
    while(1) {
        LED0 = led;
        LED1 = led;
        LED2 = led;
        LED3 = led;
        for(i = 0; i < 300000; i++) {
            asm("nop");
        }
        led = led ^ 1;
    }
    return (EXIT_SUCCESS);
}


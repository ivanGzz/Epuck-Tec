/* 
 * File:   main.c
 * Author: nigonzalez
 *
 * Created on January 13, 2015, 8:48 PM
 */

#include <stdlib.h>
#include <stdio.h>
#include "e_init_port.h"
#include "e_epuck_ports.h"
#include "e_uart_char.h"
#include "h_utility.h"
#include "h_btcom.h"

char debugMessage[80];

int main(void) {
    /*long i;
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
    }*/
    wait(500); // h_utility.h
    e_init_port(); // e_init_port.h
    e_init_uart1(); // e_uart_char.h
    btcomWaitForCommand('s'); // h_btcom.h
    sprintf(debugMessage, "link active\r\n");
    btcomSendString(debugMessage); // h_btcom.h
    while (1) NOP();
    return (EXIT_SUCCESS);
}


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
#include "e_I2C_protocol.h"
#include "e_poxxxx.h"
//#include "e_po6030k.h"

char debugMessage[80];
static unsigned char buffer[320];

int main(void) {
    wait(500); // h_utility.h
    e_init_port(); // e_init_port.h
    e_init_uart1(); // e_uart_char.h
    e_i2cp_init(); // e_I2C_protocol.h
    wait(500);
    btcomWaitForCommand('s'); // h_btcom.h
    //sprintf(debugMessage, "link active\r\n");
    //sprintf(debugMessage, "%f", 10.0f);
    //btcomSendString(debugMessage); // h_btcom.h
    e_poxxxx_init_cam();
    //e_po6030k_init_cam();
    e_poxxxx_config_cam((ARRAY_WIDTH - 320) / 2, (ARRAY_HEIGHT - 32) / 2, 320, 8, 2, 4, GREY_SCALE_MODE);
    e_poxxxx_write_cam_registers();
    while (1) {
        e_poxxxx_launch_capture(&buffer[0]);
        while (!e_poxxxx_is_img_ready());
        btcomSendString(buffer);
    }
    return (EXIT_SUCCESS);
}
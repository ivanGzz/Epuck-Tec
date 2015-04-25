/* 
 * File:   main.c
 * Author: nigonzalez
 *
 * Created on January 13, 2015, 8:48 PM
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_motors.h"
#include "e_poxxxx.h"
#include "utilities.h"
#include "e_uart_char.h"
#include "t_vision.h"

char msg[80];
char reds = 0;
char greens = 0;
struct object red_objects[MAX_REDS];
struct object green_objects[MAX_GREENS];

void sendString(char* msg) {
    e_send_uart1_char(msg, strlen(msg));
    while(e_uart1_sending());
}

int main(void) {
    waitMillis(500);
    e_init_port();
    e_init_motors();
    e_init_uart1();
    waitMillis(500);
    e_poxxxx_init_cam();
    e_poxxxx_config_cam(0, 160, WIDTH * ZOOM, HEIGHT * ZOOM, ZOOM, ZOOM, RGB_565_MODE);
    e_poxxxx_write_cam_registers();
    int cycle = 0;
    while (1) {
        reds = 0;
        see(red_objects, &reds, green_objects, &greens);
        sprintf(msg, "total reds %d cycle %d\r\n", reds, cycle);
        sendString(msg);
        char i = 0;
        for (i = 0; i < reds; ++i) {
            sprintf(msg, "red object %d %d \r\n", red_objects[i].dis, red_objects[i].dir);
            sendString(msg);
        }
        sprintf(msg, "total greens %d cycle %d\r\n", greens, cycle);
        sendString(msg);
        for (i = 0; i < greens; ++i) {
            sprintf(msg, "green object %d %d \r\n", green_objects[i].dis, green_objects[i].dir);
            sendString(msg);
        }
        LED0 = LED0 ^ 1;
        waitMillis(500);
        cycle++;
    }
    return (EXIT_SUCCESS);
}
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

#define WIDTH 80 // max width 640
#define HEIGHT 20 // max height 480
#define ZOOM 8 // 1, 2, 4, 8 or 16
#define BUFFER_SIZE (WIDTH * HEIGHT * 2) // we are working on RGB_565

char buffer[BUFFER_SIZE];
char msg[80];

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
    while (1) {
        e_poxxxx_launch_capture(buffer);
        while (!e_poxxxx_is_img_ready());
        char h = buffer[0];
        char l = buffer[1];
	char r = h & 0xF8;
	char g = ((h & 0x07) << 5) | ((l & 0xE0) >> 3);
	char b = (l & 0x1F) << 3;
        sprintf(msg, "%d %d %d\r\n", r, g, b);
        sendString(msg);
        waitMillis(500);
    }
    return (EXIT_SUCCESS);
}
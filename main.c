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
#define BUFFER_SIZE (WIDTH * HEIGHT) // we are working on GREY_SCALE

char buffer[BUFFER_SIZE];
char line[WIDTH];
char msg[80];
char lefts[10];
char rights[10];
int limit = 0;

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
    e_poxxxx_config_cam(0, 160, WIDTH * ZOOM, HEIGHT * ZOOM, ZOOM, ZOOM, GREY_SCALE_MODE);
    e_poxxxx_write_cam_registers();
    int cycle = 0;
    while (1) {
        e_poxxxx_launch_capture(buffer);
        while (!e_poxxxx_is_img_ready());
        int i;
        int min = (int)(buffer[0] & 0xFF);
        int max = (int)(buffer[0] & 0xFF);
        limit = 0;
        for (i = 9 * WIDTH; i < 10 * WIDTH; ++i) {
            int byte = (int)(buffer[i] & 0xFF);
            if (byte > max) {
                max = byte;
            }
            if (byte < min) {
                min = byte;
            }
            limit += byte;
        }
        if (max - min > 10) {
            limit /= WIDTH;
            int index = 0;
            int detected = 0;
            for (i = 9 * WIDTH; i < 10 * WIDTH; ++i) {
                int byte = (int)(buffer[i] & 0xFF);
                if (byte < limit) { // we are detecting black color, 0 is black, 255 is white
                    line[index] = 1;
                    if (index == 0 || (detected < 10 && line[index - 1] == 0)) {
                        lefts[detected] = index;
                    }
                } else {
                    line[index] = 0;
                    if (index > 0 && detected < 10 && line[index - 1] == 1) {
                        rights[detected] = index;
                        detected++;
                    }
                }
                if (index == WIDTH - 1 && line[index] == 1) {
                    rights[detected] = index;
                    detected++;
                }
                index++;
            }
            for (i = 0; i < detected; ++i) {
                sprintf(msg, "%d: %d %d\r\n", cycle, lefts[i], rights[i]);
                sendString(msg);
            }
        }
        waitMillis(500);
        cycle++;
    }
    return (EXIT_SUCCESS);
}
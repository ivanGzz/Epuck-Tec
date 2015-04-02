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
//#define BUFFER_SIZE (WIDTH * HEIGHT) // we are working on GREY_SCALE
#define BUFFER_SIZE (WIDTH * HEIGHT * 2) // now we are working on RGB_565


char buffer[BUFFER_SIZE];
char msg[80];
char reds = 0;
char red_x[10];
char red_y[10];
char red_w[10];
char red_h[10];

void sendString(char* msg) {
    e_send_uart1_char(msg, strlen(msg));
    while(e_uart1_sending());
}

void getColors(char x, char y, char* r, char* g, char* b) {
    char h = buffer[2 * (WIDTH * y + x)];
    char l = buffer[2 * (WIDTH * y + x) + 1];
    char rb = h & 0xF8;
    char gb = ((h & 0x07) << 5) | ((l & 0xE0) >> 3);
    char bb = (l & 0x1F) << 3;
    *r = (rb - gb) + (rb - bb);
    *g = (gb - rb) + (gb - bb);
    *b = (bb - rb) + (bb - gb);
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
        e_poxxxx_launch_capture(buffer);
        while (!e_poxxxx_is_img_ready());
        reds = 0;
        char i, j, h, l, r, g, b;
	for (i = HEIGHT - 1; i >= 0; --i) {
            for (j = WIDTH - 1; j >= 0; --j) {
                getColors(j, i, &r, &g, &b);
                char i_s, j_s, r_s, g_s, b_s, w;
                // red filter
                if (r > 40) {
                    i_s = i;
                    w = 0;
                    while (i_s >= 0) {
                        getColors(j, i_s, &r_s, &g_s, &b_s);
                        if (r_s > 40) {
                            j_s = j;
                            while (j_s >= 0) {
                                getColors(j_s, i_s, &r_s, &g_s, &b_s);
                                if (r_s > 40) {
                                    buffer[2 * (WIDTH * i_s + j_s)] &= 0x07; // clean red
                                } else {
                                    break;
                                }
                                --j_s;
                            }
                            if (j - j_s > w) {
                                w = j - j_s;
                            }
                        } else {
                            break;
                        }
                        --i_s;
                    }
                    h = i - i_s;
                    if (h > 3 && w > 3) {
                        sprintf(msg, "red %d %d %d %d\r\n", j, i, w, h);
                        sendString(msg);
                        reds++;
                    }
                }
            }
        }
        sprintf(msg, "total reds %d cycle %d\r\n", reds, cycle);
        sendString(msg);
        LED0 = LED0 ^ 1;
        waitMillis(500);
        cycle++;
    }
    return (EXIT_SUCCESS);
}
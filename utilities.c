#include "utilities.h"
#include "e_epuck_ports.h"
#include "e_motors.h"
#include <stdlib.h>

int error = 1;

void setLED(int led, int state) {
    switch (led) {
    case 0:
        LED0 = state;
        break;
    case 1:
        LED1 = state;
        break;
    case 2:
        LED2 = state;
        break;
    case 3:
        LED3 = state;
        break;
    case 4:
        LED4 = state;
        break;
    case 5:
        LED5 = state;
        break;
    case 6:
        LED6 = state;
        break;
    case 7:
        LED7 = state;
        break;
    default:
        break;
    }
}

void waitMillis(long millis) {
    long i;
    long wait = millis * 1500;
    for (i = 0; i < wait; ++i);
}

void setSpeeds(int left_speed, int right_speed) {
    double error_l = ((double) ((rand() % (2 * error)) - error)) / 100.0;
    double error_r = ((double) ((rand() % (2 * error)) - error)) / 100.0;
    int left = (int) (((double) left_speed) * (1.0 + error_l));
    int right = (int) (((double) right_speed) * (1.0 + error_r));
    e_set_speed_left(left);
    e_set_speed_right(right);
}
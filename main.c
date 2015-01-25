/* 
 * File:   main.c
 * Author: nigonzalez
 *
 * Created on January 13, 2015, 8:48 PM
 */

#include <stdlib.h>
#include <stdio.h>
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_motors.h"
#include "utilities.h"

int main(void) {
    waitMillis(500);
    e_init_port();
    e_init_motors();
    setSpeeds(500, 500);
    waitMillis(5000);
    setSpeeds(0, 0);
    while (1) NOP();
    return (EXIT_SUCCESS);
}
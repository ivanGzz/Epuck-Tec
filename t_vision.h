/*
 * File:   t_vision.h
 * Author: nigonzalez
 *
 * Created on April 3, 2015, 12:03 PM
 */

#ifndef T_VISION_H
#define	T_VISION_H

#define MAX_REDS 10
#define MAX_GREENS 10

#define WIDTH 80 // max width 640
#define HEIGHT 20 // max height 480
#define ZOOM 8 // 1, 2, 4, 8 or 16
#define BUFFER_SIZE (WIDTH * HEIGHT * 2) // we are working on RGB_565

struct object {
    char dir;
    char dis;
};

void see(struct object* red_objects, char* reds, struct object* green_objects, char* greens);

#endif	/* T_VISION_H */

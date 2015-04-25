#include "e_poxxxx.h"
#include "t_vision.h"

char buffer[BUFFER_SIZE];

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

void see(struct object* red_objects, char* reds, struct object* green_objects, char* greens) {
    *reds = 0;
    *greens = 0;
    e_poxxxx_launch_capture(buffer);
    while (!e_poxxxx_is_img_ready());
    char i, j, r, g, b;
    for (i = HEIGHT - 1; i >= 0; --i) {
        for (j = WIDTH - 1; j >= 0; --j) {
            getColors(j, i, &r, &g, &b);
            char i_s, j_s, r_s, g_s, b_s, w;
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
                char h = i - i_s;
                if (h > 3 && w > 3 && *reds < MAX_REDS) {
                    red_objects[*reds].dis = 550 / w;
                    red_objects[*reds].dir = (j + w / 2 - 40) * 1.5;
                    (*reds)++;
                }
            }
            if (g > 40) {
                i_s = i;
                w = 0;
                while (i_s >= 0) {
                    getColors(j, i_s, &r_s, &g_s, &b_s);
                    if (g_s > 40) {
                        j_s = j;
                        while (j_s >= 0) {
                            getColors(j_s, i_s, &r_s, &g_s, &b_s);
                            if (g_s > 40) {
                                buffer[2 * (WIDTH * i_s + j_s)] &= 0xF8; // clean green
                                buffer[2 * (WIDTH * i_s + j_s) + 1] &= 0x1F; // clean greenc
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
                char h = i - i_s;
                if (h > 3 && w > 3 && *greens < MAX_GREENS) {
                    green_objects[*greens].dis = 550 / w;
                    green_objects[*greens].dir = (j + w / 2 - 40) * 1.5;
                    (*greens)++;
                }
            }
        }
    }
}
// simulates the behavior of VGA.

#include "ppt.h"
#include "lib/lodepng.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#define MAXN 480000
#define min(x,y) (((x) < (y)) ? (x) : (y))

extern uint8_t ppt1[];
uint8_t image[MAXN * 4 + 5];

int main() {
    const char *filename = "vga_simulation.png";
    unsigned width = 800;
    unsigned height = 600;
    int i;
    for (i = 0; i < MAXN * 4; i += 4) {
        uint8_t px = ppt1[i / 4];
        uint8_t r = (px >> 5);
        uint8_t g = ((px & 0x1F) >> 2);
        uint8_t b = (px & 0x3);
        // printf("i = %d, px = 0x%x, r = 0x%x, g = 0x%x, b = 0x%x\n", i, px, r, g, b);
        image[i] = min(255, round(r / 8.0 * 255));
        image[i + 1] = min(255, round(g / 8.0 * 255));
        image[i + 2] = min(255, round(b / 4.0 * 255));
        image[i + 3] = 255;
    }
    unsigned error = lodepng_encode32_file(filename, image, width, height);
    if (error) printf("error!\n");
}
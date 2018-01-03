#include <ulib.h>
#include <stdio.h>
#include "ppt1.h"
extern uint8_t ppt1[];
#define VGA 0xba000000

int main() {
    cprintf("This is our ppt software\n");
    uint32_t port = VGA;
    int i;
    int j;
    for (i = 0; i < 600; i++) {
        for (j = 0; j < 800; j++) {
            *((volatile uint8_t*) (port+i*800+j))  = ppt1[i*800+j];
        }
    }
    return 0;
}

#include "lib/lodepng.h"
#include <cmath>
#include <cstdio>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    const char *filename = "ppt1.png";
    vector<unsigned char> image;
    unsigned width, height;
    unsigned error = lodepng::decode(image, width, height, filename);
    if (error) printf("error!\n");

    FILE *fp = fopen("ppt1.h", "w");
    fprintf(fp, "uint8_t ppt1[] = {\n");
    for (int i = 0; i < image.size(); i += 4) {
        // printf("%d %d %d %d\n", image[i], image[i + 1], image[i + 2], image[i + 3]);
        image[i] = min(7.0, round(image[i] / 255.0 * 8));
        image[i + 1] = min(7.0, round(image[i + 1] / 255.0 * 8));
        image[i + 2] = min(3.0, round(image[i + 2] / 255.0 * 4));
        unsigned r = image[i];
        unsigned g = image[i + 1];
        unsigned b = image[i + 2];
        unsigned px = ((r << 5) | (g << 2) | b);
        fprintf(fp, "0x%x", px);
        if (i < image.size() - 4) fprintf(fp, ",\n");
    }
    fprintf(fp, "};");
    fclose(fp);
}
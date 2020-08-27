#include <cstring>
#include <string>
#include <iostream>
#include <bitset>
#include <iomanip>

#include <png.h>
#include <vector>
#include <fstream>


void writepng_version_info()
{
  fprintf(stderr, "   Compiled with libpng %s; using libpng %s.\n",
    PNG_LIBPNG_VER_STRING, png_libpng_ver);
  fprintf(stderr, "   Compiled with zlib %s; using zlib %s.\n",
    ZLIB_VERSION, zlib_version);
}


int main(int argc, char **argv) {

    writepng_version_info();

    const char *filename = "bag.bitdeint.bin";
    FILE *rfp = fopen(filename, "rb");
    if (!rfp) {
        printf("File %s could not be opened for reading", filename);
        exit(1);
    }

    fseek(rfp, 0L, SEEK_END);
    int sz = ftell(rfp);
    fseek(rfp, 0L, SEEK_SET);

    int width = sz/4;
    printf("%d", width);
    int height = 8;

    char pixels[sz];

    for (int i = 0; i < sz; i++) {
        char byte = getc(rfp);

        int pos = i/4*40;
        pos = pos % 320;
        pos = pos + (i/32)*4;
        pos = pos + i%4;
        pixels[pos] = byte;
        std::cout << i << " " << pos << std::endl;
    }


    png_bytepp row_pointers = (png_bytepp) malloc(sizeof(png_bytep) * height);
    for (int i = 0; i < 8; i++)
        row_pointers[i] = (png_byte *) &pixels[i * 40];

    //const char *outfilename = 'out.png';
    FILE *wfp = fopen("out.png", "wb");
    if (!wfp) {
        printf("File %s could not be opened for writing", filename);
        exit(1);
    }

    png_structp  png_ptr;
    png_infop  info_ptr;

    /* initialize stuff */
    png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);

    if (!png_ptr)
        printf("[write_png_file] png_create_write_struct failed");
    
    info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr)
        printf("[write_png_file] png_create_info_struct failed");

    if (setjmp(png_jmpbuf(png_ptr)))
        printf("[write_png_file] Error during init_io");

    png_init_io(png_ptr, wfp);

    /* write header */
    if (setjmp(png_jmpbuf(png_ptr)))
        printf("[write_png_file] Error during writing header");

    int bit_depth = 4; //FIXME we should repack the pixels down to the correct bit depth.
    png_set_IHDR(png_ptr, info_ptr, width, height,
                 bit_depth, PNG_COLOR_TYPE_PALETTE, PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

    png_color palette[16];

    // 30
    palette[0].red = 0;
    palette[0].green = 0;
    palette[0].blue = 0xff;

    // 3f
    palette[1].red = 0xff;
    palette[1].green = 0xff;
    palette[1].blue = 0xff;

    // 37
    palette[2].red = 0xff;
    palette[2].green = 0x55;
    palette[2].blue = 0xff;

    // 3b
    palette[3].red = 0xff;
    palette[3].green = 0xaa;
    palette[3].blue = 0xff;

    // 0f
    palette[4].red = 0xff;
    palette[4].green = 0xff;
    palette[4].blue = 0x00;

    // 0b
    palette[5].red = 0xff;
    palette[5].green = 0xaa;
    palette[5].blue = 0x00;

    // 00
    palette[6].red = 0x00;
    palette[6].green = 0x00;
    palette[6].blue = 0x00;

    // 2f
    palette[7].red = 0xff;
    palette[7].green = 0xff;
    palette[7].blue = 0xaa;

    // 06
    palette[8].red = 0xaa;
    palette[8].green = 0x55;
    palette[8].blue = 0x00;

    // 0b
    palette[9].red = 0xff;
    palette[9].green = 0xaa;
    palette[9].blue = 0x00;

    // 01
    palette[10].red = 0x55;
    palette[10].green = 0x00;
    palette[10].blue = 0x00;
    
    //fd
    palette[11].red = 0x55;
    palette[11].green = 0xff;
    palette[11].blue = 0xff;
    
    //38
    palette[12].red = 0x00;
    palette[12].green = 0xaa;
    palette[12].blue = 0xff;
    
    //0c
    palette[13].red = 0x00;
    palette[13].green = 0xff;
    palette[13].blue = 0x00;
    
    //08
    palette[14].red = 0x00;
    palette[14].green = 0xaa;
    palette[14].blue = 0x00;
    
    //3c
    palette[15].red = 0x00;
    palette[15].green = 0xff;
    palette[15].blue = 0x00;

    png_set_PLTE(png_ptr, info_ptr, palette, 16);

    png_write_info(png_ptr, info_ptr);

    if (setjmp(png_jmpbuf(png_ptr)))
        printf("[write_png_file] Error during writing bytes");

    png_write_image(png_ptr, row_pointers);

    if (setjmp(png_jmpbuf(png_ptr)))
        printf("[write_png_file] Error during end of write");

    png_write_end(png_ptr, NULL);

    free(row_pointers);

    fclose(wfp);
    fclose(rfp);

    return 0;
}

#include <cstring>
#include <string>
#include <iostream>
#include <bitset>
#include <iomanip>

#include <zlib.h>
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

    const char *filename = argv[1];
    FILE *rfp = fopen(filename, "rb");
    if (!rfp) {
        printf("File %s could not be opened for reading", filename);
        exit(1);
    }

    fseek(rfp, 0L, SEEK_END);
    int sz = ftell(rfp);
    fseek(rfp, 0L, SEEK_SET);

    const unsigned int tile_width = 8;
    const unsigned int tile_height = 8;
    const unsigned int pixels_per_tile = tile_width * tile_width;
    const unsigned int tiles_per_row = 16;

    const unsigned int bits_per_pixel = 4;
    const unsigned int pixels_per_byte = 8 / bits_per_pixel;
    const unsigned int bytes_per_tile = pixels_per_tile / pixels_per_byte;

    const unsigned int pixel_count = sz * pixels_per_byte;
    const unsigned int tile_count = pixel_count / (tile_width * tile_height);

    int unsigned height = (tile_count / tiles_per_row) * tile_height;
    if (tile_count % tiles_per_row) {
        height += tile_height;
    }

    const unsigned int width = tile_width * tiles_per_row;
    const unsigned int width_in_bytes = width / pixels_per_byte;

    char pixels[width_in_bytes * height];
    for (int i = 0; i < (width_in_bytes * height); i++) {
        pixels[i] = 0;
    }

    png_bytepp row_pointers = (png_bytepp) malloc(sizeof(png_bytep) * height);

    const unsigned int tile_width_in_bytes = tile_width / pixels_per_byte;

    unsigned int current_tile = 0;
    unsigned int current_row_tile = 0;

    for (int i = 0; i < sz; i++) {
        current_tile = i / bytes_per_tile;
        current_row_tile = current_tile % tiles_per_row;

        char byte = getc(rfp);

        unsigned int pos = 0;

        // offset pixel
        pos += i % tile_width_in_bytes;

        // offset line
        const unsigned int line_offset = (i % bytes_per_tile) / tile_width_in_bytes;
        pos += line_offset * width_in_bytes;

        // offset tile
        pos += current_row_tile * tile_width_in_bytes;

        // offset row
        const unsigned int row_offset = current_tile / tiles_per_row;
        pos += row_offset * (bytes_per_tile * tiles_per_row);

        pixels[pos] = byte;

        if (current_row_tile == 0 && i % tile_width_in_bytes == 0) {
            row_pointers[line_offset + row_offset * tile_height] = (png_byte *) &pixels[pos];
        }
    }


    // for (int i = 0; i < height; i++)
    //     row_pointers[i] = (png_byte *) &pixels[i * width_in_bytes];

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

    // Map pal
    const int pallete_colors[16] = {
        0x00, 0x2f, 0x0b, 0x06, 0x01, 0x0c, 0x08, 0x04, 0x3f, 0x3e, 0x38, 0x03, 0x30, 0x00, 0x0f, 0x00
    };

    // Pal 0
    // const int pallete_colors[16] = {
    //     0x0000ff, 0xffffff, 0xff55ff, 0xffaaff,
    //     0xffff00, 0xffaa00, 0x000000, 0xffffaa,
    //     0xaa5500, 0xffaa00, 0x550000, 0x55ffff,
    //     0x00aaff, 0x00ff00, 0x00aa00, 0x00ff00
    // };

    // Pal 1
    // const int pallete_colors[16] = {
    //     0x0000ff, 0xffffff, 0x555500, 0xffaa00,
    //     0xff0000, 0xaa0000, 0x000000, 0x0000ff,
    //     0x00ffff, 0x00ff00, 0xffff00, 0x00aa00,
    //     0xaaaaff, 0xaa55ff, 0xff0000, 0xaaaa00
    // };

    png_color palette[16];

    for (int i = 0; i < 16; i++) {
        printf("%d\n", i);
        palette[i].red = ((pallete_colors[i]) & 3) * 85;
        // printf("%#02x\n", palette[i].red);
        palette[i].green = ((pallete_colors[i] >> 2) & 3) * 85;
        // printf("%#02x\n", palette[i].green);
        palette[i].blue = (pallete_colors[i] >> 4) * 85;
        // printf("%#02x\n", palette[i].blue);/
        printf("================\n");
    }

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

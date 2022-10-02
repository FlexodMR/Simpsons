/* SCEI CONFIDENTIAL
    "PlayStation 2" Programmer Tool Runtime Library Release 2.3
 */
/*
 *              Emotion Engine Library Sample Program
 *
 *                         - textrans -
 *
 *                        Version 1.3.0
 *
 *
 *      Copyright (C) 1998-1999 Sony Computer Entertainment Inc.
 *                        All Rights Reserved.
 *
 *                     Name : bitconv.c
 *                     Description : PSMT4/8 ---> PSMCT32
 *
 *       Version   Date           Design              Log
 *  --------------------------------------------------------------------
 *       1.3.0      Dec, 6,1999    munekis            first version
 */


// texture conversion

#include <stdio.h>
//#include <memory.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>

#ifdef _WIN32
#include <io.h>
#else
#include <unistd.h>
#endif

#define PRINT(fmt)      printf(fmt)
#define PRINT1(fmt, n)  printf(fmt, n)

#define DBG(x)

typedef unsigned char u_char;
typedef unsigned int u_int;


int Error(char*);
int BlockConv4to32(unsigned char*, unsigned char*);
int BlockConv8to32(unsigned char*, unsigned char*);
int PageConv4to32(int, int, u_char *, u_char *);
int PageConv8to32(int, int, u_char *, u_char *);
int PageConv16to32(int, int, u_char *, u_char *);
int Conv4to32(int, int, u_char *, u_char *);
int Conv8to32(int, int, u_char *, u_char *);
int Conv16to32(int, int, u_char *, u_char *);

int Error(char *msg)
{
    DBG(fprintf(stderr, "Error : %s\n", msg));
    exit(1);
    return 0;
}

// -------------------------------------------------------------------------------------------
//
//
int BlockConv4to32(u_char *p_input, u_char *p_output) {

    static int lut[] = {
        // even column
        0, 68, 8,  76, 16, 84, 24, 92,
        1, 69, 9,  77, 17, 85, 25, 93,
        2, 70, 10, 78, 18, 86, 26, 94,
        3, 71, 11, 79, 19, 87, 27, 95,
        4, 64, 12, 72, 20, 80, 28, 88,
        5, 65, 13, 73, 21, 81, 29, 89,
        6, 66, 14, 74, 22, 82, 30, 90,
        7, 67, 15, 75, 23, 83, 31, 91,

        32, 100, 40, 108, 48, 116, 56, 124,
        33, 101, 41, 109, 49, 117, 57, 125,
        34, 102, 42, 110, 50, 118, 58, 126,
        35, 103, 43, 111, 51, 119, 59, 127,
        36, 96,  44, 104, 52, 112, 60, 120,
        37, 97,  45, 105, 53, 113, 61, 121,
        38, 98,  46, 106, 54, 114, 62, 122,
        39, 99,  47, 107, 55, 115, 63, 123,


        // odd column
        4, 64, 12, 72, 20, 80, 28, 88,
        5, 65, 13, 73, 21, 81, 29, 89,
        6, 66, 14, 74, 22, 82, 30, 90,
        7, 67, 15, 75, 23, 83, 31, 91,
        0, 68, 8,  76, 16, 84, 24, 92,
        1, 69, 9,  77, 17, 85, 25, 93,
        2, 70, 10, 78, 18, 86, 26, 94,
        3, 71, 11, 79, 19, 87, 27, 95,

        36, 96,  44, 104, 52, 112, 60, 120,
        37, 97,  45, 105, 53, 113, 61, 121,
            38, 98,  46, 106, 54, 114, 62, 122,
        39, 99,  47, 107, 55, 115, 63, 123,
        32, 100, 40, 108, 48, 116, 56, 124,
        33, 101, 41, 109, 49, 117, 57, 125,
        34, 102, 42, 110, 50, 118, 58, 126,
        35, 103, 43, 111, 51, 119, 59, 127
    };

    unsigned int i, j, k, i0, i1, i2;
    unsigned int index0, index1;
    unsigned char c_in, c_out, *pIn;

    pIn = p_input;

    // for first step, we only think for a single block. (4bits, 32x16)
    index1 = 0;

    for(k = 0; k < 4; k++) {
        index0 = (k % 2) * 128;

        for(i = 0; i < 16; i++) {

            for(j = 0; j < 4; j++) {

                c_out = 0x00;

                // lower 4bit.
                i0 = lut[index0++];
                i1 = i0 / 2;
                i2 = (i0 & 0x1) * 4;
                c_in = (pIn[i1] & (0x0f << i2)) >> i2;
                c_out = c_out | c_in;

                // uppper 4bit
                i0 = lut[index0++];
                i1 = i0 / 2;
                i2 = (i0 & 0x1) * 4;
                c_in = (pIn[i1] & (0x0f << i2)) >> i2;
                c_out = c_out | ((c_in << 4) & 0xf0);

                p_output[index1++] = c_out;
            }
        }
        pIn += 64;
    }

    return 0;
}


// -------------------------------------------------------------------------------------------
//
//
int BlockConv8to32(u_char *p_input, u_char *p_output) {

    static int lut[] = {
        // even column
        0, 36, 8,  44,
        1, 37, 9,  45,
        2, 38, 10, 46,
        3, 39, 11, 47,
        4, 32, 12, 40,
        5, 33, 13, 41,
        6, 34, 14, 42,
        7, 35, 15, 43,

        16, 52, 24, 60,
        17, 53, 25, 61,
        18, 54, 26, 62,
        19, 55, 27, 63, 
        20, 48, 28, 56,
        21, 49, 29, 57,
        22, 50, 30, 58,
        23, 51, 31, 59,

        // odd column
        4, 32, 12, 40,
        5, 33, 13, 41,
        6, 34, 14, 42,
        7, 35, 15, 43,
        0, 36, 8,  44,
        1, 37, 9,  45,
        2, 38, 10, 46,
        3, 39, 11, 47,

        20, 48, 28, 56,
        21, 49, 29, 57,
        22, 50, 30, 58,
        23, 51, 31, 59,
        16, 52, 24, 60,
        17, 53, 25, 61,
        18, 54, 26, 62,
        19, 55, 27, 63
    };

    unsigned int i, j, k, i0;
    unsigned int index0, index1;
    unsigned char *pIn;

    pIn = p_input;

    // for first step, we only think for a single block. (4bits, 32x16)
    index1 = 0;

    for(k = 0; k < 4; k++) {

        index0 = (k % 2) * 64;

        for(i = 0; i < 16; i++) {
            for(j = 0; j < 4; j++) {
                i0 = lut[index0++];
                p_output[index1++] = pIn[i0];
            }
        }
        pIn += 64;
    }

    return 0;
}


// -------------------------------------------------------------------------------
// send page size 4bit texture and get each block
// 
//
//
#define PSMT4_BLOCK_WIDTH 32
#define PSMT4_BLOCK_HEIGHT 16

#define PSMCT32_BLOCK_WIDTH 8
#define PSMCT32_BLOCK_HEIGHT 8

u_int index32_h[8*4];
u_int index32_v[8*4];

int PageConv4to32(int width, int height, u_char *p_input, u_char *p_output) {

    static u_int block_table4[] = {
        0,  2,  8, 10,
        1,  3,  9, 11,
        4,  6, 12, 14,
        5,  7, 13, 15,
        16, 18, 24, 26,
        17, 19, 25, 27,
        20, 22, 28, 30,
        21, 23, 29, 31
    };

    static u_int block_table32[] = {
        0,  1,  4,  5, 16, 17, 20, 21,
        2,  3,  6,  7, 18, 19, 22, 23,
        8,  9, 12, 13, 24, 25, 28, 29,
        10, 11, 14, 15, 26, 27, 30, 31
    };

    u_int in_block_nb;

    u_char input_block[16 * 16], output_block[16 * 16];
    u_char *pi0, *pi1, *po0, *po1;
    int index0, index1, i, j, k;
    int n_width, n_height, input_page_line_size;
    int output_page_line_size;




    // --- create table for output 32bit buffer ---
    index0 = 0;
    for(i = 0; i < 4; i++) {
        for(j = 0; j < 8; j++) {
            index1 = block_table32[index0];
            index32_h[index1] = j;
            index32_v[index1] = i;
            index0++;
        }
    }




    n_width = width / 32;
    n_height = height / 16;

    memset(input_block, 0, 16 *16);
    memset(output_block, 0, 16 * 16);

    input_page_line_size = 128 / 2;    // PSMT4 page width (byte)
    output_page_line_size = 256;       // PSMCT32 page width (byte)

    // now assume copying from page top. 
    for(i = 0; i < n_height; i++) {

        for(j = 0; j < n_width; j++) {

            pi0 = input_block;
            pi1 = p_input + 16 * i * input_page_line_size + j * 16;

            in_block_nb = block_table4[i * n_width + j];

            for(k = 0; k < PSMT4_BLOCK_HEIGHT; k++) {
                memcpy(pi0, pi1, PSMT4_BLOCK_WIDTH / 2); // copy full 1 line of 1 block.
                pi0 += PSMT4_BLOCK_WIDTH / 2;
                pi1 += input_page_line_size;
            }

            BlockConv4to32(input_block, output_block);

            po0 = output_block;
            po1 = p_output + 8 * index32_v[in_block_nb] * output_page_line_size + index32_h[in_block_nb] * 32;
            for(k = 0; k < PSMCT32_BLOCK_HEIGHT; k++) {
                memcpy(po1, po0, PSMCT32_BLOCK_WIDTH * 4);
                po0 += PSMCT32_BLOCK_WIDTH * 4;
                po1 += output_page_line_size;   
            }

        }
    }

    return 0;
}



// -------------------------------------------------------------------------------
// send page size 8bit texture and get each block
// 
//
//
#define PSMT8_BLOCK_WIDTH  16
#define PSMT8_BLOCK_HEIGHT 16



int PageConv8to32(int width, int height, u_char *p_input, u_char *p_output) {

    static u_int block_table8[] = {
        0,  1,  4,  5, 16, 17, 20, 21,
        2,  3,  6,  7, 18, 19, 22, 23,
        8,  9, 12, 13, 24, 25, 28, 29,
        10, 11, 14, 15, 26, 27, 30, 31
    };

    static u_int block_table32[] = {
        0,  1,  4,  5, 16, 17, 20, 21,
        2,  3,  6,  7, 18, 19, 22, 23,
        8,  9, 12, 13, 24, 25, 28, 29,
        10, 11, 14, 15, 26, 27, 30, 31
    };

    u_int in_block_nb;

    u_char input_block[16 * 16], output_block[16 * 16];
    u_char *pi0, *pi1, *po0, *po1;
    int index0, index1, i, j, k;
    int n_width, n_height, input_page_line_size;
    int output_page_line_size;



    // --- create table for output 32bit buffer ---
    index0 = 0;
    for(i = 0; i < 4; i++) {
        for(j = 0; j < 8; j++) {
            index1 = block_table32[index0];
            index32_h[index1] = j;
            index32_v[index1] = i;
            index0++;
        }
    }


    // how many blocks we should calc (width/height)
    n_width = width / PSMT8_BLOCK_WIDTH;
    n_height = height / PSMT8_BLOCK_HEIGHT;

    memset(input_block, 0, 16 *16);
    memset(output_block, 0, 16 * 16);

    input_page_line_size  = 128;    // PSMT8 page width (byte)
    output_page_line_size = 256;    // PSMCT32 page width (byte)

    // now assume copying from page top. 
    for(i = 0; i < n_height; i++) {

        for(j = 0; j < n_width; j++) {

            pi0 = input_block;
            pi1 = p_input + PSMT8_BLOCK_HEIGHT * i * input_page_line_size + j * PSMT8_BLOCK_WIDTH; // byte

            in_block_nb = block_table8[i * n_width + j];

            for(k = 0; k < PSMT8_BLOCK_HEIGHT; k++) {
                memcpy(pi0, pi1, PSMT8_BLOCK_WIDTH); // copy full 1 line of 1 block.
                pi0 += PSMT8_BLOCK_WIDTH;  
                pi1 += input_page_line_size;
            }

            BlockConv8to32(input_block, output_block);

            po0 = output_block;
            po1 = p_output + 8 * index32_v[in_block_nb] * output_page_line_size + index32_h[in_block_nb] * 32;
            for(k = 0; k < PSMCT32_BLOCK_HEIGHT; k++) {
                memcpy(po1, po0, PSMCT32_BLOCK_WIDTH * 4);
                po0 += PSMCT32_BLOCK_WIDTH * 4;
                po1 += output_page_line_size;   
            }

        }
    }

    return 0;
}


// -------------------------------------------------------------
//
//

#define PSMT4_PAGE_WIDTH    128
#define PSMT4_PAGE_HEIGHT   128
#define PSMCT32_PAGE_WIDTH  64
#define PSMCT32_PAGE_HEIGHT 32


int Conv4to32(int width, int height, u_char *p_input, u_char *p_output) {


    int i, j, k;
    int n_page_h, n_page_w, n_page4_width_byte, n_page32_width_byte;
    u_char *pi0, *pi1, *po0, *po1;
    int n_input_width_byte, n_output_width_byte, n_input_height, n_output_height;
    u_char input_page[PSMT4_PAGE_WIDTH / 2 * PSMT4_PAGE_HEIGHT];
    u_char output_page[PSMCT32_PAGE_WIDTH * 4 * PSMCT32_PAGE_HEIGHT];

    // ----- check width -----
    for(i = 0; i < 11; i++) {
        if(width == (0x400 >> i)) break;
    }
    if(i == 11) {
        DBG(fprintf(stderr, "Error : width is not 2^n\n"));
        return -1;
    }

    DBG(printf("input_page: %d\n", PSMT4_PAGE_WIDTH / 2 * PSMT4_PAGE_HEIGHT));
    DBG(printf("output_page: %d\n", PSMCT32_PAGE_WIDTH * 4 * PSMCT32_PAGE_HEIGHT));

    memset(input_page, 0, PSMT4_PAGE_WIDTH / 2 * PSMT4_PAGE_HEIGHT);
    memset(output_page, 0, PSMCT32_PAGE_WIDTH * 4 * PSMCT32_PAGE_HEIGHT);

    // ----- check height -----
    for(i = 0; i < 11; i++) {
        if(height == (0x400 >> i)) break;
    }
    if(i == 11) {
        DBG(fprintf(stderr, "Error : width is not 2^n\n"));
        return -1;
    }


    n_page_w = (width - 1) / PSMT4_PAGE_WIDTH + 1;
    n_page_h = (height - 1) / PSMT4_PAGE_HEIGHT + 1;

    n_page4_width_byte = PSMT4_PAGE_WIDTH / 2;
    n_page32_width_byte = PSMCT32_PAGE_WIDTH * 4;

    DBG(printf("n_page_w : %d\n", n_page_w ));
    DBG(printf("n_page_h : %d\n", n_page_h ));

    DBG(printf("n_page4_width_byte : %d\n", n_page4_width_byte ));
    DBG(printf("n_page32_width_byte : %d\n", n_page32_width_byte ));


    // --- set in/out buffer size (for image smaller than one page) ---
    if(n_page_w == 1) {
        n_input_width_byte = width / 2;
        n_output_height = width / 4;
    } else {
        n_input_width_byte = n_page4_width_byte;
        n_output_height = PSMCT32_PAGE_HEIGHT;
    }

    if(n_page_h == 1) {
        n_input_height = height;
        n_output_width_byte = height * 2;
    } else {
        n_input_height = PSMT4_PAGE_HEIGHT;
        n_output_width_byte = n_page32_width_byte;
    }


    for(i = 0; i < n_page_h; i++) {
        for(j = 0; j < n_page_w; j++) {
            pi0 = p_input + (n_input_width_byte * PSMT4_PAGE_HEIGHT) * n_page_w * i 
                + n_input_width_byte * j;
            pi1 = input_page;

            for(k = 0; k < n_input_height; k++) {
                memcpy(pi1, pi0, n_input_width_byte);
                pi0 += n_input_width_byte * n_page_w;
                pi1 += n_page4_width_byte;
            }

            PageConv4to32(PSMT4_PAGE_WIDTH, PSMT4_PAGE_HEIGHT, input_page, output_page);

            po0 = p_output + (n_output_width_byte * PSMCT32_PAGE_HEIGHT) * n_page_w * i
                + n_output_width_byte * j;
            po1 = output_page;
            for(k = 0; k < n_output_height; k++) {
                memcpy(po0, po1, n_output_width_byte);
                po0 += n_output_width_byte * n_page_w;
                po1 += n_page32_width_byte;
            }          
        }
    }



    return 0;
}


// -------------------------------------------------------------
//
//

#define PSMT8_PAGE_WIDTH    128
#define PSMT8_PAGE_HEIGHT   64


int Conv8to32(int width, int height, u_char *p_input, u_char *p_output) {

    int i, j, k;
    int n_page_h, n_page_w, n_page8_width_byte, n_page32_width_byte;
    int n_input_width_byte, n_output_width_byte, n_input_height, n_output_height;
    u_char *pi0, *pi1, *po0, *po1;
    u_char input_page[PSMT8_PAGE_WIDTH * PSMT8_PAGE_HEIGHT];
    u_char output_page[PSMCT32_PAGE_WIDTH * 4 * PSMCT32_PAGE_HEIGHT];

    // ----- check width -----
    for(i = 0; i < 11; i++) {
        if(width == (0x400 >> i)) break;
    }
    if(i == 11) {
        DBG(fprintf(stderr, "Error : width is not 2^n\n"));
        return -1;
    }

    // ----- check height -----
    for(i = 0; i < 11; i++) {
        if(height == (0x400 >> i)) break;
    }
    if(i == 11) {
        DBG(fprintf(stderr, "Error : width is not 2^n\n"));
        return -1;
    }

    memset(input_page, 0, PSMT8_PAGE_WIDTH * PSMT8_PAGE_HEIGHT);
    memset(output_page, 0, PSMCT32_PAGE_WIDTH * 4 * PSMCT32_PAGE_HEIGHT);

    n_page_w = (width - 1) / PSMT8_PAGE_WIDTH + 1;
    n_page_h = (height - 1) / PSMT8_PAGE_HEIGHT + 1;

    n_page8_width_byte = PSMT8_PAGE_WIDTH;
    n_page32_width_byte = PSMCT32_PAGE_WIDTH * 4;

    // --- set in/out buffer size (for image smaller than one page) ---
    if(n_page_w == 1) {
        n_input_width_byte = width;
        n_output_width_byte = width * 2;
    } else {
        n_input_width_byte = n_page8_width_byte;
        n_output_width_byte = n_page32_width_byte;
    }

    if(n_page_h == 1) {
        n_input_height = height;
        n_output_height = height / 2;
    } else {
        n_input_height = PSMT8_PAGE_HEIGHT;
        n_output_height = PSMCT32_PAGE_HEIGHT;
    }

    // --- conversion ---
    for(i = 0; i < n_page_h; i++) {
        for(j = 0; j < n_page_w; j++) {
            pi0 = p_input + (n_input_width_byte * PSMT8_PAGE_HEIGHT) * n_page_w * i 
                + n_input_width_byte * j;
            pi1 = input_page;

            for(k = 0; k < n_input_height; k++) {
                memcpy(pi1, pi0, n_input_width_byte);
                pi0 += n_input_width_byte * n_page_w;
                pi1 += n_page8_width_byte;
            }

            // --- convert a page ---
            PageConv8to32(PSMT8_PAGE_WIDTH, PSMT8_PAGE_HEIGHT, input_page, output_page);

            po0 = p_output + (n_output_width_byte * n_output_height) * n_page_w * i
                + n_output_width_byte * j;
            po1 = output_page;
            for(k = 0; k < n_output_height; k++) {
                memcpy(po0, po1, n_output_width_byte);
                po0 += n_output_width_byte * n_page_w;
                po1 += n_page32_width_byte;
            }          
        }
    }





    return 0;
}


// -------------------------------------------------------------
//
//

#define PAGE_WIDTH      64 // in pixels
#define PAGE_HEIGHT_16  64 // in lines
#define PAGE_HEIGHT_32  32 // in lines
#define PAGE_SIZE     8192 // in bytes

#define BLOCK_WIDTH_16  16 // in pixels
#define BLOCK_WIDTH_32   8 // in pixels
#define BLOCK_HEIGHT_16  8 // in pixels
#define BLOCK_HEIGHT_32  8 // in pixels
#define BLOCK_SIZE_16  256 // in bytes

#define COLUMN_WIDTH_16 16 // in pixels
#define COLUMN_HEIGHT_16 2 // in pixels
#define COLUMN_SIZE_16  64 // in bytes

int Block16to32(u_char *block_in, u_char *block_out)
{
    int lut[]={
         0,  8, 
         1,  9, 
         2, 10, 
         3, 11, 
         4, 12, 
         5, 13, 
         6, 14, 
         7, 15, 
        16, 24, 
        17, 25, 
        18, 26, 
        19, 27, 
        20, 28, 
        21, 29, 
        22, 30, 
        23, 31, 
    };
    int i, j;
    u_char column_in[COLUMN_SIZE_16], column_out[COLUMN_SIZE_16];

    for (i=0; i<4; i++)
    {
        memcpy(column_in, block_in+COLUMN_SIZE_16*i, COLUMN_SIZE_16);

        for (j=0; j<16; j++)
        {
            memcpy(column_out+4*j+0, column_in+lut[j*2+0]*2, 2);
            memcpy(column_out+4*j+2, column_in+lut[j*2+1]*2, 2);
        }

        memcpy(block_out+COLUMN_SIZE_16*i, column_out, COLUMN_SIZE_16);
    }

    return 0;
}


int PageConv16to32(int width, int height, u_char *p_input, u_char *p_output) {

    static u_int block_table16[] = {
         0,  2,  8, 10,
         1,  3,  9, 11,
         4,  6, 12, 14,
         5,  7, 13, 15,
        16, 18, 24, 26,
        17, 19, 25, 27,
        20, 22, 28, 30,
        21, 23, 29, 31
    };

    static u_int block_table32[] = {
        0,  1,  4,  5, 16, 17, 20, 21,
        2,  3,  6,  7, 18, 19, 22, 23,
        8,  9, 12, 13, 24, 25, 28, 29,
        10, 11, 14, 15, 26, 27, 30, 31
    };

    u_int in_block_nb;

    u_char input_block[16 * 16], output_block[16 * 16];
    u_char *pi0, *pi1, *po0, *po1;
    int index0, index1, i, j, k;
    int n_width, n_height, input_page_line_size;
    int output_page_line_size;



    // --- create table for output 32bit buffer ---
    index0 = 0;
    for(i = 0; i < 4; i++) {
        for(j = 0; j < 8; j++) {
            index1 = block_table32[index0];
            index32_h[index1] = j;
            index32_v[index1] = i;
            index0++;
        }
    }


    // how many blocks we should calc (width/height)
    n_width = width / BLOCK_WIDTH_16;
    n_height = height / BLOCK_HEIGHT_16;

    memset(input_block, 0xFF, 16 *16);
    memset(output_block, 0xFF, 16 * 16);

    input_page_line_size  = 128;    // PSMCT16 page width (byte)
    output_page_line_size = 256;    // PSMCT32 page width (byte)

    // now assume copying from page top. 
    for(i = 0; i < n_height; i++) {

        for(j = 0; j < n_width; j++) {

            pi0 = input_block;
            pi1 = p_input + BLOCK_HEIGHT_16 * i * input_page_line_size + j * BLOCK_WIDTH_16*2; // byte

            in_block_nb = block_table16[i * n_width + j];

            for(k = 0; k < BLOCK_HEIGHT_16; k++) {
                memcpy(pi0, pi1, BLOCK_WIDTH_16*2); // copy full 1 line of 1 block.
                pi0 += BLOCK_WIDTH_16*2;
                pi1 += input_page_line_size;
            }

            Block16to32(input_block, output_block);

            po0 = output_block;
            po1 = p_output + 8 * index32_v[in_block_nb] * output_page_line_size + index32_h[in_block_nb] * 32;
            for(k = 0; k < PSMCT32_BLOCK_HEIGHT; k++) {
                memcpy(po1, po0, PSMCT32_BLOCK_WIDTH * 4);
                po0 += PSMCT32_BLOCK_WIDTH * 4;
                po1 += output_page_line_size;   
            }

        }
    }

    return 0;
}

int Conv16to32(int width, int height, u_char *image_in, u_char *image_out)
{
    int number_pages_w, nx;
    int number_pages_h, ny;
    int l, x, y, w;

    u_char page_in[PAGE_SIZE], page_out[PAGE_SIZE];

    // get the number of pages
    number_pages_w=width/PAGE_WIDTH;
    number_pages_h=height/PAGE_HEIGHT_16;

    // for each page
    for (ny=0; ny<number_pages_h; ny++)
    {
        for (nx=0; nx<number_pages_w; nx++)
        {
            // get page data
            for (l=0; l<PAGE_HEIGHT_16; l++)
            {
                x=nx*PAGE_WIDTH*2;
                y=ny*PAGE_HEIGHT_16;
                w=width*2;
                memcpy(page_in+l*PAGE_WIDTH*2, image_in+x+(y+l)*w, PAGE_WIDTH*2);
            }

            // convert page from PSMCT16 to PSMCT32
        //    Page16to32(page_in, page_out);
            PageConv16to32(PAGE_WIDTH, PAGE_HEIGHT_16, page_in, page_out);
    
            // write converted page to output buffer
            for (l=0; l<PAGE_HEIGHT_16/2; l++)
            {
                x=(nx%(number_pages_w/2))*PAGE_WIDTH*4;
                y=(ny*2+(nx>=number_pages_w/2))*PAGE_HEIGHT_32;
                w=width*2;
                memcpy(image_out+x+(y+l)*w, page_out+l*PAGE_WIDTH*4, PAGE_WIDTH*4);
            }
        }
    }

    return 0;
}



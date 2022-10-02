/*===========================================================================
    File:: lzr.hpp

    A compression format designed for speedy decompression

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _LZRF_HPP
#define _LZRF_HPP

#define LZR_BLOCK_SIZE 4096

void lzrf_compress (const unsigned char* input, unsigned int inputsize,
                         unsigned char* output, unsigned int* outputsize, bool fastest);

void lzrf_decompress (const unsigned char* input, unsigned int inputsize,
                            unsigned char* output, unsigned int outputsize);

#endif


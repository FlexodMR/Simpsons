/*===========================================================================
    File:: lzr.cpp

    A compression format designed for speedy decompression

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.


    The format of LZR (Lempel - Ziv - Radical) is as follows:

    The file consists of sequences of literal runs, or dictionary matches.

    A literal run is specified with a byte from 0-15, specifying the length
    of the run.  If the byte is 0, the length is 15 + the next byte.  If that
    byte is 0, add 255 and continue...

    eg:
    Bytes    Length
    14       14
    0 1      16  (15 + 1)
    0 24     39  (15 + 24)
    0 0 1    271 (15 + 255 + 1)
    0 0 0 1  526 (15 + 255 + 255 + 1)

    A match begins with a byte greater than 15.  Matches encode an offset into
    previously decompressed characters, and a count of characters.

    The count is stored in the low 4 bits of the first byte, and uses the same
    rules as the literal run for extending the count beyond 15.  The offset is
    stored in the high 4 bits, plus 16 * the next byte (after count extensions).

    eg:

    Code bytes            Offset      Count

    17  (0x11) 0          1           1
    234 (0xEA) 1          30          10
    64  (0x40) 43 52      836         58          

    This compressor does NOT encode EOF.  The caller must pass in the correct
    output size.
    
===========================================================================*/



#include "lzr.hpp"
#include <assert.h>
#include <string.h>
#include <stdio.h>

void lzr_decompress (const unsigned char* input, unsigned int inputsize,
                            unsigned char* output, unsigned int outputsize)
{
    unsigned int outputcount = 0;

    while(outputcount < outputsize)
    {
        unsigned int code = *input++;

        if(code > 15)
        {
            // a match
            int matchlength = code & 15;

            if(matchlength == 0)
            {
                matchlength += 15;
                while (*input == 0)
                {
                    matchlength += 255;
                    input++;
                }
                matchlength += *input++;
            }

            int offset = (code >> 4) | (*input++) << 4;
            unsigned char* match_ptr = output - offset;

            // shortest match is 4 characters, so we can unroll the loop
            int len = matchlength>>2;
            matchlength -= len<<2;

            do
            {
                *output++ = *match_ptr++;
                *output++ = *match_ptr++;
                *output++ = *match_ptr++;
                *output++ = *match_ptr++;
                outputcount += 4;
            } while(--len);

            while(matchlength)
            {
                *output++ = *match_ptr++;
                outputcount++;
                matchlength--;
            }
        }
        else
        {
            // A literal run
            int runlength = code;
            
            if(runlength == 0)
            {
                while (*input == 0)
                {
                    runlength += 255;
                    input++;
                }
                runlength += *input++;

                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                *output++ = *input++;
                outputcount += 15;
            }

            do
            {
                *output++ = *input++;
                outputcount++;
            } while(--runlength);
        }
    }
}


static void
InitTree();

static bool
AddString(const unsigned char* input, unsigned int inputcount, unsigned int inputsize,
             unsigned int* offset, unsigned int* count);

static void
FindLongestMatch(const unsigned char* input, unsigned int inputcount, unsigned int inputsize,
                      unsigned int* offset, unsigned int* count);

static int 
WriteCount(unsigned char* output, unsigned int count, unsigned char highbits);

// This compressor is NOT optimised for speed.  In fact, it uses a fairly
// slow algorithm to find matches, so it's quite slow.

#define MINIMUM_MATCH_LENGTH 4

void lzr_compress (const unsigned char* input, unsigned int inputsize,
                         unsigned char* output, unsigned int* outputsize, bool fastest)
{
    
    unsigned int inputcount = 0;
    unsigned int outputcount = 0;
    unsigned int literalstart = 0;
    unsigned int literalcount = 0;

    InitTree();
    
    unsigned int offset;
    unsigned int count = 0;
    while( inputcount < inputsize )
    {
        
        if((count > MINIMUM_MATCH_LENGTH) && ((offset & 15) != 0))
        {
            if(literalcount > 0)
            {
//                printf("L %8d %8d\n", literalstart, literalcount);
                outputcount += WriteCount(&output[outputcount], literalcount, 0);
                memcpy(&output[outputcount], &input[literalstart], literalcount);
                outputcount+= literalcount;
            }

            assert((offset & 0xf) > 0);

//            printf("M %8d %8d %8d\n", inputcount, count, offset);

            outputcount += WriteCount(&output[outputcount], count, (offset & 0xf) << 4);
            output[outputcount++] = (offset & 0xff0) >> 4;
            if(fastest)
            {
                inputcount += count;
            }
            else
            {
            unsigned int total = count;
            bool failed = false;
            for(unsigned int c = 0; c < total; c++)
            {
                inputcount ++;
                failed = AddString(input, inputcount, inputsize, &offset, &count);
            }
            if(failed)
            {
                //FindLongestMatch(input, inputcount, inputsize, &offset, &count); 
            }
            }
            literalcount = 0;
            literalstart = inputcount;
        } else {
            literalcount++;
            inputcount++;
            if(!fastest)
            {
                if(AddString(input, inputcount, inputsize, &offset, &count))
                {
                    FindLongestMatch(input, inputcount, inputsize, &offset, &count);
                }
            }
        }
        if(fastest)
        {
            AddString(input, inputcount, inputsize, &offset, &count);
        }
    }
    if(literalcount > 0)
    {
//        printf("L %8d %8d\n", literalstart, literalcount);
        outputcount += WriteCount(&output[outputcount], literalcount, 0);
        memcpy(&output[outputcount], &input[literalstart], literalcount);
        outputcount += literalcount;
        literalcount = 0;
        literalstart = inputcount;
    }
    *outputsize = outputcount;
}

struct {
    unsigned int parent;
    unsigned int smaller;
    unsigned int larger;
} tree[ LZR_BLOCK_SIZE + 1 ];

#define TREE_ROOT LZR_BLOCK_SIZE
#define UNUSED (LZR_BLOCK_SIZE+ 0xffff)

static void
InitTree()
{
    tree[TREE_ROOT].larger = 0;
    tree[0].parent = TREE_ROOT;
    tree[0].larger = UNUSED;
    tree[0].smaller = UNUSED;
}

static bool
AddString(const unsigned char* input, unsigned int inputcount, unsigned int inputsize, 
             unsigned int* offset, unsigned int* count)
{
    int test_node = tree[ TREE_ROOT ].larger;
    bool failure = false;
    *count = 0;

    while(1)
    {
        unsigned int i;
        int delta;

        for( i = 0; i < inputsize - inputcount; i++ )
        {
            delta = input[inputcount + i] - input[test_node + i];
            if( delta != 0 )
            {
                break;
            }
        }

        if( i > *count )
            
        {
            // Don't return match offsets that are multiples of 16
            if(((inputcount - test_node) & 15) == 0)
            {
                failure = true;
            }else{
                *count = i;
                *offset = inputcount - test_node;                
            }
        }
         
        unsigned int *child;
        if( delta >= 0)
        {
            child = &tree[ test_node ].larger;
        } else {
            child = &tree[ test_node ].smaller;
        }
        if(*child == UNUSED)
        {
            *child = inputcount;
            tree[inputcount].parent = test_node;
            tree[inputcount].larger = UNUSED;
            tree[inputcount].smaller = UNUSED;
            return failure;
        }
        test_node = *child;
    }
}   


static void
FindLongestMatch(const unsigned char* input, unsigned int inputcount, unsigned int inputsize,
                      unsigned int* offset, unsigned int* count)
{
    *offset = 0;
    *count = 0;
    
    for(unsigned int o = 0; o < inputcount; o++)
    {
        // We can't encode an offset which is a multiple of 16!
        if( ((o - inputcount) & 0xf) == 0)
        {
            continue;
        }
        unsigned int c;
        for(c = 0; (c < inputsize - o) && (c + inputcount < inputsize ); c++)
        {
            if(input[o + c] == input[inputcount + c])
            {
                if(c+1 > *count)
                {
                    *count = c+1;
                    *offset = o;
                }
            } else {
                break;
            }
        }
    }
    *offset = inputcount - *offset;   
}

static int 
WriteCount(unsigned char* output, unsigned int count, unsigned char highbits)
{
    int outcount = 0;
    if(count > 15)
    {
        output[outcount++] = highbits;
        count -= 15;
        while( count > 255)
        {
            output[outcount++] = 0;
            count -= 255;
        }
        output[outcount++] = count;
    } else {
        output[outcount++] = highbits | count;
    }
    return outcount;
}


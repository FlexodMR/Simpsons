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



#include "lzrf.hpp"
#include <assert.h>
#include <string.h>
#include <stdio.h>

void lzrf_decompress (const unsigned char* input, unsigned int inputsize,
                            unsigned char* output, unsigned int outputsize)
{
    unsigned int outputcount = 0;

    while(outputcount < outputsize)
    {
        unsigned int code = *input++;

        if( code & 0x80 )           //if the first bit is set, it is a match then
        {
            // a match
            int matchlength = code & 0x7f;           

            if( matchlength == 0 ){
                matchlength += 127;
                while( *input == 0 ){
                    matchlength += 255;
                    input++;
                }
                matchlength += *input++;
            }

            int offset;
            
            int oc = *input++;          //offset code

            if( oc & 0x80 ){            // oc > 127 : the next byte of input is also offset, and it should be multiplied by 16
                offset = *input++;
                offset <<= 4;
                offset += ( oc & 0x7f );
            }
            else
                offset = oc;            //oc <= 127

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
        else            //otherwise, a literal run
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

                memcpy( output, input, 127 ); 
                input += 127;
                output += 127;                
                outputcount += 127;

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
WriteCount(unsigned char* output, unsigned int count, bool bLiteralrun );

// This compressor is NOT optimised for speed.  In fact, it uses a fairly
// slow algorithm to find matches, so it's quite slow.

#define MINIMUM_MATCH_LENGTH 4

void lzrf_compress (const unsigned char* input, unsigned int inputsize,
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
        
        if((count > MINIMUM_MATCH_LENGTH)){
            if(literalcount > 0){
                //printf("L %8d %8d\n", literalstart, literalcount);
                //we are writing out a literal run
                outputcount += WriteCount( &output[outputcount], literalcount, true );
                memcpy(&output[outputcount], &input[literalstart], literalcount);
                outputcount+= literalcount;
            }          

            //printf("M %8d %8d %8d\n", inputcount, count, offset);

            outputcount += WriteCount( &output[outputcount], count, false ); 
            
            if( offset <= 127 )
                output[outputcount++] = offset;             //offset falls into the range of 1 ~ 127
            else{
                int highbyte = offset/128;
                int lowbyte = offset%128;

                output[outputcount++] = ( lowbyte | 0x80 );
                output[outputcount++] = ( highbyte * 128 ) >> 4;
            }


            
            if(fastest){
                inputcount += count;
            }
            else{
                unsigned int total = count;
                bool failed = false;
                for(unsigned int c = 0; c < total; c++){
                    inputcount ++;
                    failed = AddString(input, inputcount, inputsize, &offset, &count);
                }

                if(failed){
                    //FindLongestMatch(input, inputcount, inputsize, &offset, &count); 
                }
            }
            literalcount = 0;
            literalstart = inputcount;
        } else {
            literalcount++;
            inputcount++;
            if(!fastest){
                if(AddString(input, inputcount, inputsize, &offset, &count))
                    FindLongestMatch(input, inputcount, inputsize, &offset, &count);
                
            }
        }

        if(fastest)       
            AddString(input, inputcount, inputsize, &offset, &count);
        
    }

    if(literalcount > 0){
        //printf("L %8d %8d\n", literalstart, literalcount);
        outputcount += WriteCount(&output[outputcount], literalcount, true );
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
} lzrf_tree[ LZR_BLOCK_SIZE + 1 ];

#define TREE_ROOT LZR_BLOCK_SIZE
#define UNUSED (LZR_BLOCK_SIZE+ 0xffff)

static void
InitTree()
{
    lzrf_tree[TREE_ROOT].larger = 0;
    lzrf_tree[0].parent = TREE_ROOT;
    lzrf_tree[0].larger = UNUSED;
    lzrf_tree[0].smaller = UNUSED;
}

static bool
AddString(const unsigned char* input, unsigned int inputcount, unsigned int inputsize, 
             unsigned int* offset, unsigned int* count)
{
    int test_node = lzrf_tree[ TREE_ROOT ].larger;
    
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

        if( i > *count ){            
            *count = i;
            *offset = inputcount - test_node;            

        }        

         
        unsigned int *child;
        if( delta >= 0)
        {
            child = &lzrf_tree[ test_node ].larger;
        } else {
            child = &lzrf_tree[ test_node ].smaller;
        }
        if(*child == UNUSED)
        {
            *child = inputcount;
            lzrf_tree[inputcount].parent = test_node;
            lzrf_tree[inputcount].larger = UNUSED;
            lzrf_tree[inputcount].smaller = UNUSED;
            return failure;
        }
        test_node = *child;
    }
}   


static void
FindLongestMatch(const unsigned char* input, unsigned int inputcount, unsigned int inputsize,
                      unsigned int* offset, unsigned int* count)
{

    unsigned int start = 0;

    *offset = 0;
    *count = 0;
    
//    start = inputcount > 255 ? inputcount - 255 : 0;

    for(unsigned int o = start; o < inputcount; o++)
    {
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
WriteCount(unsigned char* output, unsigned int count, bool bLiteralrun )
{
    int outcount = 0;
    if( bLiteralrun ){          //a literal run count(0-254); or 0 (count - 254)
        if( count < 128 ){
            output[outcount++] = count;
        }
        else{        
            output[outcount++] = 0;
            count -= 127;
            while( count > 255){
                output[outcount++] = 0;
                count -= 255;
            }
            output[outcount++] = count;
        }
    } else {        //a match: highest bit is set

        if( count < 128 ){
            output[outcount++] = count | 0x80;
        }
        else{
            output[outcount++] = 0x80;

            count -= 127;
            while( count > 255 ){
                output[outcount++] = 0;
                count -= 255;
            }

            output[ outcount++] = count;
        }
    }
    return outcount;
}
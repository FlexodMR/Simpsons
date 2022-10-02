// p3dvertexinfo - tells you what components are set in PDDI a vertex mask
// 8-Mar-02 (NV)

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include "../../../pddi/pddienum.hpp"

// hextodec converts '0'-'F' to 0 to 16
// This is ugly code. [nv: looks beautiful to me]
static int hextodec(int chr)
{
     return isdigit(chr) ? (chr - '0') : ((chr & ~('a' - 'A')) - 'A' + 10);
}
// Like atoi, but expect the input in hex,
static int htoi(const char* str)
{
    int result = 0;;
    const char* s = str;

    while(*s)
    {
        result <<= 4;
        result += hextodec(*s);
        s++;
    }

    return result;
}


int main(int argc, char** argv)
{
    if(argc != 2)
    {
        puts("p3dvertexinfo version 1.0.0\n");
        puts("Copyright 2002 Radical Entertainment Ltd.\n");
        puts("   Usage:  p3dvertexinfo <vertex mask (decimal)>\n");
        puts("This tool displays the components that are present in a PDDI vertex mask.\n");
        exit(-1);
    }

    unsigned mask = atoi(argv[1]);

    puts("");
    int nUV = mask & 0xf;
    printf("Texture Co-ords: %d\n", nUV);

    if(mask & PDDI_V_POSITION) puts("PDDI_V_POSITION");
    if(mask & PDDI_V_NORMAL)   puts("PDDI_V_NORMAL");
    if(mask & PDDI_V_COLOUR)   puts("PDDI_V_COLOUR");
    if(mask & PDDI_V_SPECULAR) puts("PDDI_V_SPECULAR");
    if(mask & PDDI_V_INDICES)  puts("PDDI_V_INDICES");
    if(mask & PDDI_V_WEIGHTS)  puts("PDDI_V_WEIGHTS");
    if(mask & PDDI_V_SIZE)     puts("PDDI_V_SIZE");
    if(mask & PDDI_V_W)        puts("PDDI_V_W");
    if(mask & PDDI_V_BINORMAL) puts("PDDI_V_BINORMAL");
    if(mask & PDDI_V_TANGENT)  puts("PDDI_V_TANGENT");

    return 0;
}

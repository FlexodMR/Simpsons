// p3duid - convertes a string to a UID
// 8-Mar-02 (NV)

#include <stdio.h>
#include <stdlib.h>

__int64 MakeUID(const char *x)
{
    if (!x)
        return 0;

    __int64 h = 0;
    char* s = (char*)x;
    while(*s)
    {
        h *= 65599;
        h = (h ^ *s);
        ++s;
    }
    return h;
}


int main(int argc, char** argv)
{
    if(argc != 2)
    {
        puts("p3duid version 1.0.0\n");
        puts("Copyright Radical Entertainment 2002 Ltd.\n");
        puts("   Usage:  p3duid <string>\n");
        puts("This tool converts strings into 64 bit unique identifiers.\n");
        exit(-1);
    }

    printf("\n0x%I64x\n", MakeUID(argv[1]));
    
    return 0;
}


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <fstream.h>

#ifdef _WIN32
    #define WIN32_LEAN_AND_MEAN
    #define WIN32_EXTRA_LEAN
    #include <windows.h>
    #include <io.h>
#else
    #include <unistd.h>
#endif

char tmp[1024];

char* Changelist(void)
{
    system("p4 changes -m 1 -s submitted ../toollib/...#have > info.tmp");

    ifstream tmpfile("info.tmp");
    tmpfile.getline(tmp,1024);

    char* start = tmp;
    while(*start != ' ')
        start++;

    start++;

    char* end = start;
    while(*end != ' ')
        end++;

    *end = 0;

    return start;
}

void main(int argc, char* argv[])
{
    char timestr[1024];

    // get the current date and time
    time_t ltime;
    struct tm *now;
    time(&ltime);
    now = localtime(&ltime);
    strftime(timestr, 256, "%B %d, %Y, %H:%M:%S", now);

    printf("char* tlCompileInfo = \"%s change %s: Compiled %s\";\n", argv[1], Changelist(), timestr);

//    remove("info.tmp");
}


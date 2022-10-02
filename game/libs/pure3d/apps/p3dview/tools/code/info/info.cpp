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

void WriteChangelist(void)
{
    system("p4 changes -m 1 -s submitted ../../../../...#have > info.tmp");

    char tmp[1024];
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

    printf("char* compileChangelist = \"%s\";\n", start);
}

void WriteServer(void)
{
    system("p4 info > info.tmp");

    char tmp[1024];
    ifstream tmpfile("info.tmp");

    for(int i = 0; i < 7; i++)
        tmpfile.getline(tmp,1024);

    char* start = tmp;
    while(*start != ' ')
        start++;

    start++;

    while(*start != ' ')
        start++;

    start++;

    char* end = start;
    while(*end != '\n')
        end++;

    *end = 0;

    printf("char* compileServer = \"%s\";\n", start);
}

void main(void)
{
    char timestr[1024];

    // get the current date and time
    time_t ltime;
    struct tm *now;
    time(&ltime);
    now = localtime(&ltime);
    strftime(timestr, 256, "%B %d, %Y, %H:%M:%S", now);
    printf("char* compileTime = \"%s\";\n", timestr);

    // get the current user
    char userstr[1024];

#ifdef _WIN32
    DWORD size = 256;
    GetUserName(userstr, &size);
#else
    char* loginname = getlogin();
    if(loginname)
    {
        strcat(userstr, loginname);
    } else {
        strcat(userstr "Unknown");
    }
#endif
    printf("char* compileUser = \"%s\";\n", userstr);

    printf("char* compileInfo = \"Compiled %s by %s\";\n", timestr, userstr);

    WriteChangelist();
    WriteServer();

    remove("info.tmp");
}


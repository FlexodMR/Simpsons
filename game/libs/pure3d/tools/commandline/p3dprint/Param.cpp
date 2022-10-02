//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "Param.hpp"
#include "version.hpp"
#include "toollib.hpp"

#include <constants/version.hpp>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>
#ifdef P3DWIN95
    #include <io.h>
#endif


Parameters::~Parameters()
{
    if(Filev){
        for(int i=0;i<Filec;i++){
            strdelete(Filev[i]);
        }
        delete[](Filev);
    }
}

Parameters::Parameters(int argc, char* argv[])
{
    Argc = argc;
    Argv = argv;
    Verbosity = 0;
    
    int Hist = 0;
    
    Machine = FALSE;
    Depth = 0xffffffff;
    
    char ch;

    while ((ch = getopt(argc, argv, "?hHnvmd:")) != EOF){
        switch(ch) {
            case 'd':
                Depth = (unsigned int) atoi(optarg);
                break;
            case 'm':
                Machine = TRUE;
                break;
            case 'v':
                Verbosity++;
                break;
            case 'H':
                Hist++;
                break;
            case 'h':
            case '?':
            default:
                Usage();
                break;
        }
    }
    if(Hist){
        History(Hist);
    }
    if(argc<=optind){
        Usage();
    }

    Filec = 0;
    Filev = (char**) new char*[1024];
    for(int i=optind;i<argc;i++){

#ifdef P3DWIN95
        if(strchr(argv[i],'*') || strchr(argv[i],'?')){
            char Path[1024];
            strcpy(Path,argv[i]);
            char* fname;
            if((fname = strrchr(Path,'\\'))||(fname = strrchr(Path,'/'))){
                fname[0] = 0;
            }else{
                strcpy(Path,".");
                //Path[0] = 0;
            }
                
            _finddata_t fd;
            long handle = _findfirst( argv[i], &fd );
            if( handle == -1 ) {
                printf( "%s: No Match", argv[i] );
                exit( -1 );
            }
            while( handle != -1 ) {
                char buf[1024];
                sprintf(buf,"%s\\%s",Path,fd.name);
                Filev[Filec++] = strnew(buf);
                if(_findnext( handle, &fd ) == -1) break;
            }
        } else {
            Filev[Filec++] = strnew(argv[i]);
        }
#else
        Filev[Filec++] = strnew(argv[i]);
#endif
    }
    if(Filec==0){
        Usage();
    }
}

void
Parameters::Usage()
{
    printf("p3dprint version %s (using ATG %s)\n",version, ATG_VERSION);
    puts( "\nRadical Entertainment 1998\n\n"
            "\tUsage: p3dprint [options] <inputfile> [<inputfile> ...]\n\n"   
            "This program prints the contents of a P3D file by calling the Print()\n"
            "method on the tlDataChunk read from the file.\n\n"
            "Support for filename wildcards is provided.\n"
            "\n"
            "Possible options are:\n"
            "\t-d depth   : Print only to depth\n"
            "\t-m         : Print in machine readable format\n"
            "\t-H         : Show version History\n"
            "\t-? -h      : Print this message\n"
        );
    exit(1);
}


void
Parameters::History(int count)
{
    printf("p3dprint version %s (with ATG %s)\n\n", version, ATG_VERSION);
    puts( "\nRadical Entertainment 1998\n\n");

    for(int x=0; versioninfo[x] && (x<10*count); x++){
          printf("%s\n",versioninfo[x]);
    }
    exit(0);
}


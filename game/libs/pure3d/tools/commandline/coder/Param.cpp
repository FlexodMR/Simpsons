#include "Param.hpp"
#include "version.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "getopt.h"

char * strnew( const char * org ){
    char * buffer = new char[ strlen( org )+ 1  ];
    memset( buffer, 0, strlen( org ) + 1 );
    strcpy( buffer, org );
    return buffer;
}

Parameters::~Parameters()
{
    if( OutputFile ){
        delete[ ] OutputFile;
        OutputFile = NULL;
    }

    if( TemplateFile ){
        delete[ ] TemplateFile;
        TemplateFile = NULL;
    }

}

Parameters::Parameters(int argc, char* argv[])
{
    int Hist = 0;

    Argc = argc;
    Argv = argv;


    OutputFile = NULL;
    TemplateFile = NULL;

    char ch;
    int option_index = 0;
    static struct option long_options[] = {
      {0,0,0,0}
    };

    while ((ch = getopt_long(argc, argv, "?Hho:t:",long_options,&option_index)) != EOF)
    {
        switch(ch)
        {         
            // Now the short arguments         
            case 'o':
                OutputFile = strnew(optarg);
                break;
            case 't':
                TemplateFile = strnew(optarg);
                break;
            case 'H':
                Hist++;
                break;
            case 'h':
                Usage();
                break;
            case '?':
            default:
                ShortUsage();
                break;
        }
    }   
    
    if(Hist){
        VersionHistory(Hist);
    }

    if( !OutputFile || !TemplateFile )
        ShortUsage();
}

void
Parameters::ShortUsage()
{
    printf("Coder version %s\n",version);
    puts( "\nCopyright Radical Entertainment 2002\n\n"
            "   Usage: Coder [options]\n\n"
         "Create code based on the template file\n"
            "\n"
            "Try Coder -h for more info.\n");
    exit(1);
}

void
Parameters::Usage()
{
    printf("Coder version %s\n",version);    
    puts( "\nCopyright Radical Entertainment 2002\n\n"
            "   Usage: Coder [options]\n\n"
         "Create code based on the template file\n"
            "\n"
            "Possible options are:\n"
         " -o, name  Specify output file name\n"
         " -t, name  Specify template file name\n"
            "\n"
            "Standard options:\n"            
            "  -H            Show version History\n"
            "  -h --help     Print this message\n"
        );
    exit(1);
}

void
Parameters::VersionHistory(int count)
{
    printf("Coder version %s\n\n", version );
    puts( "Copyright Radical Entertainment 2002\n");

    for(int x=0; versioninfo[x] && (x<10*count); x++){
          printf("%s\n",versioninfo[x]);
    }
    exit(0);
}

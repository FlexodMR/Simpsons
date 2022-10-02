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
    if( SchemaFile ){
        delete[ ] SchemaFile;
        SchemaFile = NULL;
    }

    if( SchemaDir ){
        delete[ ] SchemaDir;
        SchemaDir = NULL;
    }

    if( SrcOutputDir ){
        delete[ ] SrcOutputDir;
        SrcOutputDir = NULL;
    }

    
    if( IncOutputDir ){
        delete[ ] IncOutputDir;
        IncOutputDir = NULL;
    }
}

Parameters::Parameters(int argc, char* argv[])
{
    int Hist = 0;

    Argc = argc;
    Argv = argv;


    SchemaFile = NULL;
    SchemaDir = NULL;
    SrcOutputDir = NULL;
    IncOutputDir = NULL;

    char ch;
    int option_index = 0;
    static struct option long_options[] = {
      {0,0,0,0}
    };

    while ((ch = getopt_long(argc, argv, "?Hhs:I:O:i:",long_options,&option_index)) != EOF)
    {
        switch(ch)
        {         
            // Now the short arguments         
            case 's':
                SchemaFile = strnew(optarg);
                break;
            case 'I':
                SchemaDir = strnew(optarg);
                break;
            case 'O':
                SrcOutputDir = strnew( optarg );
                break;

             case 'i':
                IncOutputDir = strnew( optarg );
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

    if( !SchemaFile  )
        ShortUsage();
}

void
Parameters::ShortUsage()
{
    printf("DataFilesCreator version %s\n",version);
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
    printf("DataFilesCreator version %s\n",version);    
    puts( "\nCopyright Radical Entertainment 2002\n\n"
            "   Usage: Coder [options]\n\n"
         "Create code based on the template file\n"
            "\n"
            "Possible options are:\n"
         " -s, name  Specify schema file name\n"
         " -I, name  Specify directory for searching schema files\n"
         " -O, name  Specify directory for writing out cpp files\n"
         " -i, name  Specify directory for writing out hpp files\n"
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
    printf("DataFilesCreator version %s\n\n", version );
    puts( "Copyright Radical Entertainment 2002\n");

    for(int x=0; versioninfo[x] && (x<10*count); x++){
          printf("%s\n",versioninfo[x]);
    }
    exit(0);
}

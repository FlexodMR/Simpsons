//-----------------------------------------------------------------------------
#include <conio.h>
#include <crtdbg.h>
#include <stdlib.h>
#include "..\..\..\common\localization\languageDatabase.h"
#include <iostream>
#include <assert.h>
#include "textCompiler.h"

#ifndef LANGUAGE_HASHING_MODULO
#define LANGUAGE_HASHING_MODULO
#endif 

using std::cout ;
using std::endl ;

//-GLOBALS --------------------------------------------------------------------
char fname[ _MAX_PATH ];    
char data_path[ _MAX_PATH ] = "" ;                //name of the XLS file
char characterMapName[ _MAX_PATH ] = "" ;        //name of the character mapping table
char platforms[ 30 ] = "" ;    
bool help = false ;            
bool show_dbase = false ;    
bool rebuild_all = false ;    
bool tiny = false ;            
int hashing_modulo = 65599 ;    

enum FileType
{
    FILE_RTF,
    FILE_XLS,
    FILE_UNKNOWN
} ;
FileType fileType = FILE_UNKNOWN ;

//-----------------------------------------------------------------------------
void PrintHelpMessage( char* programName )
//ripped out of langcmp2
{
    printf("Usage: %s [/S] [/M:<number>] [/D:<path>] [/O:<platform_id>] [/A] [/T] /F:<infile>\n",programName );
    printf("    /s Show Database after successfully parsing script.\n");
    printf("    /f Specify which file is the script (rtf or scr).\n");
    printf("    /m Specify the modulo for hashing names.\n");
    printf("    /o Specify the path for all output files (eg. /o:c:\temp)\n");
    printf("    /p List the platforms to build (eg. /P:PW), default=all\n");
    printf("    /a Rebuild ALL (force all files to be re-written)\n");
    printf("    /t Tiny Headers (no error checking inthe headers will be generated)\n");
}
//-----------------------------------------------------------------------------
void ParseCommandLine( int argc, char* argv[] )
{
    //what command line flags are we concerned with?
    for(int n = 1; n < argc; n++)
    {
        //allow all the following characters for delimiters
        if( (argv[n][0]=='/') || (argv[n][0]=='\\') || (argv[n][0]=='-') )
        {
            if(toupper(argv[n][1])=='F')
            {
                if(argv[n][2]==':')
                {
                    //we've found the filenmae, copy it into al global variable
                    if(!fname)
                    {
                        printf( "where's the filename?\n" ) ;
                        help=1;
                        break;
                    }
                    strcpy( fname , argv[ n ] + 3 );

                    //split off the extention, and set the fileType variable
                    int length = strlen( fname ) ;
                    char* extension = fname + length - 3 ; 
                    if( stricmp( extension, "RTF" ) == 0 )
                    {
                        //it's an RTF file
                        fileType = FILE_RTF ;
                    }
                    else if( stricmp( extension, "XLS" ) ==0 )
                    {
                        //it's an XLS file
                        fileType = FILE_XLS ;
                    }
                    else
                    {
                        //what kind of file is it?!?!
                        fileType = FILE_UNKNOWN ;
                        assert( false ); 
                    }
                    if( strcmp( data_path, "" ) == 0 )
                    {
                        strncpy( data_path, fname, length - 4 );
                    }
                }
                else
                {
                    printf( "where's the ':' for the filename ?\n" ) ;
                    help=1;
                    break;
                }
            }
            else if(toupper(argv[n][1])=='S')
            {
                show_dbase=1;
            }
            else if(toupper(argv[n][1])=='A')
            {
                rebuild_all=1;
            }
            else if(toupper(argv[n][1])=='T')
            {
                tiny=1;
            }
            else if(toupper(argv[n][1])=='M')
            {
                if(argv[n][2]==':')
                {
                    if(isdigit(argv[n][3]))
                    {
                        hashing_modulo=atoi(&argv[n][3]);
                    }
                    else
                    {
                        printf( "hashing modulus should be a number!\n" ) ;
                        help=1;
                        break;
                    }
                }
                else
                {
                    printf( "where's the colon for the hashing modulus!\n" ) ;
                    help=1;
                    break;
                }
            }
            else if(toupper(argv[n][1])=='P')
            {
                if(argv[n][2]==':')
                {
                    if(argv[n][3])
                    {
                        strcpy( platforms, argv[ n ] + 3 ) ;
//                        platforms=&argv[n][3];
                    }
                    else
                    {
                        printf( "platform list empty!\n" ) ;
                        help=1;
                        break;
                    }
                }
                else
                {
                    printf( "where's the colon for the platforms!\n" ) ;
                    help=1;
                    break;
                }
            }
            else if(toupper(argv[n][1])=='O')
            {
                if(argv[n][2]==':')
                {
                    if(argv[n][3])
                    {
                        strcpy( data_path, argv[ n ] + 3 ) ;
//                        data_path=&argv[n][3];
                    }
                    else
                    {
                        printf( "where's the data path!\n" ) ;
                        help=1;
                        break;
                    }
                }
                else
                {
                    printf( "where's the colon for the data path!\n" ) ;
                    help=1;
                    break;
                }
            }
            else if(toupper(argv[n][1])=='C')
            {
                if(argv[n][2]==':')
                {
                    if(argv[n][3])
                    {
                        strcpy( characterMapName, argv[ n ] + 3 ) ;
                    }
                    else
                    {
                        printf( "ERROR: Expected filename after -C option?\n" ) ;
                        help=1;
                        break;
                    }
                }
                else
                {
                    printf( "ERROR: Expected ':' after the -C option!\n" ) ;
                    help=1;
                    break;
                }
            }
            else
            {
                printf( "unrecognized option!\n" ) ;
                help=1;
                break;
            }
        }
        else
        {
            printf( "bad delimiter - wanted a '/'!\n" ) ;
            help=1;
            break;
        }
    }
    if(!fname)
    {
        help=1;
    }

    //if there are no arguments then display the help
    if( stricmp( fname, "" ) == 0 )
    {
        help = 1 ;
    }
}
//-----------------------------------------------------------------------------
int main( int argc, char* argv[], char* envp[] )
{
    //_CrtSetBreakAlloc( 123469 ) ;
    LanguageDatabase* ldb = new LanguageDatabase ;
    ParseCommandLine( argc, argv ) ;

    if (strlen(platforms) > 0)
    {
        if( strcmp( platforms, "gc" ) == 0 )
        {
            ldb->SetPlatform( PL_GC );
        }
    }
    
    if( help ) 
    {
        PrintHelpMessage( argv[ 0 ] ) ;
    }

    bool fileSuccessfullyLoaded = ldb->Import( fname ) ;

    //output the compiled bible
    TextCompiler compiler( ldb ) ;
    compiler.SetDataPath( ::data_path ) ;
    if( hashing_modulo )
    {
        compiler.SetHashingModulo( ::hashing_modulo ) ;
    }
    compiler.Export() ;

    char szPath[ _MAX_PATH ];
    char szFName[ _MAX_FNAME ];
    char szDrive[ _MAX_DRIVE ];
    char szDir[ _MAX_DIR ];
    char szExt[ _MAX_EXT ];

    _splitpath( fname, szDrive, szDir, szFName, szExt );
    _makepath( szPath, szDrive, szDir, szFName, "ldb" );


    delete ldb ;
    cout << "returning" << endl ;
    return ( 0 );

}


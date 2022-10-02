//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        main.cpp
//
// Subsystem:	RadSound WavToRsd Conversion Tool
//
// Description:	Console application for the conversion tool
//
//
// Revisions:   Oct 24, 2001
//
//=============================================================================

//#include "..\..\source\recurse.hpp"
#include "..\..\inc\radsoundtools.hpp"
#include "radsound.hpp"

//============================================================================
// ::PrintTitler
//============================================================================

void PrintTitle
(
    void
)
{
    printf("===========================================================================\n" );
    printf("WavToRsd V2.1.5| (C) 2001 Radical Entertainment | Maintained: Tim Hinds\n");
    printf("===========================================================================\n" );
}

//============================================================================
// ::DumpUsage
//============================================================================

void DumpUsage
(
    void
)
{
    PrintTitle( );

    printf( "This program converts .wav files to Radical's .rsd format\n\n");
    printf( "Usage: wavtorsd.exe [-s|-f] ..\\my\\dir\\ -t/xt/pt/wt/gt ..\\my\\target\\dir\\ -vagchunk 32000 -checkdate -silent" );
    printf( "-f                    sourcefilename   is for single files only\n" );
    printf( "-s                    sourcedirname\n" );
    printf( "-xt                   xbox targetname\n" );
    printf( "-pt                   ps2 targetname\n" );
    printf( "-gt                   gamecube targetname\n" );
    printf( "-wt                   windows targetname\n" );
	printf( "-xadpcm               to cpmvert tp adpcm files on xbox\n" );
    printf( "-gcadpcm              to convert to adpcm files on gcn\n" );
    printf( "-radadpcm             to convert to adpcm on any platform\n" );
    printf( "-silent               to inhibit program display\n" );
    printf( "-checkdate    to require target to be older than source\n" );
}


int main( int argc, char * argv[ ] )
{
    char * pSourceDir = NULL;
    const char*  pSourceFile = NULL;

	char * pXBoxTargetDir = NULL;
	char * pPs2TargetDir = NULL;
	char * pPcTargetDir = NULL;
	char * pWindowsTargetDir = NULL;
	char * pGameCubeTargetDir = NULL;
    bool silent = false;

    unsigned     bagChunkSize = 32000;
    bool         checkDate = false;
    bool         looping = true;

    if ( argc == 0 )
    {
        DumpUsage( );
        return -1;
    }
        
    int argcount = 1;

	bool xAdpcm = false;
    bool gcAdpcm = false;
    bool radAdpcm = false;

    while ( argcount < argc )
    {
        if ( strcmp( argv[ argcount ], "/?" ) == 0 || strcmp( argv[ argcount ], "-help" ) == 0 )
        {
            DumpUsage( );
            return 0;
        }

        if ( strcmp( argv[ argcount ], "-xt" ) == 0 )
        {
            argcount++;

            if ( argcount < argc )
            {
                pXBoxTargetDir = argv[ argcount ];
            }
        }
        else if ( strcmp ( argv[ argcount ], "-pt" ) == 0 )
        {
            argcount++;

            if ( argcount < argc )
            {
                pPs2TargetDir = argv[ argcount ];
            }
        }
        else if ( strcmp( argv[ argcount ], "-gt" ) == 0 )
        {
            argcount++;

            if ( argcount < argc )
            {
                pGameCubeTargetDir = argv[ argcount ];
            }
        }
        else if ( strcmp( argv[ argcount ], "-wt" ) == 0 )
        {
            argcount++;

            if( argcount < argc )
            {
                pWindowsTargetDir = argv[ argcount ];
            }
        }
        else if ( strcmp( argv[ argcount ], "-s" ) == 0 )
        {
            argcount++;

            if ( argcount < argc )
            {
                pSourceDir = argv[ argcount ];
            }
        }
        else if ( strcmp( argv[ argcount ], "-checkdate" ) == 0 )
        {
            checkDate = true;
        }
        else if ( strcmp( argv[ argcount ], "-silent" ) == 0 )
        {
            silent = true;
        }
        else if( strcmp( argv[ argcount ], "-f" ) == 0 )
        {
            argcount++;

            if ( argcount < argc )
            {
                pSourceFile = argv[ argcount ];
            }
        }
		else if (strcmp( argv[ argcount ], "-xadpcm" ) == 0 )
		{
			xAdpcm = true;
		}
		else if (strcmp( argv[ argcount ], "-gcadpcm" ) == 0 )
		{
			gcAdpcm = true;
		}
		else if (strcmp( argv[ argcount ], "-radadpcm" ) == 0 )
		{
			radAdpcm = true;
		}		
        else
        {
            DumpUsage( );
            return -1;
        }

        argcount++;
    }

    if ( ! silent )
    {
        PrintTitle( );

        printf
        (
            "Source:         [%s]\n"
            "XBoxTarget:     [%s]\n"
            "Ps2Target:      [%s]\n"
            "GameCubeTarget: [%s]\n"
            "WindowsTarget:  [%s]\n"
            "Chunk Size:     [%d]\n"
			"XAdpcm:         [%s]\n"
            "GCAdpcm:        [%s]\n"
            "CheckDate:      [%s]\n"
            "Silent:         [%s]\n",
            pSourceDir, pXBoxTargetDir, pPs2TargetDir, pGameCubeTargetDir, pWindowsTargetDir, 16,
            xAdpcm ? "true" : "false",
            gcAdpcm ? "true" : "false",
            checkDate ? "true" : "false",
            silent ? "true" : "false"
        );
    }

    if ( ! silent )
    {    
        printf( "---------------------------------------------------------------------------\n");
    }

	rstFlipSlashes( pSourceDir );
	rstFlipSlashes( pXBoxTargetDir );
	rstFlipSlashes( pPs2TargetDir );
	rstFlipSlashes( pGameCubeTargetDir );
	rstFlipSlashes( pWindowsTargetDir );

    bool error = false;

    const char * pFile;
    char sourceName[ 256 ];
    char targetName[ 256 ];

    void * pFinder = NULL;

    if ( rstFindFiles( & pFinder, pSourceDir ) )
    {
        rstFindReset( pFinder );

        while ( rstFindGetNext( pFinder, & pFile ) )
        {
            char fileNameNoExtension[ _MAX_FNAME ];
            char fileDrive[ _MAX_DRIVE ];
            char fileDir[ _MAX_DIR ];
            char fileExt[ _MAX_EXT ];
            char createDir[ _MAX_DIR ];              

            _splitpath( pFile, fileDrive, fileDir, fileNameNoExtension, fileExt );
            sprintf( sourceName, "%s\\%s", pSourceDir, pFile );        

            //
            // Windows build
            //   

            if ( pWindowsTargetDir != NULL )
            {
                sprintf( targetName, "%s\\%s%s.rsd", pWindowsTargetDir, fileDir, fileNameNoExtension );
                sprintf( createDir,  "%s\\%s",       pWindowsTargetDir, fileDir );
                
                IRadSoundHalAudioFormat::Encoding e;
                
                if ( radAdpcm )
                {
                    e = IRadSoundHalAudioFormat::RadicalAdpcm;
                }
                else
                {
                    e = IRadSoundHalAudioFormat::PCM;
                }
                                               
                if ( ! rstConvertFile( sourceName, targetName, IRadSoundHalAudioFormat::PCM, checkDate, silent ) )
                {
                    error = true;
                    break;
                }
            }

            //
            // XBox build
            //

            if ( pXBoxTargetDir != NULL )
            {

                sprintf( targetName, "%s\\%s%s.rsd", pXBoxTargetDir, fileDir, fileNameNoExtension );
                sprintf( createDir,  "%s\\%s",       pXBoxTargetDir, fileDir );

                IRadSoundHalAudioFormat::Encoding e;
                
                if ( radAdpcm )
                {
                    e = IRadSoundHalAudioFormat::RadicalAdpcm;
                }
                else if ( xAdpcm )
                {
                    e = IRadSoundHalAudioFormat::XBOXADPCM;
                }
                else
                {
                    e = IRadSoundHalAudioFormat::PCM;
                }
                
                if ( ! rstConvertFile( sourceName, targetName, e, checkDate, silent ) )
                {
                    error = true;
                    break;
                }
            }

            //
            // Ps2 build
            //

            if ( pPs2TargetDir != NULL )
            {
                sprintf( targetName, "%s\\%s%s.rsd", pPs2TargetDir, fileDir, fileNameNoExtension );
                sprintf( createDir,  "%s\\%s",       pPs2TargetDir, fileDir );
  

                if ( ! rstConvertFile( sourceName, targetName, IRadSoundHalAudioFormat::VAG, checkDate, silent ) )
                {
                    error = true;
                    break;
                }
            }
            
            //
            // GameCube build
            //
            
            if ( pGameCubeTargetDir != NULL )
            {
                sprintf( targetName, "%s\\%s%s.rsd", pGameCubeTargetDir, fileDir, fileNameNoExtension );
                sprintf( createDir,  "%s\\%s",       pGameCubeTargetDir, fileDir );

                IRadSoundHalAudioFormat::Encoding e;
                
                if ( gcAdpcm )
                {
                    e = IRadSoundHalAudioFormat::GCNADPCM;
                }
                else if ( radAdpcm )
                {
                    e = IRadSoundHalAudioFormat::RadicalAdpcm;
                }
                else
                {
                    e = IRadSoundHalAudioFormat::PCM_BIGENDIAN;
                }
                
                if ( gcAdpcm )
                {
                    if ( ! rstConvertFile( sourceName, targetName, e, checkDate, silent ) )
                    {
                        error = true;
                        break;
                    }
                }
            }
        }
    }
    else if( (pSourceFile != NULL) && rstFileExists( pSourceFile ) )
    {
        //
        // Ps2 build
        //

        if ( pPs2TargetDir != NULL )
        {
            if ( ! rstConvertFile( pSourceFile, pPs2TargetDir, IRadSoundHalAudioFormat::Encoding::VAG, checkDate, silent ) )
            {
                error = true;
            }
        }

        //
        // Windows build
        //   

        if ( pWindowsTargetDir != NULL )
        {

            IRadSoundHalAudioFormat::Encoding e;
            
            if ( radAdpcm )
            {
                e = IRadSoundHalAudioFormat::RadicalAdpcm;
            }
            else
            {
                e = IRadSoundHalAudioFormat::PCM;
            }
                        
            if ( ! rstConvertFile( pSourceFile, pWindowsTargetDir, e, checkDate, silent ) )
            {
                error = true;
            }       
        }

		//
		// XBox Build
		//

        if ( pXBoxTargetDir != NULL )
        {
            IRadSoundHalAudioFormat::Encoding e;
                    
            if ( radAdpcm )
            {
                e = IRadSoundHalAudioFormat::RadicalAdpcm;
            }
            else if ( xAdpcm )
            {
                e = IRadSoundHalAudioFormat::XBOXADPCM;
            }
            else
            {
                e = IRadSoundHalAudioFormat::PCM;
            }

            if ( ! rstConvertFile( pSourceFile, pXBoxTargetDir, e, checkDate, silent ) )
            {
                error = true;
            }
        }
        //
        // GameCube build
        //
        
        if ( pGameCubeTargetDir != NULL )
        {
            IRadSoundHalAudioFormat::Encoding e;
            
            if ( gcAdpcm )
            {
                e = IRadSoundHalAudioFormat::GCNADPCM;
            }
            else if ( radAdpcm )
            {
                e = IRadSoundHalAudioFormat::RadicalAdpcm;
            }
            else
            {
                e = IRadSoundHalAudioFormat::PCM_BIGENDIAN;
            }
                        
            if ( ! rstConvertFile( pSourceFile, pGameCubeTargetDir, e , checkDate, silent ) )
            {
                error = true;
            }               
        }
    }
    else
    {
        if ( ! silent )
        {
            printf( "Directory Recurse Failed" );\
        }

        return 0;
    }

    if ( error == false )
    {
        if ( silent == false )
        {
            printf( "Operation Completed: [%s]\n", rstGetLastError( ) );
            printf( "===========================================================================\n\n" );
		}

                 
		return 0;
    }
    else
    {
        printf( "!Error!: [%s]\n", rstGetLastError( ) );

    	/* LPVOID lpMsgBuf;

		FormatMessage( 
			FORMAT_MESSAGE_ALLOCATE_BUFFER | 
			FORMAT_MESSAGE_FROM_SYSTEM | 
			FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			GetLastError(),
			MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
			(LPTSTR) &lpMsgBuf,
			0,
			NULL 
		);
		
		printf( "Last Windows Error: %s\n", lpMsgBuf );

		LocalFree( lpMsgBuf ); */
 
        if ( ! silent )
        {
            fprintf( stdout, "===========================================================================\n\n" );
        }

        return -1;
    }
}

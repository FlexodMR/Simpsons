
#include "..\..\inc\radmusictools.hpp"

void print_usage( void )
{
    printf( "==============================================================================\n" );
    printf( "radmusic script compiler V1.1 : Maintained : Tim Hinds\n" );
    printf( "==============================================================================\n" );
    printf( "\nUsage:\n" );
    printf( "\trmcompile -s sourcefile [-wt -pt -gt -xt] targetfileanddirectory -checkdate -silent\n" );
    printf( "\n\t-s source script filepath\n");
    printf( "\t-wt windows target filepath\n" );
    printf( "\t-pt ps2 target filepath\n" );
    printf( "\t-gt gamecube target filepath\n" );
    printf( "\t-xt xbox target filepath\n" );
    printf( "\t-radadpcm\n" );
    printf( "\t-checkdate only convert files if out of date.\n" );
    printf( "\t-silent output only errors to console.\n" );
    printf( "\nYou may specify more than one target directory for a single run of the\n" );
    printf( "program.  All .wav files MUST be in the same directory as the source\n" );
    printf( "script file--they will get built into the directory of the target\n" );
}

main( int argc, char *argv[ ] )
{
    bool checkDate = false;
    bool silent = false;
    bool radAdpcm = false;

    const char * pWinTarget = NULL;
    const char * pXBoxTarget = NULL;
    const char * pGcTarget = NULL;
    const char * pPs2Target = NULL;

    const char * pCompileSource = NULL;

    const char * pAppPath = argv[ 0 ];

    int arg = 1;

    while ( arg < argc )
    {
        if ( strcmp( argv[ arg ], "-s" ) == 0 )
        {
            arg++;

            if ( arg < argc )
            {
                pCompileSource = argv[ arg ];
            }
        }
        else if ( strcmp( argv[ arg ], "-wt" ) == 0 )
        {
            arg++;

            if ( arg < argc )
            {
                pWinTarget = argv[ arg ];
            }
        }
        else if ( strcmp( argv[ arg ], "-pt" ) == 0 )
        {
            arg++;

            if ( arg < argc )
            {
                pPs2Target = argv[ arg ];
            }
        }
        else if ( strcmp( argv[ arg ], "-xt" ) == 0 )
        {
            arg++;

            if ( arg < argc )
            {
                pXBoxTarget = argv[ arg ];
            }
        }
        else if ( strcmp( argv[ arg ], "-gt" ) == 0 )
        {
            arg++;

            if ( arg < argc )
            {
                pGcTarget = argv[ arg ];
            }
        }
        else if ( strcmp( argv[ arg ], "-silent" ) == 0 )
        {
            silent = true;
        }
        else if ( strcmp( argv[ arg ], "-radadpcm" ) == 0 )
        {
            radAdpcm = true;        
        }
        else if ( strcmp( argv[ arg ], "-checkdate" ) == 0 )
        {
            checkDate = true;
        }
        else
        {
            print_usage( );
            return -1;           
        }
                                
        arg++;
    }
    
    if ( pCompileSource != NULL )
    {
        if ( pWinTarget != NULL )
        {
            if ( false == ::radMusicToolsCompileScript( false, pCompileSource, pWinTarget, radAdpcm ? IRadSoundHalAudioFormat::RadicalAdpcm : IRadSoundHalAudioFormat::PCM, checkDate, silent ) )
            {
                goto BAIL;
            }
        }
        
        if ( pPs2Target != NULL )
        {
            if ( false == ::radMusicToolsCompileScript( false, pCompileSource, pPs2Target, radAdpcm ? IRadSoundHalAudioFormat::RadicalAdpcm : IRadSoundHalAudioFormat::VAG, checkDate, silent ) )
            {
                goto BAIL;
            }
        }

        if ( pXBoxTarget != NULL )
        {
            if ( false == ::radMusicToolsCompileScript( false, pCompileSource, pXBoxTarget, radAdpcm ? IRadSoundHalAudioFormat::RadicalAdpcm : IRadSoundHalAudioFormat::PCM, checkDate, silent ) )
            {
                goto BAIL;
            }
        }

        if ( pGcTarget != NULL )
        {
            if ( false == ::radMusicToolsCompileScript( true, pCompileSource, pGcTarget, radAdpcm ? IRadSoundHalAudioFormat::RadicalAdpcm : IRadSoundHalAudioFormat::PCM_BIGENDIAN, checkDate, silent ) )
            {
                goto BAIL;
            }
        }
        
        return 0;            
    }
    else
    {
        print_usage( );

        return -1;
    }

    return 0;

    BAIL:

        printf( "rmcompile.exe: Failed: [%s]\n", radMusicToolsGetLastError( ) );

        return -1;

}
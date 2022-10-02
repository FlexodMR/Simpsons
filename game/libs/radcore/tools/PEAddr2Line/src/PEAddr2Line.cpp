//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// PEAddr2Line.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "PEAddr2Line.h"

//
// executable filename, elf, exe
//
char                g_szExeFileName[ 1024 ] = { 0 };

char                g_DllPath[ 1024 ] = { 0 };

//
// process handler for this symbol lookup
//
HANDLE              g_hSymProcessHandler = NULL;

//
// last error
//
PEAddr2LineError    g_eLastError = PEAddr2Line_NoError;

//
// add offsets to address to map to PE exe, this is handy if the runtime address don't match up (a la XBOX)
//
int                 g_nOffset = 0;

//
// XBox main( ) function address, used to find out the symbol lookup offset
//
unsigned int        g_uXBoxMainAddr = 0;

//
// Critical section for this DLL
//
CRITICAL_SECTION    g_ExclusionObject;

const char EXTERNAL_ELF_READER[] = "addr2line.exe";

//
// help function to determine if file is an elf file
//
bool IsElfFile( const char * szFileName );

//
// help function to determine if file is an standard Win32 executable file
//
bool IsPeFile( const char * szFileName );

//
// help function to parse stdout from external program into standard function/line format
//
void ParseBuffer( const char * szInBuffer, char * szSymbol[ 512 ], char * szLine[ 512 ], const int nEntryExpected );

void CalculateXBoxOffset( );

bool radPEAddr2Line( const unsigned int uAddr, char pSymbolInfo[ 512 ], char pLineInfo[ 512 ] )
{
    return radPEAddr2LineV( & uAddr, 1, & pSymbolInfo, & pLineInfo );
}

bool radPEAddr2LineV( const unsigned int * uAddr, const int nAddrSize, char * pSymbolInfo[ 512 ], char * pLineInfo[ 512 ] )
{
    if ( nAddrSize == 0 )
    {
        return false;
    }

    ::EnterCriticalSection( & g_ExclusionObject );

    char szLine[ 512 ] = { 0 };
    char szSymbol[ 512 ] = { 0 };

    bool bRet = true;

    if ( IsPeFile( g_szExeFileName ) )
    {
        if ( g_hSymProcessHandler == NULL )
        {
            g_eLastError = PEAddr2Line_ExeNotLoaded;
            ::LeaveCriticalSection( & g_ExclusionObject );
            return false;
        }

        DWORD               dwSearchAddr = 0;
        DWORD               dwDisplacement = 0;
        BYTE                bufferSymbol[ 512 ] = { 0 };       // just incase the symbol is huge
        PIMAGEHLP_SYMBOL    pSymbol = (PIMAGEHLP_SYMBOL)bufferSymbol;
        IMAGEHLP_LINE       Line;

        pSymbol->SizeOfStruct = sizeof( IMAGEHLP_SYMBOL );
        pSymbol->MaxNameLength = sizeof( bufferSymbol ) - sizeof( IMAGEHLP_SYMBOL ) + 1;

        Line.SizeOfStruct = sizeof( IMAGEHLP_LINE );

        for ( int nAddrIdx = 0; nAddrIdx < nAddrSize; nAddrIdx ++ )
        {
            dwSearchAddr = uAddr[ nAddrIdx ] + g_nOffset;
            if ( ! ::SymGetSymFromAddr( g_hSymProcessHandler, dwSearchAddr, & dwDisplacement, pSymbol ) )
            {
                strncpy( pSymbolInfo[ nAddrIdx ], "\?\?", sizeof( pSymbolInfo[ 0 ] ) );
            }
            else
            {
                strncpy( pSymbolInfo[ nAddrIdx ], pSymbol->Name, 512 );
            }

            if ( !::SymGetLineFromAddr( g_hSymProcessHandler, dwSearchAddr, &dwDisplacement, & Line ) )
            {
                strncpy( pLineInfo[ nAddrIdx ], "\?\?(0)", 512 );
            }
            else
            {
                sprintf( pLineInfo[ nAddrIdx ], "%s(%u)", Line.FileName, Line.LineNumber );
            }
        }

        bRet = true;
    }
    else if ( IsElfFile( g_szExeFileName ) )
    {
        char szRxBuffer[ 4096 ] = { 0 };

        char cmdstring[ 2048 ] = { 0 };
        int childhnd = 0;

        char szAddr[ 16 ] = { 0 };
        char szAddrString[ 1024 ] = { 0 };

        for ( int i = 0; i < nAddrSize; i ++ )
        {
            sprintf( szAddr, "0x%08x", uAddr[ i ] );
            strcat( szAddrString, szAddr );
            if ( i < ( nAddrSize - 1 ) )
            {
                strcat( szAddrString, " " );
            }
        }

        for ( int nAddrIdx = 0; nAddrIdx < nAddrSize; nAddrIdx ++ )
        {
            strcpy( pSymbolInfo[ nAddrIdx ], "\?\?" );
            strcpy( pLineInfo[ nAddrIdx ], "\?\?(0)" );
        }

        char * cmdexe = getenv( "COMSPEC" );

        if ( cmdexe == NULL )
        {
            cmdexe = ( _osver & 0x8000 ) ? "command.com" : "cmd.exe";
        }

        sprintf( cmdstring, "%s /c \"\"%s%s\" -s -f -e \"%s\" --demangle --functions %s > \"%sadd2linetemp.txt\"\"",
                 cmdexe, g_DllPath, EXTERNAL_ELF_READER, g_szExeFileName, szAddrString, g_DllPath );

        STARTUPINFO StartupInfo;
        PROCESS_INFORMATION ProcessInformation;

        memset(&StartupInfo,0,sizeof(StartupInfo));
        StartupInfo.cb = sizeof(StartupInfo);
        StartupInfo.dwFlags = STARTF_USESHOWWINDOW;
        StartupInfo.wShowWindow = SW_HIDE | SW_SHOWMINIMIZED;


        if ( ! CreateProcess( cmdexe, cmdstring, NULL, NULL, TRUE, CREATE_NO_WINDOW, NULL, NULL, &StartupInfo, &ProcessInformation ) )
        {
            ULONG dosretval = GetLastError();

            if ( ( dosretval == ENOENT ) || ( dosretval == EACCES) )
            {
                // security access error
                bRet = false;
            }
        }
        else
        {
            WaitForSingleObject( ProcessInformation.hProcess, (DWORD)(-1L) );
            CloseHandle( ProcessInformation.hProcess);
            CloseHandle( ProcessInformation.hThread);
        }

        char szFilename[ 256 ] = { 0 };
        sprintf( szFilename, "%sadd2linetemp.txt", g_DllPath );

        OFSTRUCT ofs;
        HANDLE hFile = (HANDLE)OpenFile( szFilename, & ofs, OF_READ );
        if ( hFile != (HANDLE)HFILE_ERROR )
        {
            DWORD dwBytesRead;
            ReadFile( hFile, szRxBuffer, sizeof( szRxBuffer ), &dwBytesRead, NULL );
            CloseHandle( hFile );
            hFile = NULL;
            DeleteFile( szFilename );

            ParseBuffer( szRxBuffer, pSymbolInfo, pLineInfo, nAddrSize );
            bRet = true;
        }
        else
        {
            bRet = false;
        }
    }
    else
    {
        bRet = false;
    }

    ::LeaveCriticalSection( & g_ExclusionObject );
    return bRet;
}

void ClearData( )
{
    ::EnterCriticalSection( & g_ExclusionObject );

    //
    // clean data
    //
    ::FillMemory( g_szExeFileName, sizeof( g_szExeFileName ), 0 );
    g_hSymProcessHandler = NULL;
    g_eLastError = PEAddr2Line_NoError;
    g_nOffset = 0;

    ::LeaveCriticalSection( & g_ExclusionObject );
}

bool radPEAddr2LineIsExeLoaded( )
{
    ::EnterCriticalSection( & g_ExclusionObject );
    int nStrLength = strlen( g_szExeFileName );
    ::LeaveCriticalSection( & g_ExclusionObject );

    if ( nStrLength > 0 )
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool radPEAddr2LineLoadExe( const char * szExeFileName )
{
    bool bRet = true;

    ::EnterCriticalSection( & g_ExclusionObject );

    if ( IsElfFile( szExeFileName ) )
    {
        //
        // if it is a elf file, we call external command line program
        //
        strcpy( g_szExeFileName, szExeFileName );
    }
    else if ( IsPeFile( szExeFileName ) )
    {
        if ( g_hSymProcessHandler != NULL )
        {
            g_eLastError = PEAddr2Line_ExeAlreadyLoaded;
            ::LeaveCriticalSection( & g_ExclusionObject );
            return false;
        }

        ClearData( );

        srand ( ( unsigned )time( NULL ) );
        g_hSymProcessHandler = ( HANDLE )( rand( ) + 1 );
        if ( ! ::SymInitialize( g_hSymProcessHandler, NULL, FALSE ) )
        {
            g_eLastError = PEAddr2Line_InitalizeFailed;
        }
        else
        {
            // Set the symbol engine to load line information.  This must be
            // because the symbol engine does not load source-lines by default.
            // I also turn on the OMAP lookups so that the super-special OMAP
            // moved blocks will get looked at as well.  Trust me, don't ask.
            DWORD opts = ::SymGetOptions( );
            ::SymSetOptions( opts | SYMOPT_DEFERRED_LOADS | SYMOPT_LOAD_LINES | SYMOPT_OMAP_FIND_NEAREST | SYMOPT_UNDNAME );

            // load the executable
            if ( ! ::SymLoadModule( g_hSymProcessHandler, NULL, const_cast< char * >( szExeFileName ), NULL, 0x0, 0x0 ) )
            {
                g_eLastError = PEAddr2Line_UnableToLoadExe;
            }
        }
        strcpy( g_szExeFileName, szExeFileName );

        CalculateXBoxOffset( );
    }
    else
    {
        bRet = false;
    }

    ::LeaveCriticalSection( & g_ExclusionObject );
    return bRet;
}

bool radPEAddr2LineUnLoadExe( void )
{

    bool bRet = true;
    ::EnterCriticalSection( & g_ExclusionObject );

    if ( g_hSymProcessHandler == NULL )
    {
        g_eLastError = PEAddr2Line_ExeNotLoaded;
        bRet = false;
    }
    else
    {
        if ( ::SymCleanup( g_hSymProcessHandler ) )
        {
            g_eLastError = PEAddr2Line_CleanUpFailed;
            bRet = false;
        }
        g_hSymProcessHandler = NULL;
    }

    ::FillMemory( g_szExeFileName, sizeof( g_szExeFileName ), 0 );

    //
    // reset address for main( )!!!
    //
    g_uXBoxMainAddr = 0;

    ::LeaveCriticalSection( & g_ExclusionObject );
    return bRet;
}


bool IsElfFile( const char * szFileName )
{
    //
    // for now, we don't understand the elf file format,
    // just check if file extension is .elf
    //
    
    int nCharLast = strlen( szFileName ) - 1;

    if ( ( szFileName[ nCharLast - 0 ] == 'f' || szFileName[ nCharLast - 0 ] == 'F' ) &&
         ( szFileName[ nCharLast - 1 ] == 'l' || szFileName[ nCharLast - 1 ] == 'L' ) &&
         ( szFileName[ nCharLast - 2 ] == 'e' || szFileName[ nCharLast - 2 ] == 'E' ) &&
         ( szFileName[ nCharLast - 3 ] == '.' ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool IsPeFile( const char * szFileName )
{
    //
    // for now, we don't understand the exe file format,
    // just check if file extension is .exe
    //
    
    int nCharLast = strlen( szFileName ) - 1;

    if ( ( szFileName[ nCharLast - 0 ] == 'e' || szFileName[ nCharLast - 0 ] == 'E' ) &&
         ( szFileName[ nCharLast - 1 ] == 'x' || szFileName[ nCharLast - 1 ] == 'X' ) &&
         ( szFileName[ nCharLast - 2 ] == 'e' || szFileName[ nCharLast - 2 ] == 'E' ) &&
         ( szFileName[ nCharLast - 3 ] == '.' ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}

char * GetNextString( char * pSearchStartPos, char * pSearchEndPos )
{
    if ( pSearchStartPos == NULL || pSearchEndPos == NULL )
    {
        return NULL;
    }

    int nCurrIdx = 0;

    //
    // find the first '\0'
    //
    while ( pSearchStartPos[ nCurrIdx ] != '\0' && ( & pSearchStartPos[ nCurrIdx ] < pSearchEndPos ) )
    {
        nCurrIdx ++;
    }

    //
    // find the first none '\0'
    //
    while ( pSearchStartPos[ nCurrIdx ] == '\0' && ( & pSearchStartPos[ nCurrIdx ] < pSearchEndPos ) )
    {
        nCurrIdx ++;
    }

    if ( & pSearchStartPos[ nCurrIdx ] == pSearchEndPos )
    {
        return NULL;
    }

    return & pSearchStartPos[ nCurrIdx ];
}

void ParseBuffer( const char * szInBuffer, char * szSymbol[ 512 ], char * szLine[ 512 ], const int nEntryExpected )
{
    char szBuffer[ 4096 ] = { 0 };
    strcpy( szBuffer, szInBuffer );

    int nItemCount = nEntryExpected;
    nItemCount = min( nItemCount, 32 ); // clip to 32 max

    char * pLineToken = szBuffer;
    char * pSubItem1Token = NULL;
    char * pSubItem2Token = NULL;
    int nItemIdx = 0;

    for ( int i = 0; i < sizeof( szBuffer ); i ++ )
    {
        if ( szBuffer[ i ] == '\r' ||
             szBuffer[ i ] == '\n' )
        {
            szBuffer[ i ] = '\0';
        }
        /*
        else if ( szBuffer[ i ] == ':' && szBuffer[ i + 1 ] == ' ' )
        {
            szBuffer[ i ] = '\0';
            szBuffer[ i + 1 ] = '\0';
            i ++;
        }
        */
    }
    char * pItemStart = szBuffer;

    while( pItemStart != NULL && nItemIdx < nItemCount )
    {
        if ( pItemStart != NULL )
        {
            strcpy( szSymbol[ nItemIdx ], pItemStart );
        }
        else
        {
            strcpy( szSymbol[ nItemIdx ], "" );
        }

        pItemStart = GetNextString( pItemStart, & szBuffer[ sizeof( szBuffer ) - 1 ] );

        if ( pItemStart != NULL )
        {
            strcpy( szLine[ nItemIdx ], pItemStart );
        }
        else
        {
            strcpy( szLine[ nItemIdx ], "" );
        }
        pItemStart = GetNextString( pItemStart, & szBuffer[ sizeof( szBuffer ) - 1 ] );
        nItemIdx ++;
    }
}

void radPEAddr2LineSetXBoxMainAddress( unsigned int uMainFuncAddr )
{
    ::EnterCriticalSection( & g_ExclusionObject );
    g_uXBoxMainAddr = uMainFuncAddr;
    ::LeaveCriticalSection( & g_ExclusionObject );
}

void CalculateXBoxOffset( )
{
    ::EnterCriticalSection( & g_ExclusionObject );
    g_nOffset = 0;
    if ( IsPeFile( g_szExeFileName ) && g_hSymProcessHandler != NULL && g_uXBoxMainAddr != 0 )
    {
        DWORD               dwSearchAddr = 0;
        DWORD               dwDisplacement = 0;
        BYTE                bufferSymbol[ 512 ] = { 0 };       // just incase the symbol is huge
        PIMAGEHLP_SYMBOL    pSymbol = (PIMAGEHLP_SYMBOL)bufferSymbol;
        IMAGEHLP_LINE       Line;

        pSymbol->SizeOfStruct = sizeof( IMAGEHLP_SYMBOL );
        pSymbol->MaxNameLength = sizeof( bufferSymbol ) - sizeof( IMAGEHLP_SYMBOL ) + 1;

        Line.SizeOfStruct = sizeof( IMAGEHLP_LINE );

        if ( ::SymGetSymFromName( g_hSymProcessHandler, "main", pSymbol ) )
        {
            g_nOffset = pSymbol->Address - g_uXBoxMainAddr;
        }
    }
    ::LeaveCriticalSection( & g_ExclusionObject );
}

const char * radPEAddr2LineGetLastError( )
{
    switch ( g_eLastError )
    {
        case PEAddr2Line_NoError :
        {
            return "No Error.";
        }
        break;

        case PEAddr2Line_ExeAlreadyLoaded :
        {
            return "Executable file already loaded.";
        }
        break;
        case PEAddr2Line_ExeNotLoaded :
        {
            return "Executable file not loaded yet.";
        }
        break;

        case PEAddr2Line_InitalizeFailed :
        {
            return "Initalize Address2Line failed.";
        }
        break;

        case PEAddr2Line_CleanUpFailed :
        {
            return "Cleanup Address2Line failed.";
        }
        break;

        case PEAddr2Line_FailedToTranslate :
        {
            return "failed to translate from address to line information.";
        }
        break;

        case PEAddr2Line_UnableToLoadExe :
        {
            return "Unable to load executable from file specified.";
        }
        break;
    }
    return "Unknown error.";
}
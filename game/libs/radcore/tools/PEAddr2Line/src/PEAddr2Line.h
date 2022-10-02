#ifndef __PEADDR2LINE_H__
#define __PEADDR2LINE_H__

//=============================================================================
// Dll Export specification
//=============================================================================
#ifdef PEADDR2LINE_EXPORTS
    #define PEADDR2LINE_API __declspec(dllexport)
#else
    #define PEADDR2LINE_API __declspec(dllimport)
#endif

//
// Use following functions as suggested order
//
// XBox : 
//      radPEAddr2LineSetXBoxMainAddress( );
//      radPEAddr2LineLoadExe( )
//
//      radPEAddr2LineV( ) or radPEAddr2Line( )
//
//      radPEAddr2LineUnLoadExe( )
//
// WIN32/GCN/PS2 : 
//      radPEAddr2LineLoadExe( )
//
//      radPEAddr2LineV( ) or radPEAddr2Line( )
//
//      radPEAddr2LineUnLoadExe( )
//
// Note :
//      For PS2 and GCN, it is very important you have addr2line.exe and
//      cygwin1.dll under the same directory as the PEAddr2Line.dll
//

//=============================================================================
// Function Declarations
//=============================================================================

//
// This function must be called first if used to read xbox .exe files.
// address of the main( ) must be passed in here for calculate function address offset.
//
PEADDR2LINE_API void radPEAddr2LineSetXBoxMainAddress( unsigned int uMainFuncAddr );

//
// load/unload executables. Win32 and XBox uses .exe file (not xbe for xbox)
// PS2 and GCN uses .elf file.
//
PEADDR2LINE_API bool radPEAddr2LineIsExeLoaded( );
PEADDR2LINE_API bool radPEAddr2LineLoadExe( const char * szExeFileName );
PEADDR2LINE_API bool radPEAddr2LineUnLoadExe( void );

//
// convert address to function and line informations, single address at a time
//
PEADDR2LINE_API bool radPEAddr2Line( const unsigned int uAddr, char pSymbolInfo[ 512 ], char pLineInfo[ 512 ] );

//
// convert address to function and line informations, multiple address at a time.
// It's much prefeable call for PS2 and GCN since we invoke external executable
//
PEADDR2LINE_API bool radPEAddr2LineV( const unsigned int * uAddr, const int nAddrSize, char * pSymbolInfo[ 512 ], char * pLineInfo[ 512 ] );

//
// get last error
//
PEADDR2LINE_API const char * radPEAddr2LineGetLastError( );

//
// enumeration for errors
//
enum PEAddr2LineError
{
    PEAddr2Line_NoError,
    PEAddr2Line_ExeAlreadyLoaded,
    PEAddr2Line_ExeNotLoaded,

    PEAddr2Line_InitalizeFailed,
    PEAddr2Line_CleanUpFailed,
    PEAddr2Line_FailedToTranslate,
    PEAddr2Line_UnableToLoadExe,
};

#endif  // __PEADDR2LINE_H__

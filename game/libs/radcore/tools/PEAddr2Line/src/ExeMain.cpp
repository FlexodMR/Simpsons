//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <stdio.h>
#include "PEAddr2Line.h"

int main( int argc, char *argv[ ], char *envp[ ] )
{
    char szSymbol[ 512 ] = { 0 };
    char szLine[ 512 ] = { 0 };

    ::radPEAddr2LineLoadExe( argv[ 1 ] );

    char * pStopString = argv[ 2 ] + 10;

    unsigned int uAddr = strtoul( argv[ 2 ], & pStopString, 16 );

    ::radPEAddr2Line( uAddr, szSymbol, szLine );

    ::radPEAddr2LineUnLoadExe( );

    printf( "%s\n%s\n", szSymbol, szLine );
    
    return 0;
}

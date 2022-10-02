//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radsoundtools.hpp>
#include <stdio.h>

int main( int argc, char * argv[] )
{
	if ( argc != 4 )
	{
        printf( "This program renames .wav file regions based on a text file as input.\n" );
        printf( "      Usage: input.wav output.wav script.txt\n" );

        return -1;
	}

    const char * pInFileName = argv[ 1 ];
    const char * pOutFileName = argv[ 2 ];
    const char * pTextFileName = argv[ 3 ];

    printf( "Renaming: [%s]-->[%s] Using: [%s]\n", pInFileName, pOutFileName, pTextFileName );

    if ( ! ::rstRenameWavMarkers( pTextFileName, pInFileName, pOutFileName ) )
    {
        printf ( "Error: [%s]\n", ::rstGetLastError( ) );
        return -1;
    }

    return 0;	
}
//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/* main.cpp */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "recurse.hpp"

void PrintHelp( void )
{
	printf( "8.3 finder\n" );
	printf( "----------\n" );
	printf( "Usage:\n" );
	printf( "     -w        don't return error code (default) \n" );
	printf( "     -e        return error code\n" );
	printf( "     -t        target directory to recurse" );
	printf( "\n Example find8dot3.exe -e -t \"C:\\My Documents\\\"\n" );
}

int main( int argc, const char * argv[] )
{
	bool warn = true;
	const char * pDirectory = NULL;

	for( int arg = 1; arg < argc; arg ++ )
	{
		if
		(
			( strcmp( argv[ arg ], "-help" )  == 0 ) ||
			( strcmp( argv[ arg ], "/?" ) == 0 ) ||
			( strcmp( argv[ arg ], "\\?" ) == 0 )
		)
		{
			PrintHelp( );

			return 0;
		}
		else if ( strcmp( argv[ arg ], "-w" ) == 0 )
		{
			warn = true;
		}
		else if ( strcmp( argv[ arg ], "-e" ) == 0 )
		{
			warn = false;
		}
		else if ( strcmp( argv[ arg ], "-t" ) == 0 )
		{
			arg ++;

			pDirectory = argv[ arg ];
		}
		else
		{
			PrintHelp( );

			return -1;
		}
	}

	if ( pDirectory == NULL )
	{
		PrintHelp( );

		return -1;
	}

	if ( ! FindFiles( pDirectory ) )
	{
		printf( "::FindFiles() failed\n" );
		return -1;
	}

	char drive[_MAX_DRIVE];
	char dir[_MAX_DIR];
	char fname[_MAX_FNAME];
	char ext[_MAX_EXT];

	bool problem = false;

	const char * pFileName = NULL;

	Reset( );

	while ( GetNext( & pFileName ) )
	{
		_splitpath( pFileName, drive, dir, fname, ext );

		if
		(
			( strlen( fname ) > 8 ) ||
			( strlen( ext ) > 4 )
		)
		{
			problem = true;

			printf( "Error: [%s] is not 8.3\n", pFileName );
		}
	}
	
	if ( warn == true )
	{
		return 0;
	}
	
	if ( problem )
	{
		return -1;
	}
	
	return 0;	
}

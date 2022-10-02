//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        RemoteCommandConsole.cpp
//
// Subsystem:   Radical Foundation Technologies Remote Command Console
//
// Description:	This file contains the implementation of the remote command 
//              console.  The tool allows users to remotely call functions
//              in the game.  The game must register these functions with the
//              Remote Command Server.  See the bRemoteCommand Sample program
//              for more details.
//
// Revisions:	09-Feb-2001		Creation	Rob Sparks
//
// Usage:       "RemoteCommandConsole /help" for usage details
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include "RemoteClient.hpp"

static int g_mainResult;

//
// Strings to print out for the user
//
static char g_BannerMessage[ ] = "\nRemoteCommandConsole (c) Radical Entertainment V1.00\n\n";
static char g_InvaldArgMsg[ ] = "ERROR: Invalid command specified (HELP = /h)\n\n";
static char g_UsageString[ ] = "RCC [/t TargetName] [FunctionName] [args]\n\n";
static char g_UsageInstructions[ ] = 
    "To use this tool...\n\n" \
	"LIST FUNCTIONS:  RCC [/t TargetName]\n" \
	"CALL FUNCTION:   RCC [/t TargetName] FunctionName [args]\n" \
	"HELP:            RCC /h\n\n";

bool g_Done = false;

//
// The remote client callback function
//
void remoteClientCallback( HrcsResultCode result )
{
	//
	// Set the return value
	//
	g_mainResult = result;

    g_Done = true;
}

int main( int argc, char* argv[ ] )
{
	//
	// These bools are state variables
	//
	bool CallFunction = false;
	bool CallList = false;

	//
	// If a target gets specified it will be put here
	//
	radDbgComTargetName target;
	target[0] = '\0';

	//
    // This counter will show where the function name is located
	// if a function is specified
	//
	unsigned int funcPos = 1;

	//
	// This counter will provide an argument count
	//
	unsigned int argcRemoteArgs = 0;

	//
	// This string will contain the function's arguments if they eventually exist
	//
	char argList[RCS_MAX_ARG_LENGTH];

	g_mainResult = 0;

	printf( g_BannerMessage );

	//
	// If the user not entered any args (argc == 1) or if the user 
	// has entered a "/t" followed by one other arg (argc == 3), then 
	// we want to LIST the registered functions  
	//
	if( ( argc == 1 )||( ( stricmp( argv[ 1 ], "/t" ) == 0 )&&( argc == 3 ) ) )
	{
	    //
		// Get the target name if it was specified 
		//	
		if( argc == 3 )
		{
			strncpy( target, argv[2], sizeof( target ) );
		}
		
		//
		// Set the state variable
		//
		CallList = true;
	}

	//
	// Otherwise if the first character is not a '/' or if the first arg
	// is a "/t" and there seem to be enough args (argc > 3), the user must
	// be CALLING a FUNCTION
	//
	else if( ( argv[ 1 ][ 0 ] != '/' )||( (stricmp( argv[ 1 ], "/t" ) == 0 )&&( argc > 3 ) ) )
	{
		//
		// We need the function name position and
		// if a target was specified, we need its name
		//
		if( argv[ 1][ 0 ] == '/' )
		{
			strncpy( target, argv[2], sizeof( target ) );
			funcPos = 3;
		}
			
		//
		// Prepare the string of arguments to send to the remote command server
		//
		memset( argList, 0, sizeof( argList ) );
		char* ps_argList;
		
		//
		// Step through the function parameters, which begin one position
		// after the name
		//
		unsigned int argcCheck = 0;
		unsigned int argListSizeCheck = 0;
		for( int i = funcPos + 1; i < argc; ++i )
		{
			argListSizeCheck += strlen( argv[i] ) + 1;
			if( argListSizeCheck > RCS_MAX_ARG_LENGTH )
			{
				break;
			}
			ps_argList = strcat( argList, argv[i] );
			ps_argList = strcat( argList, "/" );
			argcRemoteArgs++;
			int len = strlen(ps_argList);
			int size = sizeof( argList );
		}

		//
		// Call the function if we haven't lost any arguments at the command line
		//	
		if( argcRemoteArgs ==( argc - funcPos - 1 ) )
		{
			CallFunction = true;
		}
		else
		{
			printf( "ERROR: Arguments lost at command line. Expected %d, found %d!\n", argc - funcPos - 1, argcRemoteArgs );
			printf( "       Total argument string length must be under %d characters\n", RCS_MAX_ARG_LENGTH );
		} 
	}

	else if( argc > 1 )
	{
		if( stricmp( argv[1], "/h" ) == 0 )
		{
			//
			// The user is looking for help
			//
			printf( g_UsageString );
			printf( g_UsageInstructions );
		}
		else
		{
			//
			// We've got a bad command here
			//
			printf( g_InvaldArgMsg );
		}
	}

	//
	// Check if a command is to be called
	//
	if( ( CallList == true )||( CallFunction == true ) )
	{
		//
		// Used to determine if we should run the dispatcher
		//
		bool success = false;

		ref< RemoteClient > pRemoteClient = new (NULL) RemoteClient();

		if( CallList == true )
		{
			printf( "Obtaining remote function list...\n" );
			success = pRemoteClient->ListFunctions( &remoteClientCallback, target );			
			if( !success )
			{
				//
				// No reason to go on
				//
				g_mainResult = HrcsFail;
			}
		}
		else
		{
			printf( "Calling remote function...\n" );
			success = pRemoteClient->CallFunction( argv[ funcPos ], argc - funcPos - 1, argList, &remoteClientCallback, target );
			if( !success )
			{
				//
				// No reason to go on
				//
				g_mainResult = HrcsFail;
			}
		}
		//
		// Run things
		//
		while( ! g_Done )
		{
            pRemoteClient->Service( );
		}
		
		//
		// All finished
		//
		pRemoteClient = NULL;
	}

	return g_mainResult;
};

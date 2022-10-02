//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        TargetEditor.cpp
//
// Subsystem:   Radical Foundation Technologies Target Editor
//
// Description:	This file contains the implementation of the debug console 
//              target editor. It is used to simply define and edit target
//              definitions.
//
// Revisions:	Dec 15, 2000
//
// Usage:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <stdio.h>
#include <raddebugcommunication.hpp>
#include "resource.h"
//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Static Data Defintions
//=============================================================================

//
// String to display usage.
//
static char g_BannerMessage[ ] = "\nTargetEditor (c) Radical Entertainment V2.00\n\n";

static char g_UsageString[ ] = "Usage: TargetEditor /Command [optional command arguments] <CR>\n\n" \
                               "/Help                                        - display this message\n" \
                               "/List                                        - display target definitions\n" \
                               "/Remove [TargetName]                         - remove target defintion\n" \
                               "/GetTarget [TargetName]                      - get target definition\n" \
                               "/Add [TargetName] [IPAddress] [Port]         - add target definition\n" \
                               "/AddDefault [TargetName] [IPAddress] [Port]  - add target definition as default\n" \
                               "/Default [TargetName]                        - set target as default\n" \
                               "/Clear                                       - delete all target definitions\n" \
                               "/SetSocketTimeout [TimeoutValue in ms]       - set target connection timeout\n" \
                               "/RemoveSocketTimeout                         - remove target connection timeout\n";
                          
static char g_InvaldArgMsg[ ] = "Error: Invalid command specified\n";
static char g_InvalidAddressMsg[ ] = "Error: Address length exceeds 64 characters\n";

//
// Host interface
//
static IRadDbgComTargetTable* g_pHost;

//
// Message display to update registry.
//
static char InfoString[ ] = "It has been determined that the TcpIp setting, \"KeepAliveTime\" and \"TcpMaxConnectRetransmissions\",\n" \
							"for this machine has not been set up to work optimally with the Foundation Technologies Debug\n" \
							"Communication System. Would you like the setting updated now? You need to reboot after this.";

#define DEBUG_COM_REGISTRY_KEY    "Software\\Radical Entertainment\\rDbgCom"
#define SOCKET_CONNECTION_TIMEOUT_REGISTRY_KEY    "Software\\Radical Entertainment\\rDbgCom\\SocketConnectionTimeout"
#define SOCKET_TIMEOUT_FIELD       "TimeoutValue"

//=============================================================================
// Private Function Prototypes
//=============================================================================

void EnumeratorCallback( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );
void EnumeratorCallbackClear( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );
void CheckTCPIPSetup( void );
void SetSocketTimeout( unsigned int TimeoutValue );
void RemoveSocketTimeout();
void PrintSocketTimeoutIfPresent();

//=============================================================================
// Public Member Functions
//=============================================================================

void TargetEnumCallback( void* context,
                         const radDbgComTargetName pName,
                         const radDbgComIPAddress pIpAddress,
                         unsigned short port,
                         bool InUse )
{
    rAssert( context != NULL );
    const char * pGetTargetName = (const char*)context;
    if ( strcmp( pGetTargetName, pName ) == 0 )
    {
        printf( "%s", pIpAddress );
    }
    
    (void)port;
    (void)InUse;
}

//=============================================================================
// Function:    Main 
//=============================================================================
// Description: Main entry point. Based on command line options, set up
//              target definitions.
// 
// Parameters:  see C
//
// Returns:     0 success, non zero error.
//
// Notes:
//------------------------------------------------------------------------------

int main
(
    int     argc, 
    char*   argv[]
)
{
    int returncode = 0; 

    //
    // Lets get the host system.
    //
    radDbgComHostGetTargetTable( &g_pHost );
    rAssert( g_pHost != NULL );

    //
    // Display banner message.
    //
    printf( g_BannerMessage );

	//
	// Lets check for valid IP setup.
	//
	CheckTCPIPSetup( );

    //
    // Validate command line args count.
    //
    if( (argc < 2) || (argc > 5 ) )
    {
        printf( g_InvaldArgMsg );
        printf( g_UsageString );
        returncode = 1;
        goto terminate;
    }
    
    //
    // Parse and act on the various commands.
    //
    if( stricmp( argv[ 1 ], "/Help") == 0  )
    {
        //
        // Help command, make sure no other args.
        //
        if( argc != 2 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
        }
        printf( g_UsageString );
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/List" ) == 0 )
    {
        //
        // List command, make sure no other args.
        //
        if( argc != 2 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else
        {
            //
            // Emumerate and display each defined target.
            //
            printf( "Target Name       IP Address                                 Port\n" );
            g_pHost->EnumerateTargets( NULL, EnumeratorCallback );

			// Print out the socket timeout value if it is present in the Registry
			PrintSocketTimeoutIfPresent();
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/Remove" ) == 0 )
    {
        //
        // Make sure one more arg
        //
        if( argc != 3 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else
        {
            g_pHost->DeleteTargetDefinition( argv[ 2 ] );

            //
            // Emumerate and display each defined target.
            //
            printf( "Target Name       IP Address                                 Port\n" );
            g_pHost->EnumerateTargets( NULL, EnumeratorCallback );
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/Default" ) == 0 )
    {
        //
        // Make sure one more arg
        //
        if( argc != 3 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else
        {
            g_pHost->SetDefaultTarget( argv[ 2 ] );

            //
            // Emumerate and display each defined target.
            //
            printf( "Target Name       IP Address                                 Port\n" );
            g_pHost->EnumerateTargets( NULL, EnumeratorCallback );
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/Clear" ) == 0 )
    {
        //
        // List command, make sure no other args.
        //
        if( argc != 2 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else
        {
            //
            // Emumerate and display each defined target.
            //
            g_pHost->EnumerateTargets( NULL, EnumeratorCallbackClear );
			
			// Remove the socket timeout value from the Registry
			RemoveSocketTimeout();			
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/Add" ) == 0 )
    {
        //
        // List command, make sure no other args.
        //
        if( argc == 3 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else if ( argc == 4 )
        {
            if( strlen( argv[ 3 ] ) >= sizeof( radDbgComIPAddress ) ) 
            {
                returncode = 1;
                printf( g_InvalidAddressMsg );
                printf( g_UsageString );
            }
            else
            {       
                g_pHost->AddTargetDefinition( argv[ 2 ], argv[ 3 ] );
                printf( "Target Name       IP Address                                 Port\n" );
                g_pHost->EnumerateTargets( NULL, EnumeratorCallback );  
            }
        }
        else
        {
            if( strlen( argv[ 3 ] ) >= sizeof( radDbgComIPAddress ) ) 
            {
                returncode = 1;
                printf( g_InvalidAddressMsg );
                printf( g_UsageString );
            }
            else
            {
                g_pHost->AddTargetDefinition( argv[ 2 ], argv[ 3 ], atoi( argv[ 4 ] ) );
                printf( "Target Name       IP Address                                 Port\n" );
                g_pHost->EnumerateTargets( NULL, EnumeratorCallback );
            }         
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/GetTarget" ) == 0 )
    {
        //
        // List command, make sure no other args.
        //
        if( argc > 3 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else
        {
            radDbgComTargetName pGetTargetName;
            if ( argc == 2 )
            {
                g_pHost->GetDefaultTarget( pGetTargetName );
            }
            else if ( argc == 3 )
            {
                if( strlen( argv[ 2 ] ) >= sizeof( radDbgComTargetName ) ) 
                {
                    returncode = 1;
                    printf( g_InvalidAddressMsg );
                    printf( g_UsageString );
                    strcpy( pGetTargetName, "" );
                }
                else
                {
                    strcpy( pGetTargetName, argv[ 2 ] );
                }
            }

            g_pHost->EnumerateTargets( pGetTargetName, TargetEnumCallback );
        }
        goto terminate;
    }

    if( stricmp( argv[ 1 ], "/AddDefault" ) == 0 )
    {
        //
        // List command, make sure no other args.
        //
        if( argc == 3 )
        {
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
        }
        else if ( argc == 4 )
        {
            g_pHost->AddTargetDefinition( argv[ 2 ], argv[ 3 ] );
            g_pHost->SetDefaultTarget( argv[ 2 ] );
            printf( "Target Name       IP Address                                 Port\n" );
            g_pHost->EnumerateTargets( NULL, EnumeratorCallback );
        }
        else
        {
            g_pHost->AddTargetDefinition( argv[ 2 ], argv[ 3 ], atoi( argv[ 4 ] ) );
            g_pHost->SetDefaultTarget( argv[ 2 ] );
            printf( "Target Name       IP Address                                 Port\n" );
            g_pHost->EnumerateTargets( NULL, EnumeratorCallback );
        }
        goto terminate;
    }
    if( stricmp( argv[ 1 ], "/SetSocketTimeout" ) == 0 )
    {
		if( argc == 3)
		{		
		    SetSocketTimeout( atol(argv[2]) );
		}
		else
		{
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
		}
		goto terminate;
    }

    if( stricmp( argv[ 1 ], "/RemoveSocketTimeout" ) == 0 )
    {
		if( argc == 2)
		{		
		    RemoveSocketTimeout();
		}
		else
		{
            returncode = 1;
            printf( g_InvaldArgMsg );
            printf( g_UsageString );
		}
		goto terminate;
    }

    returncode = 1;
    printf( g_InvaldArgMsg );
    printf( g_UsageString );

terminate:
    //
    // Get rid of the host interface.
    //
    g_pHost->Release( );

	return( returncode );
}


//=============================================================================
// Function:    CheckTCPIPSetup
//=============================================================================
// Description: This member makes sure that the registry is conrrectly set up
//				for optimal communincaiton using the RFC Debug Communication System
// 
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void CheckTCPIPSetup( void )
{
	//
	// First determine the platform.
	//
	OSVERSIONINFO	Version;

	Version.dwOSVersionInfoSize = sizeof( OSVERSIONINFO );

	GetVersionEx( &Version );

	//
	// Check if if NT. If not assume win95 or win 98.
	//
	char RegistryString[ 512 ];
	
	if( Version.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS )
	{
		strcpy( RegistryString, "SYSTEM\\CurrentControlSet\\Services\\Vxd\\MSTCP" );
	}
	else
	{
		strcpy( RegistryString, "SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters" );
	}

	//
	// Lets see if the value has been already added.
	//
	HKEY RegKey;
    DWORD Disposition;

    LONG result = RegCreateKeyEx( HKEY_LOCAL_MACHINE,
                                  RegistryString,
                                  0,
                                  NULL,
                                  REG_OPTION_NON_VOLATILE,
                                  KEY_ALL_ACCESS,
                                  NULL,  
                                  &RegKey,
                                  &Disposition );

    rAssert( result == ERROR_SUCCESS );

    //
    // checking KeepAliveTime
    //
    DWORD KeepAliveTime_KeyType = REG_DWORD;
    DWORD KeepAliveTime_KeyData = 0;
    DWORD KeepAliveTime_KeyLength = sizeof( KeepAliveTime_KeyData );
    bool KeepAliveTime_Correct = false;

	if( ERROR_SUCCESS == RegQueryValueEx( RegKey, "KeepAliveTime", NULL, & KeepAliveTime_KeyType, (LPBYTE)(& KeepAliveTime_KeyData), & KeepAliveTime_KeyLength ) )
	{
        if ( KeepAliveTime_KeyData == 5000 )
        {
            KeepAliveTime_Correct = true;
        }
	}

    //
    // checking TcpMaxConnectRetransmissions
    //
    DWORD RetryCount_KeyType = REG_DWORD;
    DWORD RetryCount_KeyData = 0;
    DWORD RetryCount_KeyLength = sizeof( RetryCount_KeyData );
    bool RetryCount_Correct = false;

    if( ERROR_SUCCESS == RegQueryValueEx( RegKey, "TcpMaxConnectRetransmissions", NULL, & RetryCount_KeyType, (LPBYTE)(& RetryCount_KeyData), & RetryCount_KeyLength ) )
	{
        if ( RetryCount_KeyData == 1 )
        {
            RetryCount_Correct = true;
        }
	}

    //
    // Key is defined and correct value is set. Simply return.
    //
    if ( RetryCount_Correct && KeepAliveTime_Correct )
    {
        RegCloseKey( RegKey );
        return;
    }

	//
	// Here the key is not defined. Prompt the user asking if he wants us to updated registry.
	//
	if( IDOK == MessageBox( NULL, InfoString, "TargetEditor" , MB_ICONWARNING | MB_OKCANCEL ) )
	{
        if ( ! KeepAliveTime_Correct )
        {
    		DWORD	Value = 5000;
            //
		    // Lets update the KeepAliveTime value to 5000 milliseconds
		    //
		    if( Version.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS )
		    {
			    RegSetValueEx( RegKey, "KeepAliveTime", 0, REG_SZ, (const unsigned char*) "5000", strlen( "5000" ) + 1 );
		    }
		    else
		    {
			    RegSetValueEx( RegKey, "KeepAliveTime", 0, REG_DWORD, (const unsigned char*) &Value, sizeof( Value ) );
		    }
        }

        if ( ! RetryCount_Correct )
        {
    		DWORD	Value = 1;
            //
            // Set TcpMaxConnectRetransmissions to 1
            //
		    RegSetValueEx( RegKey, "TcpMaxConnectRetransmissions", 0, REG_DWORD, (const unsigned char*) &Value, sizeof( Value ) );
        }
	}

    RegCloseKey( RegKey );
}

//=============================================================================
// Function:    Enumerator Callback
//=============================================================================
// Description: Invoked for each target defined.
// 
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void EnumeratorCallback
(
    void*   context,
    const radDbgComTargetName   pName,
    const radDbgComIPAddress    pIpAddress, 
    unsigned short port, 
    bool InUse
)
{
    (void) InUse;

    //
    // Check if the target is the default. If display special string.
    //
    radDbgComTargetName defaultTarget;
  
    
    if( g_pHost->GetDefaultTarget( defaultTarget ) )
    {
        if( stricmp( pName, defaultTarget ) == 0 )
        {
            printf( "%-16.16s  %-40.40s  % 5d    <= Default\n", pName, pIpAddress, port );
            return;
        }
    }

    printf( "%-16.16s  %-40.40s  % 5d   \n", pName, pIpAddress, port );
}


void EnumeratorCallbackClear
(
    void*   context,
    const radDbgComTargetName   pName,
    const radDbgComIPAddress    pIpAddress, 
    unsigned short port, 
    bool InUse
)
{
    g_pHost->DeleteTargetDefinition( pName );
}


//=============================================================================
// Function:    SetSocketTimeout
//=============================================================================
// Description: Set the Host socket communication timeout value in Windows Registry
// 
// Parameters:  TimeoutValue - value of the timeout
//
// Returns:     None.
//
// Notes:       If the Registry Key is not there, create it and set the value.
//------------------------------------------------------------------------------

void SetSocketTimeout(unsigned int TimeoutValue)
{
    HKEY RegKey;
    DWORD Disposition;
    LONG result = RegCreateKeyEx( HKEY_CURRENT_USER, 
                                  SOCKET_CONNECTION_TIMEOUT_REGISTRY_KEY,
                                  0,
                                  NULL,
                                  REG_OPTION_NON_VOLATILE,
                                  KEY_ALL_ACCESS,
                                  NULL,  
                                  &RegKey,
                                  &Disposition );

    rAssert( result == ERROR_SUCCESS );   

    RegSetValueEx( RegKey, SOCKET_TIMEOUT_FIELD, 0, REG_DWORD, (const unsigned char*) &TimeoutValue, sizeof( unsigned int) );

    RegCloseKey( RegKey );
	return;
}

//=============================================================================
// Function:    RemoveSocketTimeout
//=============================================================================
// Description: Remove the Host socket communication timeout value in Windows Registry
// 
// Parameters:  None.
//
// Returns:     None.
//
// Notes:       
//------------------------------------------------------------------------------

void RemoveSocketTimeout(void)
{
    HKEY RegKey;
    DWORD Disposition;
    LONG result = RegCreateKeyEx( HKEY_CURRENT_USER, 
                                  DEBUG_COM_REGISTRY_KEY,
                                  0,
                                  NULL,
                                  REG_OPTION_NON_VOLATILE,
                                  KEY_ALL_ACCESS,
                                  NULL,  
                                  &RegKey,
                                  &Disposition );
	rAssert( result == ERROR_SUCCESS );   

    result = RegDeleteKey( RegKey, "SocketConnectionTimeout");
                      
    RegCloseKey( RegKey );
	return;
}

//=============================================================================
// Function:    PrintSocketTimeoutIfPresent
//=============================================================================
// Description: Print the Host socket communication timeout value in Windows Registry
// 
// Parameters:  None.
//
// Returns:     None.
//
// Notes:       
//------------------------------------------------------------------------------

void PrintSocketTimeoutIfPresent()
{
    HKEY RegKey;

	LONG result = RegOpenKeyEx(HKEY_CURRENT_USER,
								SOCKET_CONNECTION_TIMEOUT_REGISTRY_KEY,
								0,
								KEY_ALL_ACCESS,
								&RegKey);

	// check if the key exists
	if( (result == ERROR_SUCCESS) || (result == REG_OPENED_EXISTING_KEY) )
	{
		unsigned int timeOutValue = 0;
	    DWORD tmpLength = sizeof( unsigned int );
        LONG result = RegQueryValueEx( RegKey, SOCKET_TIMEOUT_FIELD, 0, NULL, (unsigned char *)&timeOutValue, &tmpLength);
		if(result == ERROR_SUCCESS)
		{
			// the field exists
			printf("\nSocket Connection Timeout Value = %dms\n", timeOutValue);
		}
	}    
    RegCloseKey( RegKey );

	return;
}





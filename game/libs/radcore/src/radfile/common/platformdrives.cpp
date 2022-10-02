//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include <string.h>
#include <radstring.hpp>
#include "platformdrives.hpp"
#include "remotedrive.hpp"

#ifdef RAD_WIN32
#include "../win32/win32drive.hpp"
#endif

#ifdef RAD_XBOX
#include "../xbox/xboxdrive.hpp"
#include "../xbox/xboxsavedrive.hpp"
#endif

#ifdef RAD_PS2
#include "../ps2/ps2cddrive.hpp"
#include "../ps2/ps2hostdrive.hpp"
#include "../ps2/ps2memcarddrive.hpp"
#endif

#ifdef RAD_GAMECUBE
#include "../gcn/gcndvddrive.hpp"
#include "../gcn/gcnmemcarddrive.hpp"
#endif

//=============================================================================
// Function:    PlatformDrivesGetDefaultDrive
//=============================================================================
// Description: Copy over the name of the default drive.
//
// Parameters:  char* string
//
// Returns:   
//
//------------------------------------------------------------------------------
void PlatformDrivesGetDefaultDrive( char* driveSpec )
{
#ifdef RAD_PS2
#   ifndef RAD_DEBUG
        strcpy( driveSpec, s_PS2CDDriveName );
#   else
        strcpy( driveSpec, s_PS2HostDriveName );
#   endif
#endif // RAD_PS2

#ifdef RAD_GAMECUBE
    strcpy( driveSpec, s_GCNDVDDriveName );
#endif // RAD_GAMECUBE

#ifdef RAD_XBOX
    strcpy( driveSpec, "D:");
#endif // RAD_XBOX

//
// Get the current drive
//
#ifdef RAD_WIN32
    char bigDir[ radFileFilenameMax + 1 ];
    ::GetCurrentDirectory( radFileFilenameMax, bigDir );
    strncpy( driveSpec, bigDir, 2 );
    driveSpec[ 2 ] = '\0';
    strupr( driveSpec );
#endif // RAD_WIN32
}

//=============================================================================
// Function:    PlatformDrivesValidateDriveName
//=============================================================================

bool PlatformDrivesValidateDriveName( const char* driveSpec )
{
    if ( strcmp( driveSpec, s_RemoteDriveName ) == 0 )
    {
        return true;
    }

#ifdef RAD_WIN32
    if( (strlen( driveSpec ) == 2) && (*driveSpec >= 'A') && (*driveSpec <= 'Z') )
    {
        unsigned int index = *driveSpec - 'A';
        DWORD drives = GetLogicalDrives( );
        drives >>= index;
        return ( drives & 1 );
    }
    else
    {
        return false;
    }

#endif // RAD_WIN32

#ifdef RAD_XBOX
    if ( strcmp( driveSpec, "D:" ) == 0 || strcmp( driveSpec, "T:" ) == 0 ||
         strcmp( driveSpec, "Z:" ) == 0 || strcmp( driveSpec, "W:" ) == 0 )
    {
        return true;
    }
    else if( strcmp( driveSpec, "U:" ) == 0 )
    {
        return true;
    }
    else if ( radStringMatchesWildCardPattern( driveSpec, s_XBOXMemcardDrive ) )
    {
        int port = ( int )( driveSpec[ XBOXMEMCARDDRIVE_PORT_LOC ] - '1' ); 
        int slot = ( int )( driveSpec[ XBOXMEMCARDDRIVE_SLOT_LOC ] - 'A' );
        if ( port < 0 || port > 3 || slot < 0 || slot > 1 )
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
#endif // RAD_XBOX

#ifdef RAD_PS2
    
    if ( strcmp( driveSpec, s_PS2CDDriveName ) == 0 )
    {
        return true;
    }
    else if ( strcmp( driveSpec, s_PS2HostDriveName ) == 0 )
    {
        return true;
    }
    else if ( radStringMatchesWildCardPattern( driveSpec, s_PS2MemcardDrive ) )
    {
        int port = ( int )( driveSpec[ PS2MEMCARDDRIVE_PORT_LOC ] - '1' ); 
        int slot = ( int )( driveSpec[ PS2MEMCARDDRIVE_SLOT_LOC ] - 'A' );
        if ( port < 0 || port > 1 || slot < 0 || slot > 3 )
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }

#endif // RAD_PS2

#ifdef RAD_GAMECUBE
    if ( strcmp( driveSpec, s_GCNDVDDriveName ) == 0 )
    {
        return true;
    }
    else if ( radStringMatchesWildCardPattern( driveSpec, s_GCNMemcardDrive ) )
    {
        int chan = ( int )( driveSpec[ GCNMEMCARDDRIVE_PORT_LOC ] - 'A' );
        if ( chan < 0 || chan > 1 )
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
#endif // RAD_GAMECUBE
}

//=============================================================================
// Function:    PlatformDrivesFactory
//=============================================================================

void PlatformDrivesFactory( radDrive** ppDrive, const char* driveSpec, radMemoryAllocator alloc )
{
    rAssert( ppDrive != NULL );
    rAssert( driveSpec != NULL );

    if ( strcmp( driveSpec, s_RemoteDriveName ) == 0 )
    {
        radRemoteDriveFactory( ppDrive, driveSpec, alloc );
        return;
    }

#ifdef RAD_WIN32 
    radWin32DriveFactory( ppDrive, driveSpec, alloc );
#endif

#ifdef RAD_XBOX 
    if ( strcmp( driveSpec, "D:" ) == 0 || strcmp( driveSpec, "T:" ) == 0 ||
         strcmp( driveSpec, "Z:" ) == 0  || strcmp( driveSpec, "W:" ) == 0 )
    {
        radXboxDriveFactory( ppDrive, driveSpec, alloc );
    }
    else
    {
        radXboxSaveDriveFactory( ppDrive, driveSpec, alloc );
    }
#endif

#ifdef RAD_PS2
    if ( strcmp( driveSpec, s_PS2CDDriveName ) == 0 )
    {
        radPs2CdDriveFactory( ppDrive, driveSpec, alloc );
    }
    else if ( strcmp( driveSpec, s_PS2HostDriveName ) == 0 )
    {
        radPs2HostDriveFactory( ppDrive, driveSpec, alloc );
    }
    else
    {
        radPs2MemcardDriveFactory( ppDrive, driveSpec, alloc );
    }
#endif // RAD_PS2

#ifdef RAD_GAMECUBE
    if ( strcmp( driveSpec, s_GCNDVDDriveName ) == 0 )
    {
        radGcnDVDDriveFactory( ppDrive, driveSpec, alloc );
    }
    else
    {
        radGcnMemcardDriveFactory( ppDrive, driveSpec, alloc );
    }
#endif // RAD_GAMECUBE

}

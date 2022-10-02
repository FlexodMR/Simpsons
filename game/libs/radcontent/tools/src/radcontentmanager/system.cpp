//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        system.cpp
//
// Subsystem:	Radical Content Manager - System
//
// Description:	This file contains the implementation the system objects which
//              are the top most objects of the Radical project. These
//              objects are responsible for managing the project as a whole.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	October 8, 2002
//
// Notes:       This subsystem is only available under Win32.
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>
#include "system.hpp"
#include "perforce.hpp"
#include "project.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//
// This constant is the extension radical projects must contain.
//
#define PROJECT_FILE_EXTENSION  ".rpj"

//=============================================================================
// Statics
//=============================================================================

//
// We have a static singleton object representing the content manager system.
//
static radCMSystem* g_pTheSystem = NULL;

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    DllMain
//=============================================================================
// Description: This routine is by the Windows OS whenever a process/thread
//              attachs or detaches from this DLL.
//
// Parameters:  hModule, module handle
//              reason
//              reserved.
//              
// Returns:     bool - true successful.
//
// Notes:       
//------------------------------------------------------------------------------

BOOL APIENTRY DllMain
( 
    HANDLE hModule,
    DWORD  reason,
    LPVOID pReserved
)
{
    (void) hModule; (void) pReserved;

    //
    // Based on reason, for invocation, perform action.
    //
    switch( reason)
	{
		case DLL_PROCESS_ATTACH:
        {
            //
            // Process attaching. Construct the system object and indicate thread attaching
            //
            g_pTheSystem = new radCMSystem( );
            g_pTheSystem->ThreadAttach( );
            break;
        }

		case DLL_PROCESS_DETACH:
        {
            //
            // Process detaching. Destruct the system object.
            //
            g_pTheSystem->ThreadDetach( );
            delete g_pTheSystem;
            break;
        }

    	case DLL_THREAD_ATTACH:
        {
            //
            // System object needs to know about this to allocate thread local 
            // storage.
            //
            g_pTheSystem->ThreadAttach( );

            break;
        }
		case DLL_THREAD_DETACH:
        {
            g_pTheSystem->ThreadDetach( );

            break;
        }
    }
    return( TRUE );
}

//=============================================================================
// Function:    radContentManagerCreateProject
//=============================================================================
// Description: This routine is invoked to create a new project.
//
// Parameters:  pProjectName - path and filename of the project to create.
//              pPerforceInfo - use source control
//              
// Returns:     true - success
//
// Notes:       This routine will create directory if it does not already exist.
//------------------------------------------------------------------------------

bool radContentManagerCreateProject
( 
    const char*         pProjectName, 
    radCMPerforceInfo*  pPerforceInfo
)
{
   return( g_pTheSystem->CreateProject( pProjectName, pPerforceInfo ) );
}

//=============================================================================
// Function:    radContentManagerDestroyProject
//=============================================================================
// Description: This routine is invoked to destroy a project
//
// Parameters:  pProjectName - path and filename of the project to destroy.
//              pPerforceInfo - use source control
//              
// Returns:     bool - true success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radContentManagerDestroyProject
( 
    const char*         pProjectName, 
    radCMPerforceInfo*  pPerforceInfo
)
{
    //
    // Just pass this onto the system object to deal with.
    //
    return( g_pTheSystem->DestroyProject( pProjectName, pPerforceInfo ) );
}

//=============================================================================
// Function:    radContentManagerOpenProject
//=============================================================================
// Description: This routine is invoked to open a project
//
// Parameters:  pProjectName - path and filename of the project to open
//              ppProject - where to ruturn the project interface.
//              pPerforceInfo - use source control
//              
// Returns:     bool - true success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radContentManagerOpenProject
( 
    IRadCMProject**     ppProject, 
    const char*         pProjectName, 
    radCMPerforceInfo*  pPerforceInfo
)
{
    //
    // Just pass this onto the system object to deal with.
    //
    return( g_pTheSystem->OpenProject( ppProject, pProjectName, pPerforceInfo ) );
}

//=============================================================================
// Function:    radContentManagerGetLastError
//=============================================================================
// Description: This routine is invoked to obtain details about failed operation.
//
// Parameters:  errorcode and string
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radContentManagerGetLastError( radCMErrorCode* errorCode, char* pErrorString )
{
    //
    // Just pass this onto the system object to deal with.
    //
    g_pTheSystem->GetLastError( errorCode, pErrorString );

}

//=============================================================================
// Member Functions
//=============================================================================

//=============================================================================
// Function:    radCMSystem::radCMSystem
//=============================================================================
// Description: Constructor for singleton.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMSystem::radCMSystem( void )
{
    //
    // Create/open mutex to serialize access to the project 
    //
    m_MutexHandle = CreateMutex( NULL, false, "radCMExclusionObject" ); 

    //
    // Create thread local storage used to maintain last error code.
    //
    m_ErrorCodeThreadLocalStorage = TlsAlloc( );

}

//=============================================================================
// Function:    radCMSystem::~radCMSystem
//=============================================================================
// Description: Destructor. Release resources and ensure everything shutdown
//              correctly.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMSystem::~radCMSystem( void )
{
    //
    // Free the the error code local storage.
    //
    TlsFree( m_ErrorCodeThreadLocalStorage );

    //
    // Close the mutex object
    //
    CloseHandle( m_MutexHandle );
}

//=============================================================================
// Function:    radCMSystem::Get
//=============================================================================
// Description: Accessor used internally to gtet pointer to teh system object.
//
// Parameters:  n/a
//              
// Returns:     pointer to system object.
//
// Notes:       
//------------------------------------------------------------------------------

radCMSystem* radCMSystem::Get( void )
{
    return( g_pTheSystem );
}

//=============================================================================
// Function:    radCMSystem::Lock
//=============================================================================
// Description: Member to obtain the exclusion object.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::Lock( void )
{
    WaitForSingleObject( m_MutexHandle, INFINITE );
}

//=============================================================================
// Function:    radCMSystem::Unlock
//=============================================================================
// Description: Member to free the exclusion object.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::Unlock( void )
{
    ReleaseMutex( m_MutexHandle );
}

//=============================================================================
// Function:    radCMSystem::CreateProject
//=============================================================================
// Description: This member is used to create a project. It must not exist
//              already.
//
// Parameters:  pProjectName - file path and filename of the project.
//              useSourceControl
//              
// Returns:     radODBErrorCode.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMSystem::CreateProject
( 
    const char*         pProjectName,
    radCMPerforceInfo*  pPerforceInfo
)
{
    //
    // Lets make sure the project name is valid and does not exist.
    //
    if( pProjectName == NULL )
    {
        //
        // Invalid project name.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, "No project name specified.");
        return( false );
    }

    //
    // Check if the specified project name already exists. 
    //
    if( FileSpecExists( pProjectName ) )
    {
        SetLastError( radCMErrorCodeAlreadyExists, pProjectName, "Project %s already exists.");
        return( false );
    }
 
    //
    // Split the filespec into the file and directory portion. Make sure file part has
    // been specified.
    //
    char    PathBuffer[ _MAX_PATH ];
    char*   pFilePart;
    char    FileSpec[ _MAX_PATH ];

    if( 0 == GetFullPathName( pProjectName, sizeof( PathBuffer ), PathBuffer, &pFilePart ) )
    {
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s specified.");
        return( false );
    }
           
    //
    // Make it all lower case.
    //
    _strlwr( PathBuffer );      
                
    if( strlen( pFilePart ) == 0 )
    {
        //
        // No file part. Invalid.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s specified.");
        return( false );
    }

    //
    // Verify that the filepart has a valid extension. 
    //
    char fileExtension[ _MAX_PATH ];
    _splitpath( pFilePart, NULL, NULL, NULL, fileExtension );

    if( 0 != stricmp( fileExtension, PROJECT_FILE_EXTENSION ) )
    {
        //
        // Invalid file extension. Fail project creation.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s. Extension must contain "PROJECT_FILE_EXTENSION);
        return( false );
    }

    //
    // See if the directory part exists. If not attempt to create it. Null terminate path part. 
    //
    strcpy( FileSpec, PathBuffer );

    *(pFilePart - 1 ) = '\0';

    if( !FileSpecExists( PathBuffer ) )
    {
        //
        // Here the file path does not exist. Lets create it for the user.
        //
        if( !CreateDirectoryRecursive( PathBuffer ) )
        {
            //
            // Failed to create directory.
            //
            SetLastError( radCMErrorCodeAccessRights, PathBuffer, "Could not create directory %s");
            return( false );
        }
    }

    //
    // Check if client wants perforce connectivity.
    //
    radCMPerforceManager* pPerforceManager = NULL;
    if( pPerforceInfo != NULL )
    {
        pPerforceManager = new radCMPerforceManager( );
           
        if( !pPerforceManager->Initialize( pPerforceInfo ) )
        {
            //
            // Failed.
            //
            delete pPerforceManager;
            return( false );
        }
    }
    
    //
    // Lets contruct a project object. Initialize the project. We will then close 
    // the project object. 
    //
    radCMProject* pProject;
    radCMProject::Create( &pProject );

    if( !pProject->Initialize( FileSpec, PathBuffer, pFilePart, true, pPerforceManager ) )
    {
        //
        // Failed to intialize. Reason set by previous call.
        //
        pProject->Release( );
        return( false );
    }
   
    //
    // The current implementation does not return the project. It mustbe explicitly openned.
    // Lets just close the project.
    //
    pProject->Release( );

    //
    // Set the error code to success and we are done.
    //
    SetLastError( radCMErrorCodeSuccess );
    
    return( true );
}

//=============================================================================
// Function:    radCMSystem::DestroyProject
//=============================================================================
// Description: This member is used to destroy project. It cannot be open or
//              this operation will fail.
//
// Parameters:  pProjectName - file path and filename of the project
//              usingSourceControl
//              
// Returns:     radODBErrorCode.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMSystem::DestroyProject
(
    const char*         pProjectName,
    radCMPerforceInfo*  pPerforceInfo
)
{
    //
    // Lets make sure the project name is valid and does not exist.
    //
    if( pProjectName == NULL )
    {
        //
        // Invalid project name.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s specified.");
        return( false );
    }

    //
    // Check if the specified project name exists.
    //
    if( !FileSpecExists( pProjectName ) )
    {
        SetLastError( radCMErrorCodeProjectNotFound, pProjectName, "Project %s not found.");
        return( false );
    }
 
    //
    // Split the filespec into the file and directory portion. Make sure file part has
    // been specified.
    //
    char    PathBuffer[ _MAX_PATH ];
    char*   pFilePart;
    char    FileSpec[ _MAX_PATH ];
  
    if( 0 == GetFullPathName( pProjectName, sizeof( PathBuffer ), PathBuffer, &pFilePart ) )
    {
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project %s name specified.");
        return( false );
    }
                
    if( strlen( pFilePart ) == 0 )
    {
        //
        // No file part. Invalid.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project %s name specified.");
        return( false );
    }

    strcpy( FileSpec, PathBuffer );

    *(pFilePart - 1 ) = '\0';

    //
    // Check if client wants perforce connectivity.
    //
    radCMPerforceManager* pPerforceManager = NULL;
    if( pPerforceInfo != NULL )
    {
        pPerforceManager = new radCMPerforceManager( );
           
        if( !pPerforceManager->Initialize( pPerforceInfo ) )
        {
            //
            // Failed.
            //
            delete pPerforceManager;
            return( false );
        }
    }
  
    //
    // Invoke static member to destroy the project.
    //
    if( !radCMProject::Destroy( FileSpec, PathBuffer, pFilePart, pPerforceManager ) )
    {
        //
        // Failed to intialize. Reason set by previous call.
        //
        return( false );
    }
   
     //
    // Set the error code to success and we are done.
    //
    SetLastError( radCMErrorCodeSuccess );
    
    return( true );
}

//=============================================================================
// Function:    radCMSystem::OpenProject
//=============================================================================
// Description: This member is used to open a project
//
// Parameters:  pProectName - file path and filename of the prject.
//              pproject - where to return interface pointer
//              
// Returns:     radODBErrorCode.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMSystem::OpenProject
( 
    IRadCMProject**     ppProject, 
    const char*         pProjectName,
    radCMPerforceInfo*  pPerforceInfo
)
{
    *ppProject = NULL;
    //
    // Lets make sure the project name is valid and does not exist.
    //
    if( pProjectName == NULL )
    {
        //
        // Invalid project name.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, "Invalid project name specified.");
        return( false );
    }

    //
    // Check if the specified project name exists.
    //
    if( !FileSpecExists( pProjectName ) )
    {
        SetLastError( radCMErrorCodeProjectNotFound, pProjectName, "Project %s not found.");
        return( false );
    }
 
    //
    // Split the filespec into the file and directory portion. Make sure file part has
    // been specified.
    //
    char    PathBuffer[ _MAX_PATH ];
    char*   pFilePart;
    char    FileSpec[ _MAX_PATH ];
  
    if( 0 == GetFullPathName( pProjectName, sizeof( PathBuffer ), PathBuffer, &pFilePart ) )
    {
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s specified.");
        return( false );
    }

    //
    // Make it all lower case.
    //
    _strlwr( PathBuffer );      
                
    if( strlen( pFilePart ) == 0 )
    {
        //
        // No file part. Invalid.
        //
        SetLastError( radCMErrorCodeInvalidProjectName, pProjectName, "Invalid project name %s specified.");
        return( false );
    }

    strcpy( FileSpec, PathBuffer );

    *(pFilePart - 1 ) = '\0';

    //
    // Check if client wants perforce connectivity.
    //
    radCMPerforceManager* pPerforceManager = NULL;
    if( pPerforceInfo != NULL )
    {
        pPerforceManager = new radCMPerforceManager( );
           
        if( !pPerforceManager->Initialize( pPerforceInfo ) )
        {
            //
            // Failed.
            //
            delete pPerforceManager;
            return( false );
        }
    }

    //
    // Lets contruct a project object. Initialize the project. 
    //
    radCMProject* pProject;
    radCMProject::Create( &pProject );

    if( !pProject->Initialize( FileSpec, PathBuffer, pFilePart, false, pPerforceManager ) )
    {
        //
        // Failed to intialize. Reason set by previous call.
        //
        pProject->Release( );
        return( false );
    }
   
    //
    // Return the open project.
    //
    *ppProject = pProject;

    //
    // Set the error code to success and we are done.
    //
    SetLastError( radCMErrorCodeSuccess );
    
    return( true );
}

//=============================================================================
// Function:    radCMSystem::FileSpecExists
//=============================================================================
// Description: Use this member to determine if a directory or a file exists.
//
// Parameters:  pFileSpec
//              
// Returns:     true - if exists.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMSystem::FileSpecExists
( 
    const char* pFileSpec 
)
{
    WIN32_FIND_DATA FindFileData;
    HANDLE          FindHandle;

    FindHandle = FindFirstFile( pFileSpec, &FindFileData );

    if( FindHandle == INVALID_HANDLE_VALUE )
    {
        return( false );
    }

    //
    // Should do some more stuff but for now this is good enough.
    //
    FindClose( FindHandle );

    return( true );
}

//=============================================================================
// Function:    radCMSystem::CreateDirectoryRecursive
//=============================================================================
// Description: Use this member to create a directory recursively. It will create
//              each directory in the specified path.
//
// Parameters:  path
//              
// Returns:     true if success, false otherwise
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMSystem::CreateDirectoryRecursive( const char* path )
{
    //
    // Make a copy of the path since we alter it locally.
    //
    char    pathBuffer[ _MAX_PATH ];
    strcpy( pathBuffer, path );
     
    //
    // Loop creating each directory that does not exist in the string.
    //
    char*       p = pathBuffer;

    while( true )
    {
        //
        // Find the next slash.
        //
        p = strchr( p, '\\' );
        if( p == NULL )
        {
            //
            // Here we have reached the last entry.
            // Check if it exists. If note attempt to create it.
            //
            if( FileSpecExists( pathBuffer ) )
            {
                return( true );
            }
            else
            {
                //
                // Create the last entry.
                //
                return( 0 != CreateDirectory( pathBuffer, NULL ) );
            }
        }
        else
        {
            //
            // Null the slash 
            //
            *p = '\0';

            //
            // If path exists things are fine.
            //
            if( !FileSpecExists( pathBuffer ) )
            {
                //
                // Create the directory. If it fails, we are done.
                //
                if( !CreateDirectory( pathBuffer, NULL ) )
                {
                    return( false );
                }
            }

            //
            // Restore the character and try next.
            //
            *p = '\\';          
            p++;
        }      
    }
}

//=============================================================================
// Function:    radCMSystem::BuildResourceName
//=============================================================================
// Description: Helper function to build a resource name from a file spec.
//              Used for creating names of things like mutexs and shared memory
//              files.
//
// Parameters:  resourceName - where to create string
//              nameSpace    - object namespace
//              fileSpec     - unqiue filename
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::BuildResourceName
( 
    char* resourceName, 
    const char* nameSpace, 
    const char* fileSpec
)
{
    //
    // Copy the namespace
    //
    strcpy( resourceName, nameSpace );

    //
    // Copy file spec, removing slashes and colons 
    //
    char* pdst = resourceName + strlen( resourceName );

    while( *fileSpec != '\0' )
    {
        if( (*fileSpec == ':') || (*fileSpec == '.') || ( *fileSpec == '\\') || ( *fileSpec == '/') )
        {
            fileSpec++;
        }
        else
        {
            *pdst++ = *fileSpec++;
        }
    }

    *pdst = '\0';
}

//=============================================================================
// Function:    radCMSystem::ThreadAttach
//=============================================================================
// Description: Invoked when ever a thread attaches to DLL. We allocate memory
//              for storage of per-thread last error maintainance.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::ThreadAttach( void )
{
    //
    // Allocate memory for maintainance of last error and set it for use using thread
    // local storage.
    //
    TlsSetValue( m_ErrorCodeThreadLocalStorage, LocalAlloc( LPTR, sizeof( ErrorData ) ) );

    SetLastError( radCMErrorCodeSuccess );
}

//=============================================================================
// Function:    radCMSystem::ThreadAttach
//=============================================================================
// Description: Invoked when ever a thread detaches. We free memory
//              for storage of per-thread last error maintainance.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::ThreadDetach( void )
{
    //
    // Free memory allocated for error code maintaince.
    //
    LocalFree( (HLOCAL) TlsGetValue( m_ErrorCodeThreadLocalStorage ) );
}

//=============================================================================
// Function:    radCMSystem::GetLastError
//=============================================================================
// Description: Return error code and printable error string for the last error
//              that occurrred.
//
// Parameters:  pErrorCode
//              pErrorString
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::GetLastError
( 
    radCMErrorCode*  pErrorCode,
    char*            pErrorString
)
{
    ErrorData* pErrorData = (ErrorData*) TlsGetValue( m_ErrorCodeThreadLocalStorage );

    *pErrorCode = pErrorData->m_LastErrorCode;
    strcpy( pErrorString, pErrorData->m_LastErrorString );
}

//=============================================================================
// Function:    radCMSystem::SetLastError
//=============================================================================
// Description: Set last error code and printable error string for the last error
//              that occurrred. Used internally during any detection of an error.
//
// Parameters:  ErrorCode
//              pErrorString ( can be a null pointer )
//              pFormatString
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMSystem::SetLastError
( 
    radCMErrorCode   ErrorCode,
    const char*      pErrorString,
    const char*      pFormatString
)
{
    ErrorData* pErrorData = (ErrorData*) TlsGetValue( m_ErrorCodeThreadLocalStorage );
    pErrorData->m_LastErrorCode = ErrorCode;

    if( pErrorString != NULL )
    {
        if( pFormatString != NULL )
        {
              wsprintf( pErrorData->m_LastErrorString, pFormatString, pErrorString );
        }
        else
        {             
            strcpy( pErrorData->m_LastErrorString, pErrorString );
        }
    }
    else
    {
        pErrorData->m_LastErrorString[ 0 ] = '\0';
    }        
}

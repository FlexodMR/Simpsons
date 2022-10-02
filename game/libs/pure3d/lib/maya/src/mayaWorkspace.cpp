//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     18 April, 2002
// Modified:    18 April, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaWorkspace.hpp"
#include "dospath.hpp"

#include <direct.h>
#include <maya/MGlobal.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MString CMayaWorkspace::mCurrentWorkspace;

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaWorkspace::CMayaWorkspace()
{
}

CMayaWorkspace::~CMayaWorkspace()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

const char* CMayaWorkspace::CurrentWorkspace()
{
    MGlobal::executeCommand( "workspace -q -o", mCurrentWorkspace, false, false );
    return mCurrentWorkspace.asChar();
}

void CMayaWorkspace::FixPathForMaya( char* path )
{
    int len = strlen( path );

    if ( len > 0 )
    {
        while ( len-- )
        {
            if ( path[len] == '\\' ) path[len] = '/';
        }
    }
}

void CMayaWorkspace::BuildPathFromWorkspace( const char* workspace, const char* inPath, char* outPath, size_t outPathSize )
{
    if ( outPath == NULL ) return;

    *outPath = '\0';

    size_t c = strlen(inPath);
    size_t w = strlen(workspace);

    // PathIsAbsolute() is NOT const-correct, so I copy the string here.
    char* inCopy = new char [ c + 1 ];
    strcpy( inCopy, inPath );

    // No action taken if:
    // - If inPath is already an absolute path.
    // - If inPath is shorter than workspace
    if ( PathIsAbsolute( inCopy ) )
    {
        strncpy( outPath, inPath, outPathSize );
        *(outPath+outPathSize-1)='\0';
    }

    // If the "workspace" string appears at the front of the inPath then 
    // build the absolute path by prepending the project name
    else if ( strnicmp( inPath, workspace, w ) == 0 )
    {
        strncpy( outPath, CurrentWorkspace(), outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
        strncat( outPath, "/", outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
        strncat( outPath, inPath, outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
    }

    // Relative path does not specify "workspace" path.
    // Prepend Project path AND "workspace" path.
    else 
    {
        strncpy( outPath, CurrentWorkspace(), outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
        strncat( outPath, "/", outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated

        strncpy( outPath, workspace, outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
        strncat( outPath, "/", outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated

        strncat( outPath, inPath, outPathSize );
        *(outPath+outPathSize-1)='\0';  // assure NULL-terminated
    }

//    char* inCopy = new char [ c + 1 ];
//    strcpy( inCopy, inPath );
//
//    for ( c = 0; c < ( strlen(inPath) - w ); c++ )
//    {
//        bool bFound = false;
//        if ( strnicmp( (inPath+c), workspace, w ) == 0 )
//        {
//            bFound = true;
//        }
//
//        // If character before current is not directory delimiter, no match.
//        if ( ( c > 0 ) && inPath[c-1] != '/' && inPath[c-1] != '\\' && inPath[c-1] != ':' )
//        {
//            bFound = false;
//        }
//
//        // If character following match string is not directory delimiter, no match.
//        if ( inPath[c+w] != '/' && inPath[c+w] != '\\' )
//        {
//            bFound = false;
//        }
//
//        if ( bFound )
//        {
//            // Copy up to match
//            strncpy( inCopy, inPath, c );
//            *(inCopy + c) = '\0';   // so I can continue using str* functions
//            strcat( inCopy, "." );
//            strcat( inCopy, inPath + c + w );
//            break;
//        }
//    }
//
//    // Now 'inCopy' can be merged with the current project path
//    char cwd[_MAX_PATH];
//    char resultpath[_MAX_PATH];
//    *cwd = '\0';
//    *resultpath = '\0';
//    
//    // Store the cwd
//    _getcwd( cwd, _MAX_PATH );
//
//    MString currentWorkspace = mCurrentWorkspace + "/" + workspace;
//    _chdir( currentWorkspace.asChar() );
//
//    // Get Short Path
//    if ( _fullpath( resultpath, inCopy, _MAX_PATH ) != NULL )
//    {
//        FixPathForMaya( resultpath );
//    }
//    else
//    {
//        MGlobal::displayError( "! BuildPathFromWorkspace() FAILED !" );
//    }
//
//    // restore cwd
//    _chdir( cwd );
//
//    strncpy( outPath, resultpath, outPathSize );
//    *(outPath+outPathSize-1)='\0';

    delete [] inCopy;
}


void CMayaWorkspace::BuildPathFromWorkspace( WorkspaceRenderTypeEnum renderType, const char* inPath, char* outPath, size_t outPathSize )
{
    MString                     entry;
    MString                     command;
    command = MString( "workspace -q -rte " ) + WorkspaceRenderTypes[renderType];
    MGlobal::executeCommand( command, entry, false, false );

    BuildPathFromWorkspace( entry.asChar(), inPath, outPath, outPathSize );
}


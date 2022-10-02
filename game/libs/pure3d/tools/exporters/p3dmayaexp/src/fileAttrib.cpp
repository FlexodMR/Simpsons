//===========================================================================
// Copyright ©2001-2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     December 24, 2001
//
// Component:   
//
// Description: This command is rolled into the Exporter to allow for
//              querying the file attributes (you know, the read/write
//              access bits) - specifically to identify and report attempts
//              to overwrite read-only files.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "fileAttrib.hpp"

#include <maya/MArgDatabase.h>
#include <maya/MGlobal.h>

#include <direct.h>
#include <shlwapi.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================



//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void* FileAttribQueryCmd::creator()
{
    return new FileAttribQueryCmd;
}

void FileAttribQueryCmd::Clear( void )
{
    mQueryMode = kQueryModeAttrib;
    mWorkingDir.clear();
    mSourcePath.clear();
}

void FileAttribQueryCmd::FixPathForShlwapi( char* path )
{
    int len = strlen( path );

    if ( len > 0 )
    {
        while ( len-- )
        {
            if ( path[len] == '/' ) path[len] = '\\';
        }

        len = strlen( path );
        if ( path[len-1] == '\\' ) path[len-1] = '\0';
    }
}

void FileAttribQueryCmd::FixPathForMaya( char* path )
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

MStatus FileAttribQueryCmd::doIt( const MArgList& args )
{
    MStatus                     status = MS::kSuccess;

    bool                        bResult = false;

    Clear();

    status = parseArgs( args );

    if ( status == MS::kSuccess )
    {
        switch( mQueryMode )
        {
            case kQueryModeShortPath:
            {
                char resultpath[_MAX_PATH];
                *resultpath = '\0';

                char pszFrom[_MAX_PATH];
                char pszTo[_MAX_PATH];
                strcpy( pszFrom, mWorkingDir.asChar() );
                strcpy( pszTo, mSourcePath.asChar() );

                FixPathForShlwapi( pszFrom );
                FixPathForShlwapi( pszTo);

                // Get Short Path
                if ( PathRelativePathTo( resultpath, pszFrom, FILE_ATTRIBUTE_DIRECTORY, pszTo, 0 ) )
                {
                    FixPathForMaya( resultpath );
                    setResult( MString( resultpath ) );
                }
                else
                {
                    setResult( mSourcePath );
                }

                break;
            }

            case kQueryModeFullPath:
            {
                char cwd[_MAX_PATH];
                char resultpath[_MAX_PATH];
                *cwd = '\0';
                *resultpath = '\0';
                
                // Store the cwd
                _getcwd( cwd, _MAX_PATH );

                // Set cwd to working dir
                if ( mWorkingDir != "" )
                {
                    _chdir( mWorkingDir.asChar() );
                }

                // Get Short Path
                if ( _fullpath( resultpath, mSourcePath.asChar(), _MAX_PATH ) != NULL )
                {
                    FixPathForMaya( resultpath );
                    setResult( MString( resultpath ) );
                }
                else
                {
                    setResult( mSourcePath );
//                    status = MS::kFailure;
                }

                // restore cwd
                _chdir( cwd );

                break;
            }


            case kQueryModeAttrib:
            default:
            {
                DWORD                   fileAttrib;

                fileAttrib = GetFileAttributes( mFile.asChar() );

                if ( fileAttrib == (-1) )
                {
                    MGlobal::displayError( "File not found: " + mFile );
                    return MS::kFailure;
                }

                if ( mAttrib != "" )
                {
                    unsigned int a;
                    for ( a = 0; a < NumAttributeFlags; a++ )
                    {
                        if ( ( mAttrib == AttribMatch[a] ) && ( fileAttrib & AttribFlags[a] ) )
                        {
                            bResult = true;
                            break;
                        }
                    }

                    setResult( bResult );
                }
                else
                {
                    setResult( (int) fileAttrib );
                }
            }
        }
    }

    return status;
}

MSyntax FileAttribQueryCmd::newSyntax()
{
    MSyntax                     syntax;

    syntax.addFlag( kFileFlag, kFileFlagLong, MSyntax::kString );
    syntax.addFlag( kAttribFlag, kAttribFlagLong, MSyntax::kString );

    syntax.addFlag( kWorkingDir, kWorkingDirLong, MSyntax::kString );
    syntax.addFlag( kShortPathName, kShortPathNameLong, MSyntax::kString );
    syntax.addFlag( kFullPathName, kFullPathNameLong, MSyntax::kString );

    return syntax;
}

MStatus FileAttribQueryCmd::parseArgs( const MArgList& args )
{
    MStatus                     status = MS::kFailure;

    MArgParser                  argData( syntax(), args );

    if ( argData.isFlagSet( kFileFlag ) )
    {
        status = argData.getFlagArgument( kFileFlag, 0, mFile );
    }

    if ( argData.isFlagSet( kAttribFlag ) )
    {
        status = argData.getFlagArgument( kAttribFlag, 0, mAttrib );
    }

    if ( argData.isFlagSet( kWorkingDir ) )
    {
        status = argData.getFlagArgument( kWorkingDir, 0, mWorkingDir );
    }

    if ( argData.isFlagSet( kShortPathName ) )
    {
        mQueryMode = kQueryModeShortPath;
        status = argData.getFlagArgument( kShortPathName, 0, mSourcePath );
    }

    if ( argData.isFlagSet( kFullPathName ) )
    {
        mQueryMode = kQueryModeFullPath;
        status = argData.getFlagArgument( kFullPathName, 0, mSourcePath );
    }

    return status;
}

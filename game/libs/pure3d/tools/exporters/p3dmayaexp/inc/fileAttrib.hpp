//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     December 24, 2001
// Modified:    December 24, 2001
// Version:     
//
// Component:   Maya Exporter for Pure3D
//
// Description: This command was pigeon-holed into the Exporter to fix
//              bug outlined in Task ID #111 - Exporter should report
//              error or warning if the specified file to be
//              exported to is read-only.  This only affects Maya v3,
//              and this command is integrated only into the Exporter for
//              Maya v3 (via #ifdef).  This fix is actually implemented
//              via MEL, in the "pv_performAction.mel" script for Maya v3:
//
//                    if ( `exists fileAttribQuery` )
//                    {
//                          // Only query attribute for Pure3D export.
//                        if ( $fileType == "pure3D" )
//                        {
//                            $theFile = addExtension( $theFile, "p3d" );
//
//                              if ( eval( "fileAttribQuery -file \"" + $theFile + "\" -attrib \"r\"" ) )
//                              {
//                                  error( "Cannot write to read-only file." );
//                                  return false;
//                              }
//                          }
//                    }
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __FILEATTRIB_H  
#define __FILEATTRIB_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <stdio.h>
#include <maya/MString.h>
#include <maya/MArgList.h>
#include <maya/MPxCommand.h>
#include <maya/MSyntax.h>

#include <winbase.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const char* kFileFlag = "-f";
static const char* kFileFlagLong = "-file";

static const char* kAttribFlag = "-a";
static const char* kAttribFlagLong = "-attrib";

static const char* kWorkingDir = "-wd";
static const char* kWorkingDirLong = "-workingDir";

static const char* kShortPathName  = "-spn";
static const char* kShortPathNameLong = "-shortPathName";

static const char* kFullPathName = "-fpn";
static const char* kFullPathNameLong = "-fullPathName";

static const unsigned int NumAttributeFlags = 4;
static const char* AttribMatch[NumAttributeFlags] = 
{
    "a",    // Archive
    "d",    // Directory
    "h",    // Hidden
    "r"     // Read-only
};

static unsigned int AttribFlags[NumAttributeFlags] =
{
    FILE_ATTRIBUTE_ARCHIVE,
    FILE_ATTRIBUTE_DIRECTORY,
    FILE_ATTRIBUTE_HIDDEN,
    FILE_ATTRIBUTE_READONLY
};

//===========================================================================
// Interface Definitions
//===========================================================================

class FileAttribQueryCmd : public MPxCommand
{
public:
    enum FileQueryModeEnum
    {
        kQueryModeAttrib = 0,
        kQueryModeShortPath,
        kQueryModeFullPath
    };

    MStatus                     doIt( const MArgList& args );
    static void*                creator();

    bool                        isUndoable( void ) const;

    static MSyntax                newSyntax();
    MStatus                     parseArgs( const MArgList& args );

    void                        Clear();

// Constructor / Destructor
public:

protected:
    void                        FixPathForShlwapi( char* path );
    void                        FixPathForMaya( char* path );

private:
    FileQueryModeEnum           mQueryMode;

    MString                     mFile;
    MString                     mAttrib;

    MString                     mWorkingDir;
    MString                     mSourcePath;
};

//===========================================================================
// Inlines
//===========================================================================

inline
bool FileAttribQueryCmd::isUndoable( void ) const
{
    return false;
}


#endif // __FILEATTRIB_H  

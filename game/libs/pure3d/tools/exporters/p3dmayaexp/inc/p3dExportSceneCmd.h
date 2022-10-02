//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     29 May, 2002
// Modified:    29 May, 2002
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

// Recompilation protection flag.
#ifndef __P3DEXPORTSCENECMD_H  
#define __P3DEXPORTSCENECMD_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MPxCommand.h>
#include <maya/MArgList.h>
#include <maya/MSyntax.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const char* kExportFileFlag = "-f";
static const char* kExportFileFlagLong = "-file";

static const char* kP3DFlag = "-p3d";

static const char* kSelectionFlag = "-sl";
static const char* kSelectionFlagLong = "-selection";

static const char* kVersionFlag = "-v";
static const char* kVersionFlagLong = "-version";

static const char* kToollibFlag = "-t";
static const char* kToollibFlagLong = "-toollib";

static const char* kHelpFlag = "-h";
static const char* kHelpFlagLong = "-help";

//===========================================================================
// Interface Definitions
//===========================================================================

class p3dExportSceneCmd : public MPxCommand
{
public:
    p3dExportSceneCmd();
    ~p3dExportSceneCmd();
    
    MStatus                     doIt( const MArgList& args );
    static void*                creator();

    MStatus                     parseArgs( const MArgList& args );
    static MSyntax              newSyntax( void );
        
// Constructor / Destructor
public:

protected:
    void                        SetFilepath( const MString& filepath );
    void                        SetP3DFile( const MString& p3dFile );
    bool                        ArgumentsValid( void ) const;

private:
    MString                     mFilepath;
    MString                     mP3DFile;
    bool                        mbSelection;
    bool                        mbQueryVersion;
    bool                        mbQueryToollib;
    bool                        mbHelp;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __P3DEXPORTSCENECMD_H  

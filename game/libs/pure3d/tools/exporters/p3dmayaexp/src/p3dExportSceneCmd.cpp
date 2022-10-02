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
//===========================================================================
// Includes
//===========================================================================

#include "p3dExportSceneCmd.h"
#include "launchProcess.hpp"

#include "exporterutility.hpp"      // Exporter version string
#include <constants/version.hpp>        // ToolLib version string

#include <maya/MGlobal.h>
#include <maya/MArgDatabase.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dExportSceneCmd::p3dExportSceneCmd()
:   mbQueryVersion( false ),
    mbQueryToollib( false ),
    mbSelection( false ),
    mbHelp( false )
{
}

p3dExportSceneCmd::~p3dExportSceneCmd()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Local Functions
//===========================================================================

bool slash( MString& path )
{
    bool                        bConvert = false;

    MStringArray                noSlashes;
    path.split( '\\', noSlashes );

    path = noSlashes[0];

    size_t i;
    for ( i = 1; i < noSlashes.length(); i++ )
    {
        path = path + "/" + noSlashes[i];    
        bConvert = true;
    }

    return bConvert;
}


//===========================================================================
// Member Functions
//===========================================================================

void* p3dExportSceneCmd::creator( void )
{
    return new p3dExportSceneCmd;
}

MSyntax p3dExportSceneCmd::newSyntax( void )
{
    MSyntax                     syntax;

    syntax.addFlag(kExportFileFlag, kExportFileFlagLong, MSyntax::kString);
    syntax.addFlag(kP3DFlag, kP3DFlag, MSyntax::kString);
    syntax.addFlag(kSelectionFlag, kSelectionFlagLong, MSyntax::kNoArg);
    syntax.addFlag(kVersionFlag, kVersionFlagLong, MSyntax::kNoArg);
    syntax.addFlag(kToollibFlag, kToollibFlagLong, MSyntax::kNoArg);
    syntax.addFlag(kHelpFlag, kHelpFlagLong, MSyntax::kNoArg);

    return syntax;
}

MStatus p3dExportSceneCmd::doIt( const MArgList& args )
{
    MStatus                     status;

    MString                     cmd;

    status = parseArgs( args );
    if ( status == MS::kSuccess )
    {
        if ( mbHelp )
        {
            MString             help;

            char* version_str = GetVersionStr("p3dmayaexp.mll");
            help = MString( "P3DExportScene [options];\n" );
            help += MString( "\t[-file | -f] : Specify file to load and export.\n" );
            help += MString( "\t[-p3d]: Specify P3D file to write.\n" );
            help += MString( "\t[-selection | -sl] : Export only selected items.\n" );
            help += MString( "\t[-version | -v] : Query version of Exporter (overrides other flags).\n" );
            help += MString( "\t[-toollib | -t] : Query version of ToolLib (overrides -file and -p3d flags).\n" );
            help += MString( "\t[-help | -h] : Displays this help.\n" );

            MGlobal::displayInfo( help );
        }

        else if ( mbQueryVersion )
        {
            MString             query;

            char* version_str = GetVersionStr("p3dmayaexp.mll");

            setResult( MString( version_str ) );
        }

        else if ( mbQueryToollib )
        {
            setResult( MString( ATG_VERSION ) );
        }

        else if ( ArgumentsValid() )
        // Build extended command with filepath (optional) and P3D file (optional).
        {
            cmd = "P3DExportSceneEx \"" + mFilepath + "\" \"" + mP3DFile + "\" " + mbSelection;
            status = MGlobal::executeCommand( cmd, false, false );
        }
        else
        // If no arguments, call default export function
        {
            if ( mbSelection ) cmd = "P3DExportSelection";
            else cmd = "P3DExport";
            status = MGlobal::executeCommand( cmd, false, false );
        }
    }

    return status;
}

MStatus p3dExportSceneCmd::parseArgs( const MArgList& args )
{
    MStatus                     status;

    MArgDatabase  argData(syntax(), args);

    if (argData.isFlagSet(kExportFileFlag))
    {
        MString                 filepath;
        status = argData.getFlagArgument( kExportFileFlag, 0, filepath );
        if ( status == MS::kSuccess )
        {
            SetFilepath( filepath );
        }
    }

    if (argData.isFlagSet(kP3DFlag))
    {
        MString                 p3dFile;
        status = argData.getFlagArgument( kP3DFlag, 0, p3dFile );
        if ( status == MS::kSuccess )
        {
            SetP3DFile( p3dFile );
        }
    }

    if ( argData.isFlagSet( kSelectionFlag ) )
    {
        mbSelection = true;
    }

    if ( argData.isFlagSet( kVersionFlag ) )
    {
        mbQueryVersion = true;
    }

    if ( argData.isFlagSet( kToollibFlag ) )
    {
        mbQueryToollib = true;
    }

    if ( argData.isFlagSet( kHelpFlag ) )
    {
        mbHelp = true;
    }

    return status;
}

void p3dExportSceneCmd::SetFilepath( const MString& filepath )
{
    char fullPath[_MAX_PATH];

    if ( FindInPath( filepath.asChar(), fullPath ) )
    {
        mFilepath = fullPath;
        slash( mFilepath );
    }
    else
    {
        MGlobal::displayError( "Could not find file: " + filepath );
    }
}

void p3dExportSceneCmd::SetP3DFile( const MString& p3dFile )
{
    mP3DFile = p3dFile;
    slash( mP3DFile );
}

bool p3dExportSceneCmd::ArgumentsValid( void ) const
{
    return ( ( mFilepath != "" ) || ( mP3DFile != "" ) );
}
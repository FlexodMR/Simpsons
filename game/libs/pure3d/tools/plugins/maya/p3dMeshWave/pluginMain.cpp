//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: pluginMain.cpp
//
// Author: Maya SDK Wizard
//

#include "p3dMeshWaveNode.h"
#include "p3dMeshWaveCmd.h"

#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>

#include <../common/inc/GetVersionString.hpp>

MStatus initializePlugin( MObject obj )
//
//    Description:
//        this method is called when the plug-in is loaded into Maya.  It 
//        registers all of the services that this plug-in provides with 
//        Maya.
//
//    Arguments:
//        obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{ 
    char version_str[256];
    GetVersionString( "p3dMeshWave.mll", version_str, 256 );

    MStatus   status;
    MFnPlugin plugin( obj, "Radical Entertainment", version_str, "Any");

    status = plugin.registerNode( "p3dMeshWave", p3dMeshWave::id, p3dMeshWave::creator,
                                  p3dMeshWave::initialize );
    if (!status) {
        status.perror("FAILED to register p3dMeshWave node.");
        return status;
    }

    status = plugin.registerCommand( "p3dMeshWaveCmd", p3dMeshWaveCmd::creator, NULL );
    if (!status) 
    {
        status.perror("FAILED to register p3dMeshWaveCmd.");
        return status;
    }

    MString cmd = "evalDeferred( \"if ( `exists p3dMeshWave` ) source p3dMeshWave; p3dMeshWaveInstall;\" )";
    MGlobal::executeCommand( cmd );

    return status;
}

MStatus uninitializePlugin( MObject obj)
//
//    Description:
//        this method is called when the plug-in is unloaded from Maya. It 
//        deregisters all of the services that it was providing.
//
//    Arguments:
//        obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{
    MStatus   status;
    MFnPlugin plugin( obj );

    status = plugin.deregisterNode( p3dMeshWave::id );
    if (!status) {
        status.perror("FAILED to deregister p3dMeshWave node.");
        return status;
    }

    status = plugin.deregisterCommand( "p3dMeshWaveCmd" );
    if (!status) {
        status.perror("FAILED to deregister p3dMeshWaveCmd.");
        return status;
    }

    MString cmd = "evalDeferred( \"p3dMeshWaveUninstall;\" )";
    MGlobal::executeCommand( cmd );

    return status;
}

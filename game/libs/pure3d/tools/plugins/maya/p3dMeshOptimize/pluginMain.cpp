//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: pluginMain.cpp
//
// Author: Maya SDK Wizard
//

#include "p3dMeshOptimizeCmd.h"

#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>

#include "../common/inc/GetVersionString.hpp"

MStatus initializePlugin( MObject obj )
//
//	Description:
//		this method is called when the plug-in is loaded into Maya.  It 
//		registers all of the services that this plug-in provides with 
//		Maya.
//
//	Arguments:
//		obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{ 
	MStatus   status;

    char buf[256];
    GetVersionString( "p3dMeshOptimize.mll", buf, 256 );

	MFnPlugin plugin( obj, "Radical Entertainment", buf, "Any");

	status = plugin.registerCommand( "p3dMeshOptimize", p3dMeshOptimize::creator, p3dMeshOptimize::newSyntax );
	if (!status) {
		status.perror("registerCommand");
		return status;
	}

    MString cmd = "evalDeferred( \"if ( `exists p3dMeshOptimize` ) source p3dMeshOptimize; p3dMeshOptimizeInstall;\" )";
    MGlobal::executeCommand( cmd );

	return status;
}

MStatus uninitializePlugin( MObject obj )
//
//	Description:
//		this method is called when the plug-in is unloaded from Maya. It 
//		deregisters all of the services that it was providing.
//
//	Arguments:
//		obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{
	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterCommand( "p3dMeshOptimize" );
	if (!status) {
		status.perror("deregisterCommand");
		return status;
	}

    MString cmd = "evalDeferred( \"p3dMeshOptimizeUninstall;\" )";
    MGlobal::executeCommand( cmd );

	return status;
}

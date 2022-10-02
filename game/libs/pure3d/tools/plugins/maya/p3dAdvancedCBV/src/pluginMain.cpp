//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: pluginMain.cpp
//
// Author: Maya SDK Wizard
//

#include "../inc/gangcbvCmd.h"
#include "../inc/ungangcbvCmd.h"
#include "../inc/hilitecbvCmd.h"
#include "../inc/tweakcbvCmd.hpp"

#include <maya/MFnPlugin.h>

#include "../common/inc/GetVersionString.hpp"

MStatus initializePlugin( MObject obj )
{ 
    char version_str[256];
    GetVersionString( "p3dAdvancedCBV.mll", version_str, 256 );

	MStatus   status;
	MFnPlugin plugin( obj, "Radical Entertainment", version_str, "Any");

	status = plugin.registerCommand( "gangcbv", gangcbv::creator, gangcbv::newSyntax );
	if (!status) {
		status.perror("register 'gangcbv'");
		return status;
	}

	status = plugin.registerCommand( "ungangcbv", ungangcbv::creator, ungangcbv::newSyntax );
	if (!status) {
		status.perror("register 'ungangcbv'");
		return status;
	}

	status = plugin.registerCommand( "hilitecbv", hilitecbv::creator, hilitecbv::newSyntax );
	if (!status) {
		status.perror("register 'hilitecbv'");
		return status;
	}

	status = plugin.registerCommand( "tweakcbv", tweakcbv::creator, tweakcbv::newSyntax );
	if (!status) {
		status.perror("register 'tweakcbv'");
		return status;
	}

	return status;
}

MStatus uninitializePlugin( MObject obj )
{
	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterCommand( "gangcbv" );
	if (!status) {
		status.perror("deregister 'gangcbv'");
		return status;
	}

	status = plugin.deregisterCommand( "ungangcbv" );
	if (!status) {
		status.perror("deregister 'ungangcbv'");
		return status;
	}

	status = plugin.deregisterCommand( "hilitecbv" );
	if (!status) {
		status.perror("deregister 'hilitecbv'");
		return status;
	}

	status = plugin.deregisterCommand( "tweakcbv" );
	if (!status) {
		status.perror("deregister 'tweakcbv'");
		return status;
	}

	return status;
}

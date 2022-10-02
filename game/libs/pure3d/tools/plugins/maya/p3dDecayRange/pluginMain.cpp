//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: pluginMain.cpp
//
// Author: Maya SDK Wizard
//

#include "p3dDecayRangeNode.h"
#include "p3dDecayRangeManip.hpp"
#include "../common/inc/GetVersionString.hpp"

#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>

MStatus initializePlugin( MObject obj )
{ 
	MStatus   status;

    const unsigned int kMaxBytes = 256;
    char        version[kMaxBytes];
    GetVersionString( "p3dDecayRange.mll", version, kMaxBytes );

	MFnPlugin plugin( obj, "Radical Entertainment", version, "Any");

	status = plugin.registerNode( "p3dDecayRange", p3dDecayRange::id, p3dDecayRange::creator,
								  p3dDecayRange::initialize, MPxNode::kLocatorNode );
	if (!status) {
		status.perror("register p3dDecayRanged");
		return status;
	}

	status = plugin.registerNode( "p3dDecayRangeManip", p3dDecayRangeManip::id, p3dDecayRangeManip::creator,
								  p3dDecayRangeManip::initialize, MPxNode::kManipContainer );
	if (!status) {
		status.perror("register p3dDecayRangeManip");
		return status;
	}

    MString     command( "source p3dDecayRangeInstall; p3dDecayRangeInstall;" );
    MGlobal::executeCommand( command );

	return status;
}

MStatus uninitializePlugin( MObject obj)
{
	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterNode( p3dDecayRangeManip::id );
	if (!status) {
		status.perror("deregister p3dDecayRangeManip");
		return status;
	}

	status = plugin.deregisterNode( p3dDecayRange::id );
	if (!status) {
		status.perror("deregister p3dDecayRange");
		return status;
	}

#if 0
#ifdef _DEBUG
    MString     command( "if ( `shelfLayout -q -exists \"P3DDecayRange\"` ) deleteUI -layout P3DDecayRange;" );
    MGlobal::executeCommand( command );
#endif
#endif

	return status;
}

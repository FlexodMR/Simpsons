//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        main.cpp
//
// Subsystem:	atgMayaRemote
//
// Description:	This file contains the entry point for the maya remote plugin.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	Sept 23, 2002
//
// Notes:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================//

#include <maya/MObject.h>
#include <maya/MStatus.h>
#include "system.hpp"

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    initializePlugin
//=============================================================================
// Description: This routine is called when the plug-in is loaded into Maya.  It 
//		        registers all of the services that this plug-in provides with 
//		        Maya.
//
// Parameters:  obj - a handle to the plug-in object (use MFnPlugin to access it)
//              
// Returns:     MStatus
//
// Notes:       
//------------------------------------------------------------------------------

MStatus initializePlugin
( 
    MObject obj
)
{ 
    return( theSystem.Initialize( obj ) );
}

//=============================================================================
// Function:    uninitializePlugin
//=============================================================================
// Description: This routine is called when the plug-in is unloaded into Maya.
//              It de-registers all of the services that this plug-in was 
//              providing.
//
// Parameters:  obj - a handle to the plug-in object (use MFnPlugin to access it)
//              
// Returns:     MStatus
//
// Notes:       
//------------------------------------------------------------------------------

MStatus uninitializePlugin
( 
    MObject obj
)
{
    return( theSystem.Terminate( obj ) );
}

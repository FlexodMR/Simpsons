//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     01 November, 2002
//
// Component:   mayaShadingGroup.hpp
//
// Description: A utility class to work with Maya Shading Groups and
//              (eventually) Materials and Textures.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MSHADINGGROUP_HPP_
#define __MSHADINGGROUP_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MDagPath.h>
#include <maya/MIntArray.h>
#include <maya/MObjectArray.h>
#include <maya/MStatus.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class MShadingGroup
{
public:

// //////////////////////////////////////////////
//  STATIC PUBLIC METHODS

    static MStatus                              MShadingGroup::GetAssignedShaders( const MDagPath & obDagPath, int instanceNumber, MObjectArray& shaders, MIntArray& indices );
	static MStatus							    FindUnnecessaryShaders( const MDagPath & obDagPath, int instanceNumber, MObjectArray & shadingGroups );
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MSHADINGGROUP_HPP_

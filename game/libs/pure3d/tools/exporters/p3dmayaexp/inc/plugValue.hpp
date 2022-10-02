//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     15 October, 2002
//
// Component:   plugValue.hpp
//
// Description: Template function to query MPlug value from MObject.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PLUGVALUE_HPP_
#define __PLUGVALUE_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MObject.h>
#include <maya/MString.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

template <class T>
bool PlugValue( const MObject& node, const char* plugname, T& value)
{
    MStatus                     status;

    MFnDependencyNode           fnDependNode( node, &status );
    if ( status != MS::kSuccess ) return false;

    MPlug plug = fnDependNode.findPlug( plugname, &status );
    if (status != MS::kSuccess) return false;

    T           tVal;
    status = plug.getValue(tVal);
    if (status != MS::kSuccess) return false;

    value = tVal;
    return true;
}

#endif // __PLUGVALUE_HPP_

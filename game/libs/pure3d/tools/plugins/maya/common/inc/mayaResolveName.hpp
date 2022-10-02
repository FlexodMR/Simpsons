//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     02 December, 2002
//
// Component:   mayaResolveName.cpp
//
// Description: In the case where you need to initiate a callback on
//              node creation, if the callback is invoked for a duplicate
//              function Maya will provide you with a DG node named using
//              a reserved prefix: "__PrenotatoPerDuplicare_".
//              If you defer any commands using this name the command will
//              fail because the object will be renamed by the time your
//              deferred statement is executed.
//
//              The "ResolveName" function makes an educated guess as to the
//              final name that will be used by Maya.
//
// Constraints: NO GUARANTEES. Maya doesn't offer any prediction facilities
//              for node naming, so all this is a "seat of the pants" effort.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYARESOLVENAME_HPP_
#define __MAYARESOLVENAME_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MString.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

// Hard-coded prefix Maya uses to temporarily identify nodes during Duplicate operation.
static const char* gpDupePrefix = "__PrenotatoPerDuplicare_";

//===========================================================================
// Exports
//===========================================================================

extern void ResolveName( const MString& originalName, MString& resolvedName, bool bDAG, bool bDeferred );

#endif // __MAYARESOLVENAME_HPP_

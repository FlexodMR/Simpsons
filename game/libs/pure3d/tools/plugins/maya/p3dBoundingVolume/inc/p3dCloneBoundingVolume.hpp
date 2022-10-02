//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     19 September, 2002
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
#ifndef __P3DCLONEBOUNDINGVOLUME_H  
#define __P3DCLONEBOUNDINGVOLUME_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "boundingFactoryCommands.hpp"

#include "tlTable.hpp"

#include <maya/MPxCommand.h>
#include <maya/MDagPathArray.h>
#include <maya/MObjectArray.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

namespace P3DBoundingVolume
{

class p3dCloneBoundingVolumeCmd : public MPxCommand 
{
public:
    p3dCloneBoundingVolumeCmd();
    ~p3dCloneBoundingVolumeCmd();

public:
    static void*   creator();
    MStatus  doIt( const MArgList& args );
    MStatus  undoIt();
    MStatus  redoIt(); 
    bool     isUndoable() const { return(true);}

protected:
    MDagPathArray                               mSelectedBoundingVolumes;

    void                                        Clear( void );
    void                                        FlushUndo( void );
    tlTable<createBoundingVolumeCmd*>           mpCreateBoundingVolumeCmd;
};

//===========================================================================
// Inlines
//===========================================================================

} //namespace P3DBoundingVolume

#endif // __P3DCLONEBOUNDINGVOLUME_H  

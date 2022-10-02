//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     24 May, 2002
//
// Component:   p3dMeshWaveCmd.h
//
// Description: MEL command to create the p3dMeshWave node and wire it
//              up to the specified mesh node's dependency graph.
//
// Constraints: Undo added/fixed: 08 Oct 2002
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __P3DMESHWAVECMD_H  
#define __P3DMESHWAVECMD_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <stdio.h>
#include <maya/MString.h>
#include <maya/MArgList.h>
#include <maya/MPxCommand.h>
#include <maya/MDagPath.h>
#include <maya/MObject.h>
#include <maya/MDGModifier.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class p3dMeshWaveCmd : public MPxCommand
{
public:
    p3dMeshWaveCmd();
    virtual        ~p3dMeshWaveCmd();

    MStatus                     doIt( const MArgList& );
    MStatus                     redoIt();
    MStatus                     undoIt();
    bool                        isUndoable() const;
    static void*                creator();

private:
    MDGModifier*                mDGModifierCreate;
    MDGModifier*                mDGModifierDisconnect;
    MDGModifier*                mDGModifierConnect;
    MDagPath                    mOriginalMesh;
    MDagPath                    mNewMesh;
    
// ** I leave this here to accompany this warning:
//
// ** Do NOT store the MObject from an MDGModifier::createNode() operation
// ** as a class member object!! This causes Undo/Redo to CRASH!
// ** It doesn't make any sense, I agree, but hopefully this will
// ** save some other unlucky soul from the grief and pain I suffered.

//    MObject                     mMeshWaveNode;

    MString                     mMeshWaveNodeName;
    MString                     mCurrentUVSet;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __P3DMESHWAVECMD_H  

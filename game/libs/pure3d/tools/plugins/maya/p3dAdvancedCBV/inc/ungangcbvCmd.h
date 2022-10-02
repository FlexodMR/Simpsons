//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     28 June, 2002
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
#ifndef __UNGANGCBVCMD_H_
#define __UNGANGCBVCMD_H_

//===========================================================================
// Nested Includes
//===========================================================================

#include <mayaModifierStack.hpp>

#include <maya/MPxCommand.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MIntArray.h>
#include <maya/MString.h>

//===========================================================================
// Forward References
//===========================================================================

class MArgList;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class ungangcbv : public MPxCommand
{
public:
    ungangcbv();
	virtual		~ungangcbv();

    MStatus                     parseArgs( const MArgList& args );
	MStatus		                doIt( const MArgList& args );
	MStatus		                redoIt();
	MStatus		                undoIt();
	bool		                isUndoable() const;

    static MSyntax              newSyntax( void );
	static void*                creator();

    void                        Help( void ) const;

private:
    MSelectionList              mSelection;

    MDagPath                    mCurrentDag;
    MIntArray                   mVertexIndices;
    MIntArray                   mVtxArray;      // vtx portion of .vtxFace
    MIntArray                   mFaceArray;     // face portion of .vtxFace

    CMayaModifierStack          mModifierStack;

    bool                        mbHelp;
};

//===========================================================================
// Inlines
//===========================================================================

#endif      // __UNGANGCBVCMD_H_

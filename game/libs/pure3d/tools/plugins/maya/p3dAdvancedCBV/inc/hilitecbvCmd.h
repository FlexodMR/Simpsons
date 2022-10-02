//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     12 July, 2002
// Modified:    12 July, 2002
// Version:     
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
#ifndef __HILITECBVC_H  
#define __HILITECBVC_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <mayaDagSelection.hpp>

#include <maya/MPxCommand.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MIntArray.h>
#include <maya/MString.h>
#include <maya/MColor.h>

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

class hilitecbv : public MPxCommand
{
public:
    hilitecbv();
	virtual		~hilitecbv();

public:
    MStatus                     parseArgs( const MArgList& args );
	MStatus		                doIt( const MArgList& args );
	MStatus		                redoIt();
	MStatus		                undoIt();
	bool		                isUndoable() const;
    static MSyntax              newSyntax( void );
	static void*                creator();

    void                        Help( void ) const;

private:
    bool                        mbHelp;

    MSelectionList              mUndoSelection;

    CMayaDagSelection           mDagSelection;

    MColor                      mRGBA;
    double                      mTolerance;
    bool                        mbExpandMode;

    bool                        mbRed;
    bool                        mbGreen;
    bool                        mbBlue;

    bool                        mbHue;
    bool                        mbSaturation;
    bool                        mbValue;

    bool                        mbAlpha;

    bool                        mbVtxFace;

    bool                        IsWithinTolerance( const MColor& color ) const;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __HILITECBVC_H  

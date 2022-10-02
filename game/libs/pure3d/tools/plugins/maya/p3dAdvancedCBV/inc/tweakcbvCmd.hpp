//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     12 July, 2002
//
// Component:   tweakcbv - Maya command
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TWEAKCBV_H  
#define __TWEAKCBV_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <mayaDagSelection.hpp>

#include <maya/MPxCommand.h>
#include <maya/MSelectionList.h>
#include <maya/MColor.h>
#include <maya/MColorArray.h>

#include <tlColour.hpp>

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

class tweakcbvUndo
{
public:
    tweakcbvUndo( const MDagPath& dag );
    ~tweakcbvUndo();        // Destructor performs the undo

    void                        GetVtxColors( MColorArray& colors ) const;

protected:
    void                        SetDag( const MDagPath& dag );

private:
    MDagPath                    mDag;
//    MColorArray                 mVtxColors;
    MColorArray                 mFaceVtxColors;
    MIntArray                   mFaceIndices;
    MIntArray                   mVtxIndices;
};

class tweakcbv : public MPxCommand
{
public:
    tweakcbv();
	virtual		~tweakcbv();

public:
    MStatus                     parseArgs( const MArgList& args );
	MStatus		                doIt( const MArgList& args );
	MStatus		                redoIt();
	MStatus		                undoIt();
	bool		                isUndoable() const;
    static MSyntax              newSyntax( void );
	static void*                creator();

    void                        Help( void ) const;

protected:
    void                        TweakColor( const MColor& source, MColor& result ) const;

private:
    void                        Debug( const CMayaDagComponents* ) const;
    bool                        mbHelp;
    bool                        mbDebug;
    bool                        mbQuery;

    tweakcbvUndo**              mppUndo;
    unsigned int                mUndoSize;

    CMayaDagSelection           mDagSelection;

    bool                        mbDoSomething;

    double                      mBlend;

    double                      mRed;
    bool                        mbRed;

    double                      mGreen;
    bool                        mbGreen;

    double                      mBlue;
    bool                        mbBlue;

    double                      mAlpha;
    bool                        mbAlpha;

    double                      mHue;
    bool                        mbHue;

    double                      mSaturation;
    bool                        mbSaturation;

    double                      mValue;
    bool                        mbValue;

    double                      mGamma;
    bool                        mbGamma;

    double                      mContrast;
    bool                        mbContrast;

    double                      mBrightness;
    bool                        mbBrightness;

    tlColour                    mMeanColour;

    bool                        mbVtxFace;
    bool                        mbAbsolute;

};

//===========================================================================
// Inlines
//===========================================================================

#endif // __TWEAKCBV_H  

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     27 November, 2002
// Modified:    27 November, 2002
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
#ifndef P3DMESHOPTIMIZE_H
#define P3DMESHOPTIMIZE_H

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/inc/mayaDagSelection.hpp>
#include <maya/inc/mayaModifierStack.hpp>

#include <maya/MPxCommand.h>
#include <maya/MArgList.h>
#include <maya/MSyntax.h>
#include <maya/MDagPath.h>
#include <maya/MDagPathArray.h>
#include <maya/MDGModifier.h>

//===========================================================================
// Forward References
//===========================================================================

class MArgList;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const char* kSyntaxMaxUV = "uv";
static const char* kSyntaxMaxUVLong = "maxUV";

static const char* kSyntaxMaxArea = "a";
static const char* kSyntaxMaxAreaLong = "maxArea";

//===========================================================================
// Interface Definitions
//===========================================================================

class p3dMeshOptimize : public MPxCommand
{

public:
				                p3dMeshOptimize();
	virtual		                ~p3dMeshOptimize();

    MStatus                     parseArgs( const MArgList& args );

	virtual MStatus		        doIt( const MArgList& args );
	virtual MStatus		        redoIt();
	virtual MStatus		        undoIt();
	bool		                isUndoable() const;

    static MSyntax              newSyntax( void );

	static void*                creator();

protected:
    void                        CleanWingedVertices( const MDagPath& dagPath, MDGModifier* pDGModifier ) const;
    
private:
    CMayaDagSelection           m_dagSelect;
    MDagPathArray               m_dagPaths;

    CMayaModifierStack          m_modifierStack;
    
    bool                        bCleanup;
    MDGModifier*                m_pDGModifierCleanup;

    bool                        m_bHasMaxUV;
    double                      m_maxUV;

    bool                        m_bHasMaxArea;
    double                      m_maxArea;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // P3DMESHOPTIMIZE_H

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     31 July, 2002
// Modified:    31 July, 2002
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
#ifndef __P3DDECAYRANGEGL_HPP_
#define __P3DDECAYRANGEGL_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include "p3dDecayRangeConstants.hpp"

#include <maya/MVector.h>
#include <maya/MColor.h>
#include <maya/MDagPath.h>
#include <maya/MPoint.h>
#include <maya/MMatrix.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

bool getAttachedLight( const MDagPath& dag, MPoint& position, MColor& lightColour );

void drawCube( const MPoint& position, const MVector& bounds, const  MColor& colour, bool bCull, const MVector& view, const MMatrix& matrix );
void fillCube( const MPoint& position, const MVector& bounds, const  MColor& colour, bool bCull, const MVector& view, const MMatrix& matrix );
void fillCube( const MPoint& position, const MVector& innerBounds, const MVector& outerBounds, const MColor& innerColour, const MColor& outerColour, bool bCull, const MVector& view, const MMatrix& matrix );
void drawDisc( double radius, const MPoint& position, const MVector& normal, size_t res, const MColor& colour );
void fillDisc( double radius, const MPoint& position, const MVector& normal, size_t res, const MColor& colour );
void fillDisc( double innerRadius, double outerRadius, const MPoint& position, const MVector& normal, size_t res, const MColor& innerColour, const MColor& outerColour );

void fillCyl( double radius, double height, const MPoint& position, const MVector& normal, size_t res, const MColor& colour );
void fillCone( double radius, double height, const MPoint& position, const MVector& normal, size_t res, const MColor& colour);

#endif // __P3DDECAYRANGEGL_HPP_

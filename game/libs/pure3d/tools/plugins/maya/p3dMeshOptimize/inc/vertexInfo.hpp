//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     29 November, 2002
//
// Component:   vertexInfo.hpp -> p3dMeshOptimize Maya plug-in
//
// Description: Stores interesting things I need to know about vertices.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef VERTEXINFO_HPP
#define VERTEXINFO_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MDagPath.h>
#include <maya/MIntArray.h>
#include <maya/MPoint.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CVertexInfo
{
// Constructor / Destructor
public:
    CVertexInfo( const MDagPath& dagPath, int index, MStatus* pStatus = NULL );
    ~CVertexInfo();

public:

    void                        Initialize( const MDagPath& dagPath, int index, MStatus* pStatus = NULL );

    int                         Index(void) const;
    int                         NumEdges(void) const;
    int                         EdgeIndices( MIntArray& edgeIndices ) const;
    double                      Angle(void) const;

    MString                     AsString(void) const;

protected:
    // No protected members.

private:
    void                        CalculateEdgeAngle( void );

    MDagPath                    m_dagPath;
    int                         m_index;
    MPoint                      m_point;
    int                         m_numEdgeIndices;
    MIntArray                   m_edgeIndices;
    double                      m_angle;
};

//===========================================================================
// Inlines
//===========================================================================

inline
int CVertexInfo::Index(void) const
{
    return m_index;
}

inline
int CVertexInfo::NumEdges(void) const
{
    return m_numEdgeIndices;
}

inline
int CVertexInfo::EdgeIndices( MIntArray& edgeIndices ) const
{
    edgeIndices = m_edgeIndices;
    return m_edgeIndices.length();
}

inline
double CVertexInfo::Angle(void) const
{
    return m_angle;
}

#endif // VERTEXINFO_HPP

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     07 May, 2002
//
// Component:   vertexAnimationAnimNode.cpp
//
// Description: Handles exporting vertex animation.
//
// Constraints: Vertex animation is mutually exclusive to Deformer Expression
//              animation. The latter must be defined on a smooth-bound skin
//              whereas the former may not be defined on a smooth-bound skin.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __VERTEXANIMATIONANIMNODE_H  
#define __VERTEXANIMATIONANIMNODE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "animNode.hpp"

//===========================================================================
// Forward References
//===========================================================================

class tlInventory;
class tlPrimGroupMesh;
class tlFrameController;
class tlVertexAnim;
class tlPoint;
class tlColour;
class tlVectorChannel;
class tlVectorChannel;
class tlColourChannel;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const unsigned int NUM_ANIMATED_UVSETS = 4;

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Inlines
//===========================================================================

//**************************************************************
// Class DeformerExpressionAnimNode
//**************************************************************
class VertexAnimationAnimNode : public AnimNode
{
public:

    VertexAnimationAnimNode( SceneNode* pNode, tlPrimGroupMesh* pgmesh, tlInventory* pInventory );
    virtual ~VertexAnimationAnimNode();

    static const float              mkEpsilon;

    void                            Clear( void );

protected:

    virtual void                    SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void                    FillNode(int frame);
    virtual void                    OptimizeNode(void);
    virtual tlFrameController*      FinalizeNode(void);

    virtual void                    CleanUp( void );

    tlPrimGroupMesh*                mpgmesh;
    tlInventory*                    mpInventory;

private:

    tlVertexAnim*                   mAnimation;

    void                            SetupPosition( void );
    void                            SetupNormal( void );
    void                            SetupColour( void );
    void                            SetupUV( void );

    void                            FillPosition(int frame);
    void                            FillNormal(int frame);
    void                            FillColour(int frame);
    void                            FillUV(int frame);

    int                             OptimizePosition(void);
    int                             OptimizeNormal(void);
    int                             OptimizeColour(void);
    int                             OptimizeUV(void);

    // Need to store base/neutral Position, Colour, Normal, and UV
    int                             mNumPositions;
    tlPoint*                        mpInitialPosition;

    int                             mNumNormals;
    tlPoint*                        mpInitialNormal;

    int                             mNumColours;
    tlColour*                       mpInitialColour;

    int                             mNumUVs[NUM_ANIMATED_UVSETS];
    tlUV*                           mpInitialUV[NUM_ANIMATED_UVSETS];
    MStringArray                    mUVSetNames;

    // Storage for per-frame data
    int                             mNumFrames;

    tlVectorChannel*                mpPositionChannel;
    tlVectorChannel*                mpNormalChannel;
    tlColourChannel*                mpColourChannel;
    tlFloat2Channel*                mpUvChannel[NUM_ANIMATED_UVSETS];
};

#endif // __VERTEXANIMATIONANIMNODE_H  

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     07 May, 2002
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
#ifndef __SHADERANIMNODE_HPP_
#define __SHADERANIMNODE_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include "animNode.hpp"
#include "inventoryEntity.hpp"

//===========================================================================
// Forward References
//===========================================================================

class tlShaderAnim;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Inlines
//===========================================================================

//**************************************************************
// Class DeformerExpressionAnimNode
//**************************************************************
class ShaderAnimNode : public AnimNode
{
public:

    ShaderAnimNode( const MString& shaderName, tlInventory* pInventory );
    virtual ~ShaderAnimNode();

    void                                        GetShaderName( MString& shaderName ) const;

protected:

    virtual void                                SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void                                FillNode(int frame);
    virtual void                                OptimizeNode(void);
    virtual tlFrameController*                  FinalizeNode(void);

    virtual void                                CleanUp( void );

    tlInventory*                                mpInventory;

private:
    InventoryEntity<tlShaderAnim*>*             mAnimation;
    MString                                     mShaderName;

    MStatus                                     ExtractAttribute( MPlug& exportPlug, int frame );
};

#endif // __VERTEXANIMATIONANIMNODE_H  

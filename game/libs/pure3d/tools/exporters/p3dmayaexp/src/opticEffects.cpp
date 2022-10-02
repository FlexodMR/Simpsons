/*===========================================================================
    opticEffects.cpp
    created: Nov 17, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MGlobal.h>
#include <maya/MObject.h>
#include <maya/MAnimControl.h>
#include <maya/MDistance.h>
#include <maya/MPlugArray.h>
#include <maya/MPlug.h>

#include <string.h>
#include <iostream.h>
#include "tlOpticEffect.hpp"
#include "tlShader.hpp"
#include "tlFrameController.hpp"
#include "tlString.hpp"
#include "tlInventory.hpp"
#include "opticEffects.hpp"
#include "scene.hpp"
#include "materialprocess.hpp"
#include "exporterutility.hpp"
#include "mayanodes.hpp"
#include "plugValue.hpp"
#include "animnode.hpp"

//------------------------------------------------------------------------------------------
tlLensFlareGroup* LensFlareProcess::ExportLensFlareGroup(SceneNode* node, tlInventory* tlInv)
{   
    if (node->IsFileReference() || ExporterOptions::ExportAnimReferencesOnly())
    {
        return NULL;
    }

    char* groupName = ExporterOptions::BuildNodeName(node->Name());

    tlLensFlareGroup* group = new tlLensFlareGroup;
    group->SetName(groupName);
  
    float sourceRadius;
    float edgeRadius;
    bool  zTest;
    bool  zWrite;
    bool  fog;
    float displaySize;

    PlugValue( node->MayaObject(), "sourceRadius",sourceRadius);
    PlugValue( node->MayaObject(), "edgeRadius",edgeRadius);
    PlugValue( node->MayaObject(), "enableZTest", zTest);
    PlugValue( node->MayaObject(), "enableZWrite", zWrite);
    PlugValue( node->MayaObject(), "enableFog", fog);    
    PlugValue( node->MayaObject(), "displaySize",displaySize);

    float unitScaleFactor = displaySize/SceneNode::InternalScale();

    // get material
    char* material=NULL;
    MObject shadingNode;
    MaterialProcess matProcess;
    if (matProcess.FindShadingNode(node->MayaObject(),shadingNode))
    {
        MString matName = matProcess.StoreShader(shadingNode,node->MayaPath(), tlInv);
        material=strnew(matName.asChar());
    }
    else
    {
        material=strnew("lensFlare_default_material");       
        GenerateMaterial(tlInv, material);
    }

    group->SetSourceRadius(sourceRadius*unitScaleFactor);
    group->SetEdgeRadius(edgeRadius*unitScaleFactor);
    group->SetZTest(zTest);
    group->SetZWrite(zWrite);
    group->SetFog(fog);
    group->SetShaderName(material);
  
/*
    LensFlareGroupAnimNode* animNode = NULL;

    if ((ExporterOptions::ExportAnimations()))
    {
        animNode = new LensFlareGroupAnimNode(node);
        AnimNode::AddNode(animNode);
        node->SetAnimationNode(animNode);
    }
*/

    if (node->MayaTypeId()==P3D_LENS_FLARE_ID)
    {
        ExportLensFlare(node,tlInv,group);
    }
    else if (node->MayaTypeId()==P3D_LENS_FLARE_GROUP_ID)
    {
        SceneNode* parent = node->Parent();
        for (int i = 0; i < parent->ChildCount(); i++)
        {
            SceneNode* child = parent->Child(i);
            for (int j = 0; j < child->ChildCount(); j++)
            {
                if (child->Child(j)->MayaTypeId()==P3D_LENS_FLARE_ID)
                {
                    child->SetTraversalStop(true);
                    ExportLensFlare(child->Child(j),tlInv,group);
/*
                    if (animNode)
                    {
                        animNode->AddLensFlareAnim(child->Child(j));
                    }
*/
                }
            }
        }
    }
   
    if (group->GetNumLensFlares()>0)
    {
        tlInv->Store(group);
    }
    else
    {
        delete group;
        group = NULL;
    }

    strdelete(groupName);
    node->SetProcessed(true);
    return group;
}

//------------------------------------------------------------------------------------------
tlLensFlare* LensFlareProcess::ExportLensFlare(SceneNode* node, tlInventory* tlInv, tlLensFlareGroup* group)
{    
    if (node->IsFileReference() || ExporterOptions::ExportAnimReferencesOnly())
    {
        return NULL;
    }

    char* lensFlareName = ExporterOptions::BuildNodeName(node->Name());
    
    float distance;
    float red, green, blue, alpha;
    float uv[4][2];
    float uvOffset[2];
    bool  interpolateUVs;
    bool  interpolateUVOffsets;
    float displaySize;

    MMatrix inclusiveMatrix = node->Parent()->MayaPath().inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kWorld);    
    
    PlugValue( node->MayaObject(), "distance", distance);
    PlugValue( node->MayaObject(), "red", red);
    PlugValue( node->MayaObject(), "green", green);
    PlugValue( node->MayaObject(), "blue", blue);
    PlugValue( node->MayaObject(), "alpha", alpha);
    PlugValue( node->MayaObject(), "uv00",uv[0][0]);
    PlugValue( node->MayaObject(), "uv01",uv[0][1]);
    PlugValue( node->MayaObject(), "uv10",uv[1][0]);
    PlugValue( node->MayaObject(), "uv11",uv[1][1]);
    PlugValue( node->MayaObject(), "uv20",uv[2][0]);
    PlugValue( node->MayaObject(), "uv21",uv[2][1]);
    PlugValue( node->MayaObject(), "uv30",uv[3][0]);
    PlugValue( node->MayaObject(), "uv31",uv[3][1]);
    PlugValue( node->MayaObject(), "uvOffset0", uvOffset[0]);
    PlugValue( node->MayaObject(), "uvOffset1", uvOffset[1]);
    PlugValue( node->MayaObject(), "interpolateUVs", interpolateUVs);
    PlugValue( node->MayaObject(), "interpolateUVOffsets", interpolateUVOffsets);
    PlugValue( node->MayaObject(), "displaySize",displaySize);
   
    float unitScaleFactor = displaySize/SceneNode::InternalScale();

    tlLensFlare* lensFlare = NULL;

    if (group)
    {
        lensFlare = group->AddLensFlare(lensFlareName);
    }
    else
    {
        lensFlare = new tlLensFlare;
        lensFlare->SetName(lensFlareName);
    }

    lensFlare->SetDistance(distance*unitScaleFactor);
    lensFlare->SetWidth(fabsf(scale[0])*unitScaleFactor);
    lensFlare->SetHeight(fabsf(scale[1])*unitScaleFactor);
    lensFlare->SetColour(red,green,blue,alpha);
    lensFlare->SetUV(0,uv[0][0],uv[0][1]);
    lensFlare->SetUV(1,uv[1][0],uv[1][1]);
    lensFlare->SetUV(2,uv[2][0],uv[2][1]);
    lensFlare->SetUV(3,uv[3][0],uv[3][1]);
    lensFlare->SetUVOffset(uvOffset[0],uvOffset[1]);
  
/*
    if (ExporterOptions::ExportAnimations())
    {
        BillboardQuadGroupAnimNode* animNode = new BillboardQuadGroupAnimNode(node);
        animNode->AddQuadAnim(node);
        AnimNode::AddNode(animNode);
        node->SetAnimationNode(animNode);         
    }
*/
    
    strdelete(lensFlareName);
    node->SetProcessed(true);
    return lensFlare;
}


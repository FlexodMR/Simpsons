/*===========================================================================
    billboardObject.cpp
    created: Nov 17, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MGlobal.h>
#include <maya/MObject.h>
#include <maya/MDagPath.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>
#include <maya/MAnimControl.h>
#include <maya/MDistance.h>
#include <maya/MPlugArray.h>
#include <maya/MPlug.h>

#include <string.h>
#include <iostream.h>
#include "tlBillboardObject.hpp"
#include "tlShader.hpp"
#include "tlString.hpp"

#include "billboardObject.hpp"
#include "scene.hpp"
#include "animnode.hpp"
#include "materialprocess.hpp"
#include "exporterutility.hpp"
#include "exporteroptions.hpp"
#include "mayanodes.hpp"
#include "plugValue.hpp"

enum {
    ALL_AXIS = 0,
    WORLD_X_AXIS = 1,
    WORLD_Y_AXIS = 2,
    NO_AXIS = 4,
    LOCAL_X_AXIS = 5,
    LOCAL_Y_AXIS = 6
};

enum {
    NONE,
    SINGLE_SIDED,
    DOUBLE_SIDED,
    CAMERA
};

//------------------------------------------------------------------------------------------
tlBillboardQuadGroup* BillboardObjectProcess::ExportQuad(SceneNode* node, tlInventory* tlInv, tlBillboardQuadGroup* group)
{
    char* quadName = ExporterOptions::BuildNodeName(node->Name());

    float displaySize;
    int   billboardMode;
    float red, green, blue, alpha;
    float uv[4][2];
    float uvOffset[2];
    int   cutOffMode;
    float uvOffsetRange[2];
    float sourceRange;
    float edgeRange;
    float distance;
    bool  perspective;

    MMatrix inclusiveMatrix = node->Parent()->MayaPath().inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);
    double scale[3];
    transform.getScale(scale, MSpace::kWorld);

    PlugValue( node->MayaObject(), "displaySize",displaySize);
    PlugValue( node->MayaObject(), "billboardMode", billboardMode);
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
    PlugValue( node->MayaObject(), "cutOffMode", cutOffMode);
    PlugValue( node->MayaObject(), "uvOffsetAngleRange0", uvOffsetRange[0]);
    PlugValue( node->MayaObject(), "uvOffsetAngleRange1", uvOffsetRange[1]);
    PlugValue( node->MayaObject(), "sourceAngleRange", sourceRange);
    PlugValue( node->MayaObject(), "edgeAngleRange", edgeRange);
    PlugValue( node->MayaObject(), "distance", distance);
    PlugValue( node->MayaObject(), "enablePerspectiveScale", perspective);

    tlMatrix hmatrix;
    node->Parent()->Matrix(hmatrix);

    float unitScaleFactor = displaySize/SceneNode::InternalScale();

    tlBillboardQuad toollibQuad;
    toollibQuad.SetName(quadName);
    toollibQuad.SetPerspectiveScale(perspective);
    switch (billboardMode)
    {
        case ALL_AXIS:  // All Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::ALL_AXIS);
            break;
        }
        case WORLD_X_AXIS:  // world x Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::X_AXIS);
            break;
        }
        case WORLD_Y_AXIS:  // world y Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::Y_AXIS);
            break;
        }
        case NO_AXIS:  // z Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::NO_AXIS);
            break;
        }
        case LOCAL_X_AXIS:  // local x Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::LOCAL_X_AXIS);
            break;
        }
        case LOCAL_Y_AXIS:  // local y Axis
        {
            toollibQuad.SetBillboardMode(p3dBillboardConstants::BillboardMode::LOCAL_Y_AXIS);
            break;
        }
    }
    toollibQuad.SetColour(red,green,blue,alpha);
    for (int i = 0; i < 4; i++)
    {
        toollibQuad.SetUV(i,uv[i][0],uv[i][1]);
    }
    toollibQuad.SetUVOffset(uvOffset[0],uvOffset[1]);
    switch (cutOffMode)
    {
        case NONE:
        {
            toollibQuad.SetCutOffMode(p3dBillboardConstants::CutOffMode::NONE);
            toollibQuad.SetUVOffsetRange(0.0f,0.0f);
            toollibQuad.SetSourceRange(0.0f);
            toollibQuad.SetEdgeRange(0.0f);
            break;
        }
        case SINGLE_SIDED:
        {
            toollibQuad.SetCutOffMode(p3dBillboardConstants::CutOffMode::SINGLE_SIDED);
            toollibQuad.SetUVOffsetRange(DegToRadian(uvOffsetRange[0]),DegToRadian(uvOffsetRange[1]));
            toollibQuad.SetSourceRange(DegToRadian(sourceRange));
            toollibQuad.SetEdgeRange(DegToRadian(edgeRange));
            break;
        }
        case DOUBLE_SIDED:
        {
            toollibQuad.SetCutOffMode(p3dBillboardConstants::CutOffMode::DOUBLE_SIDED);
            toollibQuad.SetUVOffsetRange(DegToRadian(uvOffsetRange[0]),DegToRadian(uvOffsetRange[1]));
            toollibQuad.SetSourceRange(DegToRadian(sourceRange));
            toollibQuad.SetEdgeRange(DegToRadian(edgeRange));
            break;
        }
        case CAMERA:
        {
            toollibQuad.SetCutOffMode(p3dBillboardConstants::CutOffMode::CAMERA);
            toollibQuad.SetUVOffsetRange(DegToRadian(uvOffsetRange[0]),DegToRadian(uvOffsetRange[1]));
            toollibQuad.SetSourceRange(DegToRadian(sourceRange));
            toollibQuad.SetEdgeRange(DegToRadian(edgeRange));
            break;
        }
    }
    toollibQuad.SetWidth(fabsf(scale[0])*unitScaleFactor);
    toollibQuad.SetHeight(fabsf(scale[1])*unitScaleFactor);
    toollibQuad.SetDistance(distance*unitScaleFactor);

    if(!group)
    {
        bool zTest, zWrite, fog;
        PlugValue( node->MayaObject(), "enableZTest", zTest);
        PlugValue( node->MayaObject(), "enableZWrite", zWrite);
        PlugValue( node->MayaObject(), "enableFog", fog);

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
            material=strnew("billboard_default_material");
            GenerateMaterial(tlInv, material);
        }

        group = new tlBillboardQuadGroup;
        group->SetName(quadName);
        group->SetShaderName(material);
        group->SetZTest(zTest);
        group->SetZWrite(zWrite);
        group->SetFog(fog);

        if ( tlInv->Store(group) == 0 )
        {
            if (ExporterOptions::ExportAnimations())
            {
                BillboardQuadGroupAnimNode* animNode = new BillboardQuadGroupAnimNode(node);
                animNode->AddQuadAnim(node);
                animNode->SetIsCyclic( node->Parent()->IsCyclic() );
                AnimNode::AddNode(animNode);
//                node->SetAnimationNode(animNode);
            }
        }
        else
        {
            delete group;
            group = NULL;
        }
    }
    else
    {
        toollibQuad.SetRotation(MatrixToQuaternion(hmatrix));
        toollibQuad.SetTranslation(hmatrix.GetRow(3) * SceneNode::UIScale());
    }

    if ( group != NULL )
    {
        group->AddQuad(toollibQuad);
    }

    strdelete(quadName);
    node->SetProcessed(true);

    return group;
}

//------------------------------------------------------------------------------------------
tlBillboardQuadGroup* BillboardObjectProcess::ExportQuadGroup(SceneNode* node, tlInventory* tlInv)
{
    bool bAddedToInventory = false;

    char* quadGroupName = ExporterOptions::BuildNodeName(node->Name());

    tlBillboardQuadGroup* toollibQuadGroup = new tlBillboardQuadGroup;
    toollibQuadGroup->SetName(quadGroupName);

    bool zTest, zWrite, fog;

    PlugValue( node->MayaObject(), "enableZTest", zTest);
    PlugValue( node->MayaObject(), "enableZWrite", zWrite);
    PlugValue( node->MayaObject(), "enableFog", fog);

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
        material=strnew("billboard_default_material");
        GenerateMaterial(tlInv, material);
    }

    toollibQuadGroup->SetZTest(zTest);
    toollibQuadGroup->SetZWrite(zWrite);
    toollibQuadGroup->SetFog(fog);
    toollibQuadGroup->SetShaderName(material);

    BillboardQuadGroupAnimNode* animNode = NULL;

    if ((ExporterOptions::ExportAnimations()))
    {
        animNode = new BillboardQuadGroupAnimNode(node);
        animNode->SetIsCyclic( node->Parent()->IsCyclic() );
        AnimNode::AddNode(animNode);
//        node->SetAnimationNode(animNode);
    }

    SceneNode* parent = node->Parent();
    for (int i = 0; i < parent->ChildCount(); i++)
    {
        SceneNode* child = parent->Child(i);
        for (int j = 0; j < child->ChildCount(); j++)
        {
            if (child->Child(j)->MayaTypeId()==P3D_BILLBOARD_QUAD_ID)
            {
                child->SetTraversalStop(true);
                ExportQuad(child->Child(j),tlInv,toollibQuadGroup);
                if (animNode)
                {
                    animNode->AddQuadAnim(child->Child(j));
                }
            }
        }
    }

    if ((toollibQuadGroup->GetNumQuads()>0)&&(!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly()))
    {
        if ( tlInv->Store(toollibQuadGroup) == 0 ) bAddedToInventory = true;
    }

    if ( !bAddedToInventory )
    {
        delete toollibQuadGroup;
        toollibQuadGroup = NULL;
    }

    strdelete(quadGroupName);
    node->SetProcessed(true);

    return toollibQuadGroup;
}



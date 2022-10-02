//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlFrameController.hpp"
#include "tlFrameControllerChunk.hpp"
#include "tlFrameControllerChunk16.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"
#include "tlDataChunk.hpp"

#include "tlAnimation.hpp"
#include "tlShader.hpp"
#include "tlCamera.hpp"
#include "tlLight.hpp"
#include "tlExpression.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlScenegraph.hpp"
#include "tlBillboardObject.hpp"
#include "tlParticleSystem.hpp"
#include "tlOpticEffect.hpp"

static const unsigned FRAME_CONTROLLER_VERSION = 0;

enum oldFrameControllerTypes
{ 
    P3D_FC_UNDEFINED, 
    P3D_FC_CAMERA, 
    P3D_FC_EXPRESSION, 
    P3D_FC_LIGHT, 
    P3D_FC_POLYSKIN, 
    P3D_FC_COMPOUNDMESH,
    P3D_FC_SCENEGRAPHVISIBILITY, 
    P3D_FC_DEFORMPOLYSKIN, 
    P3D_FC_TEXTURE, 
    P3D_FC_SCENEGRAPHTRANSFORM,
    P3D_FC_HSPLINEOFFSETABSOLUTE,
    P3D_FC_HSPLINEOFFSETRELATIVE,
    P3D_FC_HSPLINESKIN,
    P3D_FC_EFFECT,
    P3D_FC_COMPOSITEDRAWABLE,
    P3D_FC_COMPOSITEDRAWABLEVISIBILITY,
};

//*****************************************************************************
// tlFrameController
//*****************************************************************************
tlFrameController::tlFrameController(void) :
    mType(Pure3DAnimationTypes::UNDEFINED), 
    mFrameOffset(0.0f),
    mHierarchyName(NULL),
    mAnimationName(NULL),
    mHierarchyPtr(NULL),
    mAnimationPtr(NULL)
{
}

tlFrameController::tlFrameController(const tlFrameController& fc) :
    mType(Pure3DAnimationTypes::UNDEFINED), 
    mFrameOffset(0.0f),
    mHierarchyName(NULL),
    mAnimationName(NULL),
    mHierarchyPtr(NULL),
    mAnimationPtr(NULL)
{
    *this = fc;
}

tlFrameController::tlFrameController(tlDataChunk *ch) :
    mType(Pure3DAnimationTypes::UNDEFINED), 
    mFrameOffset(0.0f),
    mHierarchyName(NULL),
    mAnimationName(NULL),
    mHierarchyPtr(NULL),
    mAnimationPtr(NULL)
{
    switch(ch->ID())
    {
        case P3D_FRAME_CONTROLLER:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
        {
            LoadFromChunk(ch);
            break;
        }
        default:
            break;
    }
}

tlFrameController::~tlFrameController()
{
    if (mHierarchyName != NULL) 
    {
        strdelete(mHierarchyName);
    }
    if (mAnimationName != NULL)
    {
        strdelete(mAnimationName);
    }
}

void 
tlFrameController::LoadFromChunk(tlDataChunk* ch)
{
    tlFrameControllerChunk *fc = dynamic_cast<tlFrameControllerChunk *>(ch);
    assert(fc);
    assert((int)fc->GetVersion() == FRAME_CONTROLLER_VERSION);

    SetName(fc->Name());
    SetType(fc->Type());
    SetFrameOffset(fc->FrameOffset());
    SetHierarchyName(fc->HierarchyName());
    SetAnimationName(fc->AnimationName());
}

tlDataChunk*
tlFrameController::Chunk(void)
{
    tlFrameControllerChunk *ch = new tlFrameControllerChunk;

    ch->SetVersion(FRAME_CONTROLLER_VERSION);
    ch->SetName(GetName());
    ch->SetType(Type());
    ch->SetFrameOffset(FrameOffset());
    ch->SetHierarchyName(mHierarchyName);
    ch->SetAnimationName(mAnimationName);
    return ch;
}

void 
tlFrameController::LoadFromChunk16(tlDataChunk* ch)
{
    // make sure that this is a good chunk
    tlFrameControllerChunk16 *fc = dynamic_cast<tlFrameControllerChunk16 *>(ch);
    assert(fc);

    SetName(fc->Name());

    switch (fc->Type())
    {
        case P3D_FC_CAMERA: 
        {
            SetType(Pure3DAnimationTypes::CAMERA_CAM);
            break;
        }
        case P3D_FC_EXPRESSION: 
        {
            SetType(Pure3DAnimationTypes::EXPRESSION_EXP);
            break;
        }
        case P3D_FC_LIGHT: 
        {
            SetType(Pure3DAnimationTypes::LIGHT_LITE);
            break;
        }
        case P3D_FC_POLYSKIN: 
        case P3D_FC_COMPOUNDMESH:
        case P3D_FC_COMPOSITEDRAWABLE:
        {
            SetType(Pure3DAnimationTypes::POSE_TRANSFORM_PTRN);
            break;
        }       
        case P3D_FC_COMPOSITEDRAWABLEVISIBILITY:
        {
            SetType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
            break;
        }       
        case P3D_FC_SCENEGRAPHTRANSFORM:
        {
            SetType(Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN);
            break;
        }       
        case P3D_FC_SCENEGRAPHVISIBILITY: 
        {
            SetType(Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS);
            break;
        }
        case P3D_FC_TEXTURE: 
        {
            SetType(Pure3DAnimationTypes::TEXTURE_TEX);
            break;
        } 
        case P3D_FC_EFFECT:
        {
            SetType(Pure3DAnimationTypes::EFFECT_EFX);
            break;
        }
        default:
        {
            SetType(Pure3DAnimationTypes::UNDEFINED);
            break;
        }       
    }

    SetHierarchyName(fc->HierarchyName());
    SetAnimationName(fc->AnimationName());
}

void 
tlFrameController::SetHierarchyName(const char* new_hier)
{
    if (mHierarchyName != NULL) strdelete(mHierarchyName);
    mHierarchyName = strnew(new_hier);
}

void 
tlFrameController::SetAnimationName(const char* new_anim)
{
    if (mAnimationName != NULL) strdelete(mAnimationName);
    mAnimationName = strnew(new_anim);
}

void
tlFrameController::AppendAnimTypePrefix()
{
    int nameLen = strlen(mAnimationName);
    int typeLen = strlen(mType.AsChar());

    if (typeLen == 0)
    {
        return;
    }
    else if (nameLen > typeLen)
    {        
        if (strstr(mAnimationName,mType.AsChar())==mAnimationName)
        {
            return;
        }
    }    

    char newName[1024];

    sprintf(newName,"%s_%s",mType.AsChar(),mAnimationName);
    SetAnimationName(newName);
}

void
tlFrameController::AppendAnimTypeSuffix()
{
    int nameLen = strlen(mAnimationName);
    int typeLen = strlen(mType.AsChar());

    if (typeLen == 0)
    {
        return;
    }
    else if (nameLen > typeLen)
    {
        if (strcmp(&(mAnimationName[nameLen-typeLen]),mType.AsChar())==0)
        {
            return;
        }
    }    

    char newName[1024];

    sprintf(newName,"%s_%s",mAnimationName,mType.AsChar());
    SetAnimationName(newName);
}

void 
tlFrameController::ResolveReferences(tlInventory* inv)
{
    switch (mType)
    {
        case Pure3DAnimationTypes::TEXTURE_TEX:
        {
            mHierarchyPtr = toollib_find<tlShader>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::CAMERA_CAM:
        {
            mHierarchyPtr = toollib_find<tlCamera>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::LIGHT_LITE:
        {
            mHierarchyPtr = toollib_find<tlLight>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::EXPRESSION_EXP:
        {
            mHierarchyPtr = toollib_find<tlExpressionMixer>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::POSE_TRANSFORM_PTRN:
        {
            mHierarchyPtr = toollib_find<tlCompositeDrawable>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::POSE_VISIBILITY_PVIS:
        {
            mHierarchyPtr = toollib_find<tlCompositeDrawable>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN:
        {
            mHierarchyPtr = toollib_find<tlScenegraph>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS:
        {
            mHierarchyPtr = toollib_find<tlScenegraph>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG:
        {
            mHierarchyPtr = toollib_find<tlBillboardQuadGroup>(inv,mHierarchyName);
            break;
        }
        case Pure3DAnimationTypes::SHADER_SHAD:
        {
            mHierarchyPtr = toollib_find<tlShader>(inv,mHierarchyName);
            break;
        }

    // ----------------  Vertex Animation - 17 Jun 2002  ----------------
        case Pure3DAnimationTypes::VERTEX_VRTX:
        {
            // Start first by looking for Composite Drawable...
            // This will be used by tlCompositeDrawable::ConvertToAnimatedObjectFactory()
            // when it's looking for tlFrameControllers to add to the 
            // tlAnimatedObjectFactory chunk.
            mHierarchyPtr = toollib_find<tlCompositeDrawable>(inv,mHierarchyName);

            if ( mHierarchyPtr == NULL )
            {
                // If no tlCompositeDrawable is found, revert to supplying a
                // tlPrimGroupMesh (if possible).
                // I haven't been able to test this fallback to see if it
                // actually works.  What I do know is that if you supply a
                // tlPrimGroupMesh in place of a tlCompositeDrawable then
                // p3dview provides no vertex animation (but it does not crash).
                mHierarchyPtr = toollib_find<tlPrimGroupMesh>(inv,mHierarchyName);
            }

            // If the run-time crashes here (or because of here) please let 
            // Bryan Ewert know.

            break;
        }
        case Pure3DAnimationTypes::EFFECT_EFX:
        {
            mHierarchyPtr = toollib_find<tlParticleSystem>(inv,mHierarchyName);
            break;
        }
        default:
        {
            mHierarchyPtr = NULL;
            break;
        }
    }
    mAnimationPtr = toollib_find<tlAnimation>(inv, mAnimationName);
}

void
tlFrameController::MarkReferences(int m)
{
    if(mHierarchyPtr)
    {
        mHierarchyPtr->Mark(m);
        mHierarchyPtr->MarkReferences(m);
    }
    if(mAnimationPtr)
    {
        mAnimationPtr->Mark(m);
        mAnimationPtr->MarkReferences(m);
    }
}

bool 
tlFrameController::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(mAnimationPtr && mAnimationPtr->FindReferenceMark(m))
    {
        return true;
    }
    if(mHierarchyPtr && mHierarchyPtr->FindReferenceMark(m))
    {
        return true;
    }
    return false;
}

tlFrameController& 
tlFrameController::operator=(const tlFrameController& fc)
{
    SetType(fc.Type());
    SetName(fc.GetName());
    SetFrameOffset(fc.FrameOffset());
    SetHierarchyName(fc.HierarchyName());
    SetAnimationName(fc.AnimationName());
    mAnimationPtr = fc.mAnimationPtr;
    mHierarchyPtr = fc.mHierarchyPtr;

    return *this;
}

//*****************************************************************************
// tlFrameControllerLoader
//*****************************************************************************
tlFrameControllerLoader::tlFrameControllerLoader() :
    tlEntityLoader(0)
{
}

bool
tlFrameControllerLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case P3D_FRAME_CONTROLLER:
        case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }    
}

tlEntity* 
tlFrameControllerLoader::Load(tlDataChunk* chunk)
{
    if (CheckChunkID(chunk->ID()))
    {
        tlFrameController* controller = new tlFrameController(chunk);

        if(tlAnimationLoader::GetAutoAppendAnimTypePrefix())
        {
            controller->AppendAnimTypePrefix();
        }
        if(tlAnimationLoader::GetAutoAppendAnimTypeSuffix())
        {
            controller->AppendAnimTypeSuffix();
        }
        return controller;
    }
    return NULL;
}


/*===========================================================================
    tlCompositeDrawable.cpp
    created Nov 29, 2000
    Liberty Walker

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "tlCompositeDrawable.hpp"
#include "tlString.hpp"
#include "tlCompositeDrawableChunk16.hpp"
#include "tlSkeleton.hpp"
#include "tlInventory.hpp"
#include "tlDataChunk.hpp"
#include "tlSkin.hpp"
#include "tlAnimation.hpp"
#include "tlAnimatedObject.hpp"
#include "tlFrameController.hpp"
#include "tlMultiController.hpp"
#include "tlScenegraph.hpp"
#include <stdio.h>
#include <string.h>

//*****************************************************************************
// SubChunk of the CompositeDrawable containing a name referance to a drawable
//*****************************************************************************
tlCompositeDrawableItem::tlCompositeDrawableItem()
:   isTranslucent(false),
    sortOrder( 0.5f )
{
}
tlCompositeDrawableItem::~tlCompositeDrawableItem()
{
}

//*****************************************************************************
// SubChunk of the CompositeDrawable containing a referance to a tlskin
//*****************************************************************************
tlCompositeDrawableSkin::tlCompositeDrawableSkin(): skinPtr(NULL)
{
}
tlCompositeDrawableSkin::tlCompositeDrawableSkin(tlDataChunk* ch)
{
    LoadFromChunk16(ch);
}
tlCompositeDrawableSkin::~tlCompositeDrawableSkin()
{
}

void tlCompositeDrawableSkin::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_COMPOSITE_DRAWABLE_SKIN);
    tlCompositeDrawableSkinChunk16* cschunk = dynamic_cast<tlCompositeDrawableSkinChunk16*>(ch);
    assert(cschunk);    
    SetName(cschunk->GetName());
    SetTranslucency((cschunk->GetIsTranslucent() == 0)?false:true);

    for(unsigned i = 0; i < (unsigned)cschunk->SubChunkCount(); i++)
    {
        tlCompositeDrawableSortOrderChunk16* so = dynamic_cast<tlCompositeDrawableSortOrderChunk16*>(cschunk->GetSubChunk(i));
        if(so)
        {
            SetSortOrder(so->GetSortOrder());
        }
    }

}

tlDataChunk* tlCompositeDrawableSkin::Chunk16()
{
    tlCompositeDrawableSkinChunk16* chunk = new tlCompositeDrawableSkinChunk16;
    chunk->SetName(this->GetName());
    chunk->SetIsTranslucent(this->GetTranslucency()?1:0);
    
    tlCompositeDrawableSortOrderChunk16* so =  new tlCompositeDrawableSortOrderChunk16;
    so->SetSortOrder(sortOrder);
    chunk->AppendSubChunk(so);

    return(chunk);
}

void tlCompositeDrawableSkin::ResolveReferences(tlInventory* inv)
{
    skinPtr = toollib_find<tlSkin>(inv, GetName());
}

void tlCompositeDrawableSkin::MarkReferences(int m)
{
    if(skinPtr)
    {
        skinPtr->Mark(m);
        skinPtr->MarkReferences(m);
    }
}

bool tlCompositeDrawableSkin::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if((skinPtr)&&(skinPtr->FindReferenceMark(m)))
    {
        return true;
    }
    return false;
}

//*****************************************************************************
// SubChunk of the CompositeDrawable containing a referance to a drawable
//*****************************************************************************
tlCompositeDrawableProp::tlCompositeDrawableProp():
skeletonJointID(0),
arrayIndex(0),
baseSortPriority(0),
endOffsetPriority(0),
propPtr(NULL)
{
}

tlCompositeDrawableProp::tlCompositeDrawableProp(tlDataChunk* ch):
skeletonJointID(0),
arrayIndex(0),
baseSortPriority(0),
endOffsetPriority(0),
propPtr(NULL)
{
    LoadFromChunk16(ch);
}
tlCompositeDrawableProp::~tlCompositeDrawableProp()
{
}

void tlCompositeDrawableProp::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_COMPOSITE_DRAWABLE_PROP);
    
    tlCompositeDrawablePropChunk16* cschunk = dynamic_cast<tlCompositeDrawablePropChunk16*>(ch);

    assert(cschunk);
     
    SetName(cschunk->GetName());

    SetSkeletonJointID(cschunk->GetSkeletonJointID());
    SetTranslucency((cschunk->GetIsTranslucent() == 0)?false:true);

    for(unsigned i = 0; i < (unsigned)cschunk->SubChunkCount(); i++)
    {
        tlCompositeDrawableSortOrderChunk16* so = dynamic_cast<tlCompositeDrawableSortOrderChunk16*>(cschunk->GetSubChunk(i));
        if(so)
        {
            SetSortOrder(so->GetSortOrder());
        }
    }

}

tlDataChunk* tlCompositeDrawableProp::Chunk16()
{
    tlCompositeDrawablePropChunk16* chunk = new tlCompositeDrawablePropChunk16;

    //chunk->SetName(this->GetDrawableName());
    chunk->SetName(this->GetName());
    chunk->SetSkeletonJointID(skeletonJointID);
    chunk->SetIsTranslucent(GetTranslucency());

    tlCompositeDrawableSortOrderChunk16* so =  new tlCompositeDrawableSortOrderChunk16;
    so->SetSortOrder(sortOrder);
    chunk->AppendSubChunk(so);

    return(chunk);
}

void tlCompositeDrawableProp::ResolveReferences(tlInventory* inv)
{
    propPtr = toollib_find<tlEntity>(inv, GetName());
}

void tlCompositeDrawableProp::MarkReferences(int m)
{
    if(propPtr)
    {
        propPtr->Mark(m);
        propPtr->MarkReferences(m);
    }
}

bool tlCompositeDrawableProp::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if((propPtr)&&(propPtr->FindReferenceMark(m)))
    {
        return true;
    }
    return false;
}

int tlCompositeDrawableProp::CompareSort( const void *prop1, const void *prop2 )
{
    tlCompositeDrawableProp* pr1 = *(tlCompositeDrawableProp**)(prop1);
    tlCompositeDrawableProp* pr2 = *(tlCompositeDrawableProp**)(prop2);

    if(pr1 && pr2)
    {
        //
        // Sort with the biggest last
        //
        int diff = pr1->SortPriority() - pr2->SortPriority();
        
        return(diff);
    }
    else
    {
        return(0);
    } 
} 
//*****************************************************************************
//  tlCompositeDrawableEffect
//*****************************************************************************

tlCompositeDrawableEffect::tlCompositeDrawableEffect() : tlCompositeDrawableProp()
{}

tlCompositeDrawableEffect::~tlCompositeDrawableEffect()
{}

tlDataChunk* tlCompositeDrawableEffect::Chunk16()
{
    tlCompositeDrawableEffectChunk16* chunk = new tlCompositeDrawableEffectChunk16;

    chunk->SetName(this->GetName());
    chunk->SetSkeletonJointID(skeletonJointID);
    chunk->SetIsTranslucent(GetTranslucency());

    tlCompositeDrawableSortOrderChunk16* so =  new tlCompositeDrawableSortOrderChunk16;
    so->SetSortOrder(sortOrder);
    chunk->AppendSubChunk(so);

    return(chunk);
}

void tlCompositeDrawableEffect::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_COMPOSITE_DRAWABLE_EFFECT);
    
    tlCompositeDrawableEffectChunk16* cschunk = dynamic_cast<tlCompositeDrawableEffectChunk16*>(ch);

    assert(cschunk);
     
    SetName(cschunk->GetName());

    SetSkeletonJointID(cschunk->GetSkeletonJointID());
    SetTranslucency((cschunk->GetIsTranslucent() == 0)?false:true);

    for(unsigned i = 0; i < (unsigned)cschunk->SubChunkCount(); i++)
    {
        tlCompositeDrawableSortOrderChunk16* so = dynamic_cast<tlCompositeDrawableSortOrderChunk16*>(cschunk->GetSubChunk(i));
        if(so)
        {
            SetSortOrder(so->GetSortOrder());
        }
    }

}

//*****************************************************************************
// tlCompositeDrawable
//*****************************************************************************
tlCompositeDrawable::tlCompositeDrawable() 
:
skeletonName(NULL)
{

}

tlCompositeDrawable::tlCompositeDrawable(tlDataChunk* ch)
: 
skeletonName(NULL)
{
    LoadFromChunk16(ch);
}

tlCompositeDrawable::tlCompositeDrawable(tlCompositeDrawable* sourceCompDrawable)
: 
skeletonName(NULL)
{
    LoadFromChunk16(sourceCompDrawable->Chunk16());
}

tlCompositeDrawable::~tlCompositeDrawable()
{
    subSkins.Delete(0, subSkins.Count());
    props.Delete(0, props.Count());
    effects.Delete(0, effects.Count());

    strdelete(skeletonName);
}

tlAnimatedObjectFactory* tlCompositeDrawable::ConvertToAnimatedObjectFactory(tlInventory* inv, bool createInstances )
{
    if (!inv)
    {
        return NULL;
    }

    tlInventory::Iterator<tlScenegraph> sgIt(inv);
    tlInventory::Iterator<tlMultiController> mcIt(inv);

    char compDrawName[P3DMAXNAME];
    char factoryName[P3DMAXNAME];
    char animationName[P3DMAXNAME];
    sprintf(compDrawName,"%s",GetName());
    sprintf(factoryName,"%s",GetName());

    tlAnimatedObjectFactory* factory = new tlAnimatedObjectFactory;
    tlAnimatedObjectAnimation* objAnim = NULL;
    factory->SetName(factoryName);
    factory->SetBaseObjectName(compDrawName);

    // remove any animated objects that are attached to the composite drawable
    for (int propIndex = 0; propIndex < props.Count(); propIndex++)
    {
        if (toollib_find<tlAnimatedObject>(inv, props[propIndex]->GetName()))
        {
            printf("WARNING there is another animated object within the composite drawable to be converted! Removing from composite drawable.\n");
            delete props[propIndex];
            props[propIndex] = NULL;
            props.Delete(propIndex,1);
        }
    }

    // resolve all references
    // [17 Jun 2002] !! NOTE !!
    //   Make sure you update tlFrameController::ResolveReferences() for any
    //   new animation type that needs to be included in an Animated Object Factory.
    inv->ResolveReferences();
    Mark(1);
    MarkReferences(1);

/* ****  AnimRange DISABLED for removal ****

//    // create the sub animations
//    if ((numSubAnimations>0)&&(subAnimations))
//    {
//        for (unsigned int animIndex = 0; animIndex < numSubAnimations; animIndex++)
//        {
//            sprintf(animationName,"animation_%d",animIndex);
//            objAnim = factory->CreateAnimation();
//            objAnim->SetName(animationName);
//
//            tlTable<tlFrameController*>* controllers = subAnimations[animIndex];
//            if (controllers)
//            {
//                for (int fcIndex = 0; fcIndex < controllers->Count(); fcIndex++)
//                {
//                    tlFrameController* controller = (*controllers)[fcIndex];
//                    if ((controller)&&(controller->FindReferenceMark(1)))
//                    {
//                        tlFrameController* newController = objAnim->AddFrameController(*controller);
//                    }
//                }
//            }
//        }
//    }
//    // find all the animaitons in the inventory
//    else

*/

    {
        sprintf(animationName,"animation_%d",0);
        objAnim = factory->CreateAnimation();
        objAnim->SetName(animationName);       

        tlInventory::Iterator<tlFrameController> fcIt(inv);
        for (tlFrameController* fc = fcIt.First(); fc; fc = fcIt.Next())
        {
            if (fc->FindReferenceMark(1))
            {
                objAnim->AddFrameController(*fc);
            }
        }
    }

    if (createInstances)
    {
        // replace all scenegraph drawable nodes that depended on the composite drawable node
        // with animated object instances
        int instanceNum = 0;
        char instanceName[256];
        for (tlScenegraph* sg = sgIt.First(); sg; sg = sgIt.Next())
        {
            tlScenegraphDrawable* node = dynamic_cast<tlScenegraphDrawable*>(sg->Find(compDrawName));
            if (node)
            {
                sg->Mark(instanceNum+1);
                sg->MarkReferences(instanceNum+1);

                sprintf(instanceName,"%s_Instance%d",compDrawName,instanceNum);
                tlAnimatedObject* object = new tlAnimatedObject;
                object->SetName(instanceName);
                object->SetFactoryName(factoryName);
    
                tlFrameController* controller = new tlFrameController;
                controller->SetName(instanceName);
                controller->SetType(Pure3DAnimationTypes::ANIMATED_OBJECT_AOBJ);
                controller->SetHierarchyName(instanceName);

                for (tlMultiController* mc = mcIt.First(); mc; mc = mcIt.Next())
                {
                    if (mc->FindReferenceMark(instanceNum+1))
                    {
                        tlMultiControllerTrackData data;
                        data.name = strnew(instanceName);
                        data.starttime = 0.0f;
                        data.endtime = mc->GetLength();
                        data.scale = 1.0f;
                        mc->AddTrackData(data);
                    }
                }

                node->SetName(instanceName);
                node->SetDrawable(instanceName);
                inv->Store(object);
                inv->Store(controller);
                instanceNum++;
            }
        }   
    }

    // remove the connected frame controllers from the inventory and multicontrollers
    for (unsigned int animIndex = 0; animIndex < factory->GetNumAnimations(); animIndex++)
    {
        objAnim = factory->GetAnimation(animIndex);
        for (int fcIndex = 0; fcIndex < objAnim->GetNumFrameControllers(); fcIndex++)
        {
            inv->Remove(toollib_find<tlFrameController>(inv, objAnim->GetFrameController(fcIndex)->GetName()));
            for (tlMultiController* mc = mcIt.First(); mc; mc = mcIt.Next())
            {
                int trackNum = mc->FindTrackData(objAnim->GetFrameController(fcIndex)->GetName());
                if (trackNum>=0)
                {
                    // NOTE: If this is being called from the Maya Exporter,
                    // this FrameController must be removed from the array in the AnimNode class.
                    // Use AnimNode::ReconcileWithInventory() for this.
                    mc->RemoveTrackData(trackNum);
                }
            }
        }
    }
    
    inv->Store(factory);
    return factory;
}

void tlCompositeDrawable::SetSkeletonName(const char* sname)
{
    strdelete(skeletonName);
    skeletonName = strnew(sname);
}

tlCompositeDrawableSkin* tlCompositeDrawable::AddSkinReference
(
    const char* skinName,
    bool isTranslucent //default false
)
{
    tlCompositeDrawableSkin* subSkin = new tlCompositeDrawableSkin;
    subSkin->SetName(skinName);
    subSkin->SetTranslucency(isTranslucent);
    subSkins.Append(subSkin);
    return(subSkin);
}

tlCompositeDrawableProp* tlCompositeDrawable::AddPropReference
(
    const char* propName, 
    int skeletonID, 
    int endPriorityOffset,  // default 0
    bool isTranslucent      // dfault false
)
{
    tlCompositeDrawableProp* prop = new tlCompositeDrawableProp;
    prop->SetName(propName);
    prop->SetSkeletonJointID(skeletonID);
    prop->SetTranslucency(isTranslucent);
    //
    // numProps needed since sort will not preserve order
    //
    int numProps = props.Count();
    prop->SetIndex(numProps);
    if(endPriorityOffset)
    {
        prop->SetEndSortPriority( endPriorityOffset );
    }
    props.Append(prop);

    return(prop);
}

tlCompositeDrawableEffect* tlCompositeDrawable::AddEffectReference
(
    const char* propName, 
    int skeletonID, 
    int endPriorityOffset,  // default 0
    bool isTranslucent      // dfault false
)
{
    tlCompositeDrawableEffect* effect = new tlCompositeDrawableEffect;
    effect->SetName(propName);
    effect->SetSkeletonJointID(skeletonID);
    effect->SetTranslucency(isTranslucent);
    //
    // numProps needed since sort will not preserve order
    //
    int numProps = effects.Count();
    effect->SetIndex(numProps);
    if(endPriorityOffset)
    {
        effect->SetEndSortPriority( endPriorityOffset );
    }
    effects.Append(effect);

    return(effect);
}


void tlCompositeDrawable::ResolveReferences(tlInventory* inv)
{
    int i;
    for(i = 0; i < subSkins.Count(); i++)
    {
        subSkins[i]->ResolveReferences(inv);
    }

    for(i = 0; i < props.Count(); i++)
    {
        props[i]->ResolveReferences(inv);
    }

    for(i = 0; i < effects.Count(); i++)
    {
        effects[i]->ResolveReferences(inv);
    }

    skeletonPtr = toollib_find<tlSkeleton>(inv, skeletonName);
}

void tlCompositeDrawable::MarkReferences(int m)
{
    int i;
    for(i = 0; i < subSkins.Count(); i++)
    {
        subSkins[i]->Mark(m);
        subSkins[i]->MarkReferences(m);
    }

    for(i = 0; i < props.Count(); i++)
    {
        props[i]->Mark(m);
        props[i]->MarkReferences(m);
    }

    for(i = 0; i < effects.Count(); i++)
    {
        effects[i]->Mark(m);
        effects[i]->MarkReferences(m);
    }

    if(skeletonPtr)
    {
        skeletonPtr->Mark(m);
        skeletonPtr->MarkReferences(m);
    }
}

bool tlCompositeDrawable::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    int i;
    for(i = 0; i < subSkins.Count(); i++)
    {
        if(subSkins[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    for(i = 0; i < props.Count(); i++)
    {
        if(props[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    for(i = 0; i < effects.Count(); i++)
    {
        if(effects[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    if(skeletonPtr)
    {
        if(skeletonPtr->FindReferenceMark(m))
        {
            return true;
        }
    }
    return false;
}

tlDataChunk* tlCompositeDrawable::Chunk16()
{
    tlCompositeDrawableChunk16* chunk = new tlCompositeDrawableChunk16;
    tlCompositeDrawableSkinListChunk16* skinListChunk = new tlCompositeDrawableSkinListChunk16;
    tlCompositeDrawablePropListChunk16* propListChunk = new tlCompositeDrawablePropListChunk16;
    tlCompositeDrawableEffectListChunk16* effectListChunk = new tlCompositeDrawableEffectListChunk16;
    
    chunk->SetName(GetName());
    chunk->SetSkeletonName(skeletonName);

    //
    // Build the list of subChunks for the two separate lists
    //
    int i;
    skinListChunk->SetNumElements(subSkins.Count());
    for(i = 0; i < subSkins.Count(); i++)
    {
        skinListChunk->AppendSubChunk(subSkins[i]->Chunk16());
    }
    propListChunk->SetNumElements(props.Count());
    for(i = 0; i < props.Count(); i++)
    {
        propListChunk->AppendSubChunk(props[i]->Chunk16());
    }
    effectListChunk->SetNumElements(effects.Count());
    for(i = 0; i < effects.Count(); i++)
    {
        effectListChunk->AppendSubChunk(effects[i]->Chunk16());
    } 

    chunk->AppendSubChunk(skinListChunk);   
    chunk->AppendSubChunk(propListChunk);
    chunk->AppendSubChunk(effectListChunk);

    return chunk;
}

void tlCompositeDrawable::LoadFromChunk16(tlDataChunk* chunk)
{
    assert(chunk->ID() == P3D_COMPOSITE_DRAWABLE);
    
    tlCompositeDrawableChunk16* cschunk = dynamic_cast<tlCompositeDrawableChunk16*>(chunk);

    assert(cschunk);

    SetName(cschunk->GetName());
    SetSkeletonName(cschunk->GetSkeletonName());
    
    //
    // Get the two list subchunks
    //
    int subchunkcount = cschunk->SubChunkCount();
    int i;
    for(i = 0; i < subchunkcount; i++)
    {
        tlDataChunk* sub = chunk->GetSubChunk(i);
        
        switch(sub->ID())
        {
            case P3D_COMPOSITE_DRAWABLE_SKIN_LIST:
                {
        
                    tlCompositeDrawableSkinListChunk16* skinList = dynamic_cast<tlCompositeDrawableSkinListChunk16*>(sub);
                    assert(skinList);
                    int subElements = skinList->NumElements();
                    tlCompositeDrawableSkin* skins = new tlCompositeDrawableSkin[subElements];               
                    assert(skins);

                    int subchunkcount = sub->SubChunkCount();
                    assert( subchunkcount == subElements );

                    int i;
                    for(i = 0; i < subchunkcount; i++)
                    {
                        tlDataChunk* superSub = sub->GetSubChunk(i);

                        skins[i].LoadFromChunk16(superSub);
                        tlCompositeDrawableSkin* sk = skins+i;
                        subSkins.Append( sk );
                    }
                }
                break;

            case P3D_COMPOSITE_DRAWABLE_PROP_LIST:
                {
                    tlCompositeDrawablePropListChunk16* propsList = dynamic_cast<tlCompositeDrawablePropListChunk16*>(sub);
                    assert(propsList);
                    int subElements = propsList->NumElements();
                    tlCompositeDrawableProp* propItems = new tlCompositeDrawableProp[subElements];               
                    assert(propItems);

                    int subchunkcount = sub->SubChunkCount();
                    assert( subchunkcount == subElements );

                    int i;
                    for(i = 0; i < subchunkcount; i++)
                    {
                        tlDataChunk* superSub = sub->GetSubChunk(i);

                        propItems[i].LoadFromChunk16(superSub);
                        tlCompositeDrawableProp* prop = propItems+i;
                        props.Append( prop );
                    }

                }
                break;

          case P3D_COMPOSITE_DRAWABLE_EFFECT_LIST:
                {
                    tlCompositeDrawableEffectListChunk16* effectsList = dynamic_cast<tlCompositeDrawableEffectListChunk16*>(sub);
                    assert(effectsList);
                    int subElements = effectsList->NumElements();
                    tlCompositeDrawableEffect* effectItems = new tlCompositeDrawableEffect[subElements];               
                    assert(effectItems);

                    int subchunkcount = sub->SubChunkCount();
                    assert( subchunkcount == subElements );

                    int i;
                    for(i = 0; i < subchunkcount; i++)
                    {
                        tlDataChunk* superSub = sub->GetSubChunk(i);

                        effectItems[i].LoadFromChunk16(superSub);
                        tlCompositeDrawableEffect* effect = effectItems+i;
                        effects.Append( effect );
                    }

                }
                break;
            default:
                break;

        }
    }
}

void tlCompositeDrawable::ReMapJointIndex(const tlSkeleton* skel)
{

    //
    // Need a skeleton to sort
    //
    if(skel)
    {
        if(skel->IsSorted())
        {
            //
            // Need to get the mapping 
            //
            int i;      
            for(i = 0; i < props.Count(); i++)
            {
                int oldJointIndex = props[i]->GetSkeletonJointID();               
                props[i]->SetSkeletonJointID(skel->GetSortedJointIndex(oldJointIndex));
            }
            for(i = 0; i < effects.Count(); i++)
            {
                int oldJointIndex = effects[i]->GetSkeletonJointID();               
                effects[i]->SetSkeletonJointID(skel->GetSortedJointIndex(oldJointIndex));
            }

        }
        else
        {
            printf("WARNING: Skeleton is not sorted sort first\n");
        }
    }
    else
    {
        printf("WARNING: Need a valid skelton to sort\n");
    }
}

void tlCompositeDrawable::SortProps(void)
{
    int i;
    for(i = 0; i<props.Count(); i++)
    {
        // This is need to know where the 
        // end of the list is for sorting to the back
        props[i]->SetEndBasePriority(props.Count());
    }
    props.Sort(tlCompositeDrawableProp::CompareSort);
}  

void tlCompositeDrawable::SortEffects(void)
{
    int i;
    for(i = 0; i<effects.Count(); i++)
    {
        // This is need to know where the 
        // end of the list is for sorting to the back
        effects[i]->SetEndBasePriority(effects.Count());
    }
    effects.Sort(tlCompositeDrawableProp::CompareSort);
}  

tlCompositeDrawableSkin* tlCompositeDrawable::FindSkin(const char* name)
{
    int i;
    for(i = 0; i<subSkins.Count(); i++)
    {
        if (strcmp(subSkins[i]->GetName(),name)==0)
        {
            return subSkins[i];
        }
    }
    return NULL;
}  

tlCompositeDrawableProp* tlCompositeDrawable::FindProp(const char* name)
{
    int i;
    for(i = 0; i<props.Count(); i++)
    {
        if (strcmp(props[i]->GetName(),name)==0)
        {
            return props[i];
        }
    }
    return NULL;
}  

tlCompositeDrawableEffect* tlCompositeDrawable::FindEffect(const char* name)
{
    int i;
    for(i = 0; i<effects.Count(); i++)
    {
        if (strcmp(effects[i]->GetName(),name)==0)
        {
            return effects[i];
        }
    }
    return NULL;
}  

void tlCompositeDrawable::RemoveSkin(const char* name)
{
    int i;
    for(i = 0; i<subSkins.Count(); i++)
    {
        if (strcmp(subSkins[i]->GetName(),name)==0)
        {
//            delete subSkins[i];
            subSkins[i] = NULL;
            subSkins.Delete(i,1);
        }
    }
}  

void tlCompositeDrawable::RemoveProp(const char* name)
{
    int i;
    for(i = 0; i<props.Count(); i++)
    {
        if (strcmp(props[i]->GetName(),name)==0)
        {
            delete props[i];
            props[i] = NULL;
            props.Delete(i,1);
        }
    }
}  

void tlCompositeDrawable::RemoveEffect(const char* name)
{
    int i;
    for(i = 0; i<effects.Count(); i++)
    {
        if (strcmp(effects[i]->GetName(),name)==0)
        {
            delete effects[i];
            effects[i] = NULL;
            effects.Delete(i,1);
        }
    }
}  

//*****************************************************************************
// tlCompositeDrawable
//*****************************************************************************
void  tlCompositeDrawable::Iterator::First()
{
    currentTable = IT_PROPS_TABLE;
    currentTableIndex = 0;

    if (mCompDrawable->props.Count() == 0)
    {
        if (mCompDrawable->subSkins.Count() == 0){
            if( mCompDrawable->effects.Count( ) == 0 )
                isDone = true;
            else
                currentTable = IT_EFFECT_TABLE;
        }
        else
            currentTable = IT_SKIN_TABLE;
    }
}

void  tlCompositeDrawable::Iterator::Next()
{
    if(currentTable == IT_PROPS_TABLE)
    {
        currentTableIndex++;

        if(currentTableIndex >= mCompDrawable->props.Count())
        {
            //
            // Iteration is over to the second list
            //
            currentTableIndex = 0;
            if (mCompDrawable->subSkins.Count() == 0){

                 //to third list
                 if( mCompDrawable->effects.Count( ) == 0 )
                     isDone = true;
                 else
                     currentTable = IT_EFFECT_TABLE;
            }
            else
                currentTable = IT_SKIN_TABLE;
        }
    }
    else if(currentTable == IT_SKIN_TABLE)
    {
        currentTableIndex++;

        if(currentTableIndex >= mCompDrawable->subSkins.Count()){
            //
            // Iteration is over to the third list
            // 
            currentTableIndex = 0;
            if (mCompDrawable->effects.Count() == 0)
                isDone = true;    
            else
                currentTable = IT_EFFECT_TABLE; 
        }
    }
    else if( currentTable == IT_EFFECT_TABLE ){
        currentTableIndex++;

        if(currentTableIndex >= mCompDrawable->effects.Count())
        {
            currentTableIndex = mCompDrawable->effects.Count() - 1;
            isDone = true;
        }
    }
}

tlCompositeDrawableItem* tlCompositeDrawable::Iterator::CurrentItem()
{
    if(isDone)
    {
        return NULL;
    }
    if(currentTable == IT_PROPS_TABLE)
    {
        if(mCompDrawable->props.Count()>0)
        {
            return( mCompDrawable->props[currentTableIndex] );
        }
        else
        {
            return(NULL);
        }
    }
    else  if( currentTable == IT_SKIN_TABLE ){
        if(mCompDrawable->subSkins.Count()>0)
        {
            return( mCompDrawable->subSkins[currentTableIndex] );
        }
        else
        {
            return(NULL);
        }
    }
    else
    {
        if(mCompDrawable->effects.Count()>0)
        {
            return( mCompDrawable->effects[currentTableIndex] );
        }
        else
        {
            return(NULL);
        }
    }
}

//*****************************************************************************
// tlCompositeDrawableLoader
//*****************************************************************************
tlCompositeDrawableLoader::tlCompositeDrawableLoader() :
    tlEntityLoader(P3D_COMPOSITE_DRAWABLE)
{
}

tlEntity*
tlCompositeDrawableLoader::Load(tlDataChunk* chunk)
{
    return new tlCompositeDrawable(chunk);
}



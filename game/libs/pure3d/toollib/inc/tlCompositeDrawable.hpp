/*===========================================================================
    tlCompositeDrawable.hpp
    created Nov 29, 2000
    Liberty Walker

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TLCOMPOSITEDRAWABLE_HPP
#define _TLCOMPOSITEDRAWABLE_HPP

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"

class tlSkeleton;
class tlSkin;
class tlDataChunk;
class tlInventory;
class tlFrameController;
class tlAnimatedObjectFactory;

//*****************************************************************************
// tlCompositeDrawableItem
//*****************************************************************************
class tlCompositeDrawableItem : public tlEntity
{
    public:
    tlCompositeDrawableItem();
    ~tlCompositeDrawableItem();

    void SetTranslucency(bool isTrans){isTranslucent = isTrans;}
    bool GetTranslucency(void){return(isTranslucent);}

    void SetSortOrder(float s) { sortOrder = s; }
    float GetSortOrder(float s) { return sortOrder; }

protected:
    bool isTranslucent;
    float sortOrder;

};

//*****************************************************************************
// tlCompositeDrawableSkin
//*****************************************************************************
class tlCompositeDrawableSkin : public tlCompositeDrawableItem
{
public:
    tlCompositeDrawableSkin();
    tlCompositeDrawableSkin(tlDataChunk* ch);
    ~tlCompositeDrawableSkin();

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16();

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    tlSkin* GetSkinPtr() { return skinPtr; }

protected:
    tlSkin* skinPtr;
};

//*****************************************************************************
// tlCompositeDrawableProp
//*****************************************************************************
class tlCompositeDrawableProp : public tlCompositeDrawableItem
{
public:
    tlCompositeDrawableProp();
    tlCompositeDrawableProp(tlDataChunk* ch);
    ~tlCompositeDrawableProp();

    void LoadFromChunk16(tlDataChunk* ch);
    virtual tlDataChunk* Chunk16();

    void SetSkeletonJointID(int id){ skeletonJointID = id; }
    int  GetSkeletonJointID(void){ return(skeletonJointID); }

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    //
    // These are for sorting
    //
    static int CompareSort( const void *prop1, const void *prop2 );
    int   SortPriority(){return((endOffsetPriority)?(baseSortPriority+endOffsetPriority):arrayIndex);}
    void  SetIndex(int index){arrayIndex = index;}
    void  SetEndBasePriority(int priority){baseSortPriority = priority;}
    void  SetEndSortPriority(int endPriority){endOffsetPriority = endPriority;}

    tlEntity* GetPropPtr() { return propPtr; }

protected:

    int   skeletonJointID;
    int   arrayIndex;
    int   baseSortPriority;
    int   endOffsetPriority;

    tlEntity* propPtr;
};

//*****************************************************************************
// tlCompositeDrawableEffect
//*****************************************************************************
class tlCompositeDrawableEffect : public tlCompositeDrawableProp
{
public:
    tlCompositeDrawableEffect();
    ~tlCompositeDrawableEffect();
    virtual tlDataChunk* Chunk16();
    void LoadFromChunk16(tlDataChunk* ch);
};

//*****************************************************************************
// tlCompositeDrawable
//*****************************************************************************
class tlCompositeDrawable : public tlEntity
{
public:
    tlCompositeDrawable();
    tlCompositeDrawable(tlDataChunk* ch);
    tlCompositeDrawable(tlCompositeDrawable* sourceCompDrawable);

    virtual ~tlCompositeDrawable();

    //NOTE: this automatically stores the factory in the inventory as well
    //as creating animated object instances for scenegraphs that need it

/* ****  AnimRange DISABLED for removal ****
    tlAnimatedObjectFactory* ConvertToAnimatedObjectFactory(tlInventory* inv, bool createInstances = true, unsigned int numSubAnimations = 0, tlTable<tlFrameController*>** subAnimations = NULL);
*/

    tlAnimatedObjectFactory* ConvertToAnimatedObjectFactory(tlInventory* inv, bool createInstances = true );

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16();
    
    void SetSkeletonName(const char*);
    const char* GetSkeletonName() const { return skeletonName; }

    tlCompositeDrawableSkin* AddSkinReference(const char* skinName, 
                                                            bool isTranslucent = false);

    tlCompositeDrawableProp* AddPropReference(const char* propName, 
                                                            int skeletonID, 
                                                            int priorityOffset = 0,
                                                            bool isTranslucent = false);

    tlCompositeDrawableEffect* AddEffectReference(const char* propName, 
                                                            int skeletonID, 
                                                            int priorityOffset = 0,
                                                            bool isTranslucent = false);

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    //
    // Uses the skeleton to sort
    //
    void ReMapJointIndex(const tlSkeleton* skel);

    //
    // Sort Prop Draw Order
    //
    void SortProps(void);
    void SortEffects(void);
    tlCompositeDrawableSkin* FindSkin( const char *name );
    tlCompositeDrawableProp* FindProp(const char* name);
    tlCompositeDrawableEffect* FindEffect( const char *name );
    void RemoveSkin( const char *name );
    void RemoveProp(const char* name);
    void RemoveEffect( const char *name );

    tlTable<tlCompositeDrawableSkin*>   GetSubSkins(void){return(subSkins);}
    tlTable<tlCompositeDrawableProp*>   GetSubProps(void){return(props);}
    tlTable<tlCompositeDrawableEffect*> GetSubEffects(void){return(effects);}

    class Iterator
    {
    public:
        Iterator(tlCompositeDrawable* compDraw):
                currentTableIndex(0),
                isDone(false),
                currentTable(IT_PROPS_TABLE),
                mCompDrawable(compDraw)
                {}

        void  First();
        void  Next();
        bool  IsDone() const{return(isDone);}
        tlCompositeDrawableItem* CurrentItem();
    private:
        Iterator();

        int   currentTableIndex;
        bool  isDone;
        enum { IT_PROPS_TABLE, IT_SKIN_TABLE, IT_EFFECT_TABLE } currentTable;
        tlCompositeDrawable* mCompDrawable;
    };

private:

    tlTable<tlCompositeDrawableSkin*> subSkins;
    tlTable<tlCompositeDrawableProp*> props;
    tlTable<tlCompositeDrawableEffect*> effects;

    char* skeletonName;
    tlSkeleton* skeletonPtr;

    friend Iterator;
};

//*****************************************************************************
// tlCompositeDrawableLoader
//*****************************************************************************
class tlCompositeDrawableLoader : public tlEntityLoader
{
public:
    tlCompositeDrawableLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _TLCOMPOSITEDRAWABLE



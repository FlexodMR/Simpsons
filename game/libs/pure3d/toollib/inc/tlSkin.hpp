/*===========================================================================
    File:: tlSkin.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSKIN_HPP
#define _TLSKIN_HPP

#include "tlPrimGroupMesh.hpp"
#include "tlPrimGroup.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlSkeleton;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlSkin
//*****************************************************************************
class tlSkin : public tlPrimGroupMesh
{
public:
    tlSkin();
    explicit tlSkin(const tlTriMesh& trimesh,
                         const char* skeleton);
    explicit tlSkin(tlDataChunk* ch);
    virtual ~tlSkin();

    // Chunk reading / writing code
    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    virtual void LoadFromChunk16(tlDataChunk* ch)   { assert(0); }
    virtual tlDataChunk* Chunk16()                  { assert(0); return NULL; }

    void    ThresholdWeights(float mininfluence);
    void    MaxWeights(int maxweights);
    int     CountWeights();

    const char* GetSkeletonName() const { return skeletonName; }
    void SetSkeletonName(const char*);

    void AddInstanceInfo(int numInstances);    // Used by p3ddeinstance

    //
    // For a sorted skeleton you need to remap the bone indicies
    //
    void RemapBoneWeights(tlSkeleton* skeleton);
    void TrimOffsets(float);


    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m) { return GetMark() == m; }

    tlSkin * SeparateBones( int bonesNum, int threshold );
    tlSkin * SeparateOffsets( int threshold = 0 );
    tlSkin * Rebuild( bool bMerge = false, int maxNumVertices = -1 );
    tlSkin * RebuildForMatrices( int maxNumMatrices = -1 );

protected:

    char* skeletonName;
    tlSkeleton* skeletonPtr;

    // Note that the bone mappings are stored in the tlVertices
};

//*****************************************************************************
// tlSkinLoader
//*****************************************************************************
class tlSkinLoader : public tlEntityLoader
{
public:
    tlSkinLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


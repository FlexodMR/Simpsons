//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#ifndef _FLEXIBLEOBJECT_HPP_
#define _FLEXIBLEOBJECT_HPP_


#include "tlEntity.hpp"
#include "tlTypes.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

#include "simdata.hpp"
#include "tlFlexibleObjectChunk.hpp"

class tlPrimGroupMesh;
class tlDataChunk;
class tlInventory;

typedef FlexibleObjectEdgeMapData* pFlexibleObjectEdgeMapData;

//*****************************************************************************
// tlFlexibleObject
//*****************************************************************************
class tlFlexibleObject : public tlEntity
{
public:
    tlFlexibleObject();
    tlFlexibleObject(tlDataChunk *ch);
    ~tlFlexibleObject();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk *Chunk();

    virtual void LoadFromChunk16(tlDataChunk* ch)   { assert(false); }
    virtual tlDataChunk* Chunk16()                  { assert(false); return NULL; }

    void AddFixParticle(unsigned short newfix);
    void SetPrimGroupMesh(tlPrimGroupMesh* g);
    void SetFlexibleObjectParam(const tlFlexibleParametersData& param) { flexObjParam = param; }
    void SetExternalDensityFactor(float d) { externalDensityFactor = d; }
    void SetSolver(unsigned short s) { solver = s; }

protected:
    void CreateVertexMapList();
    void CreateTriangleList();
    void Create2DEdgeList();
    void Create1DEdgeList();
    void TryAddEdge(unsigned short v1, unsigned short v2, pFlexibleObjectEdgeMapData& curEdge);

    tlPrimGroupMesh* pgm;
    unsigned short dimension;
    unsigned short nbParticle;
    unsigned short nbFixParticle;
    unsigned short nbVertex;
    unsigned short nbTris;
    unsigned short nbEdges;
    unsigned short nbPGM;
    unsigned short* fixParticle;
    unsigned short* mapToVL;
    unsigned short* pgmNbVertex;
    FlexibleObjectTriMapData* triMap;
    FlexibleObjectEdgeMapData* edgeMap;
    float* edgeLength;
    tlPoint* vertexpos;

    tlFlexibleParametersData flexObjParam;
    float externalDensityFactor;
    unsigned short solver;
};

//*****************************************************************************
// tlFlexibleObjectLoader
//*****************************************************************************
class tlFlexibleObjectLoader : public tlEntityLoader
{
public:
    tlFlexibleObjectLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _FLEXIBLEOBJECT_HPP_

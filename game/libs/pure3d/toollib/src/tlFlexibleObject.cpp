//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlFlexibleObject.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlVertex.hpp"
#include "tlPoint.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"

#include "tlString.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <memory.h>


#include "chunkids.hpp"

const int FLEXIBLEOBJECT_VERSION = 1;

bool SamePointPosition(const tlPoint& p1, const tlPoint& p2, float mind = 0.000001f)
{
    if (fabs(p1.x - p2.x) > mind)
        return false;
    else if (fabs(p1.y - p2.y) > mind)
        return false;
    else if (fabs(p1.z - p2.z) > mind)
        return false;
    else return true;
}

void ComputeTriangleNormal(const tlPoint& v1, const tlPoint& v2, const tlPoint& v3, tlPoint& n)
{
    tlPoint d1, d2;
    d1 = v2 - v1;
    d2 = v3 - v1;
    n = CrossProd(d1,d2);
}

//*****************************************************************************
// tlFlexibleObject
//*****************************************************************************
tlFlexibleObject::tlFlexibleObject()
: pgm(NULL),
  dimension(0),
  nbParticle(0),
  nbFixParticle(0),
  nbVertex(0),
  nbTris(0),
  nbEdges(0),
  nbPGM(0),
  fixParticle(NULL),
  mapToVL(NULL),
  pgmNbVertex(NULL),
  triMap(NULL),
  edgeMap(NULL),
  edgeLength(NULL),
  vertexpos(NULL),
  externalDensityFactor(1.0f),
  solver(0)
{
}

tlFlexibleObject::tlFlexibleObject(tlDataChunk *ch)
: pgm(NULL),
  dimension(0),
  nbParticle(0),
  nbFixParticle(0),
  nbVertex(0),
  nbTris(0),
  nbEdges(0),
  nbPGM(0),
  fixParticle(NULL),
  mapToVL(NULL),
  pgmNbVertex(NULL),
  triMap(NULL),
  edgeMap(NULL),
  edgeLength(NULL),
  vertexpos(NULL),
  externalDensityFactor(1.0f),
  solver(0)
{
    LoadFromChunk(ch);
}

tlFlexibleObject::~tlFlexibleObject()
{
    delete[] fixParticle;
    delete[] mapToVL;
    delete[] pgmNbVertex;
    delete[] triMap;
    delete[] edgeMap;
    delete[] edgeLength;
    delete[] vertexpos;
}

void tlFlexibleObject::LoadFromChunk(tlDataChunk* ch)
{
    tlFlexibleObjectChunk* objectChunk = dynamic_cast<tlFlexibleObjectChunk*>(ch);
    assert(objectChunk);

    SetName(objectChunk->GetName());
    assert(objectChunk->GetVersion() == FLEXIBLEOBJECT_VERSION);

    dimension = objectChunk->GetDimension();
    externalDensityFactor = objectChunk->GetExternalDensityFactor();
    solver = objectChunk->GetSolver();
    nbParticle = objectChunk->GetNbParticle();

    unsigned short i;
    FlexibleParticlePosData* flexlist = objectChunk->FlexibleParticlePos();
    vertexpos = new tlPoint[nbParticle]; // we know that nbParticle <= nbVertex
    for(i = 0; i < nbParticle; i++)
    {
        vertexpos[i].x = flexlist[i].x;
        vertexpos[i].y = flexlist[i].y;
        vertexpos[i].z = flexlist[i].z;
    }

    nbPGM = objectChunk->GetNbPGM();
    pgmNbVertex = new unsigned short[nbPGM];
    unsigned short* list = objectChunk->PGMNbVertex();
    for(i = 0; i < nbPGM; i++)
    {
        pgmNbVertex[i] = list[i];
    }

    for(i = 0; i < unsigned(objectChunk->SubChunkCount()); i++)
    {
        tlDataChunk* subch = objectChunk->GetSubChunk(i);
        switch(subch->ID())
        {
            case Simulation::Flexible::FIX_PARTICLE:
            {
                tlFlexibleObjectFixParticleChunk* fch = dynamic_cast<tlFlexibleObjectFixParticleChunk*>(subch);
                nbFixParticle = fch->FixParticleCount();
                fixParticle = new unsigned short[nbParticle];
                unsigned short* list = fch->FixParticle(); 
                for (unsigned short j=0; j<nbFixParticle; j++)
                    fixParticle[j] = list[j];
                break;
            }
            case Simulation::Flexible::MAP_VL:
            {
                tlFlexibleObjectMapToVLChunk* fch = dynamic_cast<tlFlexibleObjectMapToVLChunk*>(subch);
                nbVertex = fch->GetVCount();
                mapToVL = new unsigned short[nbVertex];
                unsigned short* list = fch->MapToVL();
                int j;
                for (j=0; j<nbVertex; j++)
                    mapToVL[j] = list[j];
                break;
            }
            case Simulation::Flexible::TRI_MAP:
            {
                tlFlexibleObjectTriMapChunk* fch = dynamic_cast<tlFlexibleObjectTriMapChunk*>(subch);
                nbTris = fch->TriMapCount();
                triMap = new FlexibleObjectTriMapData[nbTris];
                FlexibleObjectTriMapData* list = fch->TriMap();
                for (int j=0; j<nbTris; j++)
                    triMap[j] = list[j];
                break;
            }
            case Simulation::Flexible::EDGE_MAP:
            {
                tlFlexibleObjectEdgeMapChunk* fch = dynamic_cast<tlFlexibleObjectEdgeMapChunk*>(subch);
                nbEdges = fch->EdgeMapCount();
                edgeMap = new FlexibleObjectEdgeMapData[nbEdges];
                FlexibleObjectEdgeMapData* list = fch->EdgeMap();
                for (int j=0; j<nbEdges; j++)
                    edgeMap[j] = list[j];
                break;
            }
            case Simulation::Flexible::EDGE_LEN:
            {
                tlFlexibleObjectEdgeLengthChunk* fch = dynamic_cast<tlFlexibleObjectEdgeLengthChunk*>(subch);
                nbEdges = fch->EdgeLengthCount();
                edgeLength = new float[nbEdges];
                float* list = fch->EdgeLength();
                for (int j=0; j<nbEdges; j++)
                    edgeLength[j] = list[j];
                break;
            }
            case Simulation::Flexible::OBJECT_PARAMETERS:
            {
                tlFlexibleObjectParamChunk* fch = dynamic_cast<tlFlexibleObjectParamChunk*>(subch);
                flexObjParam.mStretch1Dkf = fch->Stretch1Dkf();
                flexObjParam.mStretch1Dkd = fch->Stretch1Dkd();
                flexObjParam.mBend1Dkf = fch->Bend1Dkf();
                flexObjParam.mBend1Dkd = fch->Bend1Dkd();
                flexObjParam.mWind1DKf = fch->Wind1DKf();
                flexObjParam.mStretch2Dkf = fch->Stretch2Dkf();
                flexObjParam.mStretch2Dkd = fch->Stretch2Dkd();
                flexObjParam.mShear2Dkf = fch->Shear2Dkf();
                flexObjParam.mShear2Dkd = fch->Shear2Dkd();
                flexObjParam.mBend2Dkf = fch->Bend2Dkf();
                flexObjParam.mBend2Dkd = fch->Bend2Dkd();
                flexObjParam.mWind2DKf = fch->Wind2DKf();
                flexObjParam.mUseLambda = false;
                break;
            }
        case Simulation::Flexible::OBJECT_LAMBDA:
            {
                tlFlexibleLambdaObjectParamChunk* pc = dynamic_cast<tlFlexibleLambdaObjectParamChunk*>(subch);
                assert(pc);
                flexObjParam.mLambdaF = pc->GetLambdaF();
                flexObjParam.mLambdaD = pc->GetLambdaD();
                flexObjParam.mKappaF = pc->GetKappaF();
                flexObjParam.mKappaD = pc->GetKappaD();
                flexObjParam.mIotaF = pc->GetIotaF();
                flexObjParam.mIotaD = pc->GetIotaD();
                flexObjParam.mWind1DKf = pc->Wind1DKf();
                flexObjParam.mWind2DKf = pc->Wind2DKf();
                flexObjParam.mUseLambda = true;
                break;
            }
        default:
                // Just ignore unrecognized data
                break;
        }
    }
    dimension = nbTris == 0 ? 1 : 2;
}

tlDataChunk* tlFlexibleObject::Chunk()
{
    if(nbParticle <= 0)
    {
        printf("tlFlexibleObject::Chunk: No particles to export, name=%s", GetName());
        return NULL;
    }

    tlFlexibleObjectChunk* objectChunk = new tlFlexibleObjectChunk;

    objectChunk->SetName(GetName());
    objectChunk->SetVersion(FLEXIBLEOBJECT_VERSION);

    objectChunk->SetDimension(dimension);
    objectChunk->SetExternalDensityFactor(externalDensityFactor);
    objectChunk->SetSolver(solver);
    objectChunk->SetNbParticle(nbParticle);

    FlexibleParticlePosData* flexpos = new FlexibleParticlePosData[nbParticle];
    for (int i=0; i<nbParticle; i++)
    {
        flexpos[i].x = vertexpos[i].x;
        flexpos[i].y = vertexpos[i].y;
        flexpos[i].z = vertexpos[i].z;
    }
    objectChunk->SetFlexibleParticlePos(flexpos, nbParticle);
    delete[] flexpos;

    objectChunk->SetNbPGM(nbPGM);
    objectChunk->SetPGMNbVertex(pgmNbVertex, nbPGM);

    tlFlexibleObjectFixParticleChunk* fixch = new tlFlexibleObjectFixParticleChunk;
    fixch->SetFixParticleCount(nbFixParticle);
    if (nbFixParticle > 0)
    {
        fixch->SetFixParticle(fixParticle, nbFixParticle);
    }
    objectChunk->AppendSubChunk(fixch);

    tlFlexibleObjectMapToVLChunk* fvlch = new tlFlexibleObjectMapToVLChunk;
    fvlch->SetVCount(nbVertex);
    if (nbVertex > 0)
    {
        fvlch->SetMapToVL(mapToVL, nbVertex);
    }
    objectChunk->AppendSubChunk(fvlch);

    tlFlexibleObjectTriMapChunk* ftmch = new tlFlexibleObjectTriMapChunk;
    ftmch->SetTriMapCount(nbTris);
    if (nbTris > 0)
    {
        ftmch->SetTriMap(triMap, nbTris);
    }
    objectChunk->AppendSubChunk(ftmch);

    tlFlexibleObjectEdgeMapChunk* femch = new tlFlexibleObjectEdgeMapChunk;
    femch->SetEdgeMapCount(nbEdges);
    if (nbEdges > 0)
    {
        femch->SetEdgeMap(edgeMap, nbEdges);
    }
    objectChunk->AppendSubChunk(femch);

    tlFlexibleObjectEdgeLengthChunk* felch = new tlFlexibleObjectEdgeLengthChunk;
    felch->SetEdgeLengthCount(nbEdges);
    if (nbEdges > 0)
    {
        felch->SetEdgeLength(edgeLength, nbEdges);
    }
    objectChunk->AppendSubChunk(felch);

    if (flexObjParam.mUseLambda)
    {
        tlFlexibleLambdaObjectParamChunk* pc = new tlFlexibleLambdaObjectParamChunk;
        assert(flexObjParam.GetName());
        pc->SetLambdaF(flexObjParam.mLambdaF);
        pc->SetLambdaD(flexObjParam.mLambdaD);
        pc->SetKappaF(flexObjParam.mKappaF);
        pc->SetKappaD(flexObjParam.mKappaD);
        pc->SetIotaF(flexObjParam.mIotaF);
        pc->SetIotaD(flexObjParam.mIotaD);
        objectChunk->AppendSubChunk(pc);
    }
    else
    {
        tlFlexibleObjectParamChunk* fpch = new tlFlexibleObjectParamChunk;
        fpch->SetStretch1Dkf(flexObjParam.mStretch1Dkf);
        fpch->SetStretch1Dkd(flexObjParam.mStretch1Dkd);
        fpch->SetBend1Dkf(flexObjParam.mBend1Dkf);
        fpch->SetBend1Dkd(flexObjParam.mBend1Dkd);
        fpch->SetWind1DKf(flexObjParam.mWind1DKf);
        fpch->SetStretch2Dkf(flexObjParam.mStretch2Dkf);
        fpch->SetStretch2Dkd(flexObjParam.mStretch2Dkd);
        fpch->SetShear2Dkf(flexObjParam.mShear2Dkf);
        fpch->SetShear2Dkd(flexObjParam.mShear2Dkd);
        fpch->SetBend2Dkf(flexObjParam.mBend2Dkf);
        fpch->SetBend2Dkd(flexObjParam.mBend2Dkd);
        fpch->SetWind2DKf(flexObjParam.mWind2DKf);
        objectChunk->AppendSubChunk(fpch);
    }
    
    return objectChunk;
}

void tlFlexibleObject::CreateVertexMapList()
{
    // the vertices in the primgroups may appear more than once
    // get the map of all the vertices in all the PrimGroups
    assert(pgm);

    nbVertex = pgm->NumVertices();

    if (mapToVL)
        delete[] mapToVL;
    if (vertexpos)
        delete[] vertexpos;

    mapToVL = new unsigned short[nbVertex];
    vertexpos = new tlPoint[nbVertex]; // we know that nbParticle <= nbVertex

    nbParticle = 0;
    for (unsigned short j=0; j<nbVertex; j++)
    {
        bool alreadythere = false;
        unsigned short m;
        tlPoint curPos = pgm->GetVertex(j)->GetCoord();
        for (m=0; m<nbParticle; m++)
        {
            if (SamePointPosition(curPos, vertexpos[m]))
            {
                alreadythere = true;
                break;
            }
        }
        if (alreadythere)
        {
            mapToVL[j] = m;
        }
        else
        {
            mapToVL[j] = nbParticle;
            vertexpos[nbParticle] = curPos;
            nbParticle++;
        }
    }
    fixParticle = new unsigned short[nbParticle];
    nbFixParticle = 0;
}

void tlFlexibleObject::CreateTriangleList()
{
    nbTris = 0;
    int i;
    for (i=0; i<pgm->NumPrimGroups(); i++)
    {
        nbTris += pgm->GetPrimGroup(i)->GetTriangleCount();
    }
    dimension = nbTris == 0 ? 1 : 2;
    
    if (dimension == 2)
    {
        bool testdegeneratedtris = false;

        if (triMap)
            delete[] triMap;

        triMap = new FlexibleObjectTriMapData[nbTris];
        FlexibleObjectTriMapData* curTri = &triMap[0];

        for (i=0; i<pgm->NumPrimGroups(); i++)
        {
            for (int j=0; j<pgm->GetPrimGroup(i)->GetTriangleCount(); j++)
            {
                // mapping of the triangle's vertices in the particle system
                unsigned int v1, v2, v3;
                pgm->GetPrimGroup(i)->GetTriangle(j, &v1, &v2, &v3);
                curTri->v1 = (unsigned short)(v1);
                curTri->v2 = (unsigned short)(v2);
                curTri->v3 = (unsigned short)(v3);
                unsigned short map0 = mapToVL[curTri->v1];
                unsigned short map1 = mapToVL[curTri->v2];
                unsigned short map2 = mapToVL[curTri->v3];
                bool degenerate = false;
                if (testdegeneratedtris)
                {
                    // look if there is identical vertices in the triangle
                    if (map0 == map1 || map0 == map2 || map2 == map1)
                    {
                        degenerate = true;
                    }
                    /* this doesn't seem to be necessary
                    else
                    {
                        // also look if triangle is already there
                        for (int ii = 0; ii<curTri - triMap; ii+=3)
                        {
                            if (triMap[ii] == map0 || triMap[ii] == map1 || triMap[ii] == map2)
                                if (triMap[ii+1] == map0 || triMap[ii+1] == map1 || triMap[ii+1] == map2)
                                    if (triMap[ii+2] == map0 || triMap[ii+2] == map1 || triMap[ii+2] == map2)
                                        degenerate = true;
                        }
                    }
                    */
                }
                if (!degenerate)
                {
                    // map the indices to the particle's indices
                    // make sure the computed normal will be aligned the right way
                    tlPoint n;
                    ComputeTriangleNormal(vertexpos[map0], vertexpos[map1], vertexpos[map2], n);
                    if (DotProd(n, pgm->GetVertex(i)->GetNormal()) < 0)
                    {
                        curTri->v1 = map1;
                        curTri->v2 = map0;
                        curTri->v3 = map2;
                    }
                    else
                    {
                        curTri->v1 = map0;
                        curTri->v2 = map1;
                        curTri->v3 = map2;
                    }
                    curTri++;
                    assert(curTri - triMap <= nbTris);
                }
                else
                {
                    nbTris--;
                }
            }
        }
    }
}

void tlFlexibleObject::TryAddEdge(unsigned short v1, unsigned short v2, pFlexibleObjectEdgeMapData& curEdge)
{
    // start from the end of the list where there is more prob to find a same one
    bool found = false;
    for (FlexibleObjectEdgeMapData* c=curEdge-1; c>=edgeMap; c--)
    {
        if (c->v1 == v1 || c->v1 == v2)
        {
            if (c->v2 == v1 || c->v2 == v2)
            {
                found = true;
                break;
            }
        }
    }
    if (!found)
    {
        assert(nbEdges < nbTris*3); // too many edges ?!? is there any isolated triangles in there?
        curEdge->v1 = v1;
        curEdge->v2 = v2;
        curEdge++;
        nbEdges++;
    }
}

void tlFlexibleObject::Create1DEdgeList()
{
    assert(false); // not yet
}

void tlFlexibleObject::Create2DEdgeList()
{
    if (edgeMap)
        delete[] edgeMap;

    edgeMap = new FlexibleObjectEdgeMapData[nbTris*3]; // max number of edges

    // add the first triangle, we know there is no duplicated edges yet
    edgeMap[0].v1 = triMap[0].v1;
    edgeMap[0].v2 = triMap[0].v2;
    edgeMap[1].v1 = triMap[0].v1;
    edgeMap[1].v2 = triMap[0].v3;
    edgeMap[2].v1 = triMap[0].v2;
    edgeMap[2].v2 = triMap[0].v3;
    nbEdges = 3;

    // add the other triangles, test for duplicated edge in TryAddEdge
    FlexibleObjectEdgeMapData* curEdge = &edgeMap[3];
    FlexibleObjectTriMapData* curTri = &triMap[1];

    unsigned short i;
    for (i = 1; i<nbTris; i++)
    {
        TryAddEdge(curTri->v1, curTri->v2, curEdge);
        TryAddEdge(curTri->v1, curTri->v3, curEdge);
        TryAddEdge(curTri->v2, curTri->v3, curEdge);
        curTri ++;
    }
    assert(nbEdges > 0);

    tlPoint d;
    edgeLength = new float[nbEdges];

    for (i=0; i<nbEdges; i++)
    {
        d = vertexpos[edgeMap[i].v1] - vertexpos[edgeMap[i].v2];
        edgeLength[i] = d.Length();
    }
}

void tlFlexibleObject::AddFixParticle(unsigned short newfix)
{
    assert(nbParticle > 0 && newfix < nbParticle);

    if (fixParticle == NULL)
        fixParticle = new unsigned short[nbParticle];

    for (int i=0; i<nbFixParticle; i++)
    {
        if (newfix == fixParticle[i])
            return;
    }
    fixParticle[nbFixParticle] = newfix;
    nbFixParticle++;
}

void tlFlexibleObject::SetPrimGroupMesh(tlPrimGroupMesh* g)
{
    SetName(g->GetName());
    pgm = g;
    nbPGM = pgm->NumPrimGroups();
    pgmNbVertex = new unsigned short[nbPGM];

    for (int i=0; i<nbPGM; i++)
    {
        pgmNbVertex[i] = pgm->GetPrimGroup(i)->GetVertexCount();
    }

    CreateVertexMapList();
    CreateTriangleList();

    if (dimension == 2)
        Create2DEdgeList();
    else
        Create1DEdgeList();
}

//*****************************************************************************
// tlFlexibleObjectLoader
//*****************************************************************************
tlFlexibleObjectLoader::tlFlexibleObjectLoader() : 
    tlEntityLoader(Simulation::Flexible::OBJECT)
{
}
tlEntity* 
tlFlexibleObjectLoader::Load(tlDataChunk* chunk)
{
    return new tlFlexibleObject(chunk);
}

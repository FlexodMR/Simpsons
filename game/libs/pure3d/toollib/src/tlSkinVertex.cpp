/*===========================================================================
    File:: tlSkinVertex.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlSkinVertex.hpp"
#include <assert.h>
#include <stdio.h>

#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"

tlSkinVertex::tlSkinVertex() : 
        tlVertex(),
        jointweights()
{

}

tlSkinVertex::tlSkinVertex(const tlVertex& v) : 
        tlVertex(v),
        jointweights()
{
}

tlSkinVertex::tlSkinVertex(const tlSkinVertex& v) : 
        tlVertex(v),
        jointweights(v.jointweights)
{
}


tlSkinVertex::tlSkinVertex(const tlPoint& vert,
                                    const tlPoint& norm,
                                    const tlColour& col,
                                    const tlUV& uv0) : 
        tlVertex(vert, norm, col, uv0)
{
}

tlSkinVertex::~tlSkinVertex()
{

}

tlVertex*
tlSkinVertex::Clone() const
{
    return new tlSkinVertex(*this);
}

void
tlSkinVertex::AddJointWeight(int jointIndex, float weight)
{
    tlBoneWeightingData w;
    w.jointindex = jointIndex;
    w.weight = weight;
    w.firstvertex = (jointweights.Count() == 0) ? 1 : 0;
    jointweights.Append(w);
}

void
tlSkinVertex::NormalizeWeights()
{
    float total = 0.0f;

    int i;
    for(i = 0; i < jointweights.Count(); i++)
    {
        total += jointweights[i].weight;
    }

    if(total==0.0f)
    {
        total = 1.0f;
    }

    for(i = 0; i < jointweights.Count(); i++)
    {
        jointweights[i].weight /= total;
    }
}

static int
Compare( int a, int b )
{
    return ( a - b );
}

static int
Compare( float a, float b )
{
    if(a < b)
    {
        return -1;
    }
    if(a > b)
    {
        return 1;
    }
    return 0;
}

static int
WeightCompare( const void *elem1, const void *elem2 )
{
    tlBoneWeightingData* w1 = (tlBoneWeightingData*)(elem1);
    tlBoneWeightingData* w2 = (tlBoneWeightingData*)(elem2);
    
    return Compare(w2->weight, w1->weight);
}
    
void
tlSkinVertex::SortWeights()
{
    jointweights.Sort(WeightCompare);
    jointweights[0].firstvertex = 1;
    for(int i = 1; i < jointweights.Count(); i++)
    {
        jointweights[i].firstvertex = 0;
    }
}   

void
tlSkinVertex::MaxWeights(int maxweights)
{
    SortWeights();
    assert(maxweights > 0);
    if(jointweights.Count() > maxweights)
    {
        jointweights.SetCount(maxweights);
    }
    NormalizeWeights();
}

void
tlSkinVertex::ThresholdWeights(float mininfluence)
{
    SortWeights();
    for(int i = 1; i < jointweights.Count(); i++)
    {
        if(jointweights[i].weight < mininfluence)
        {
            jointweights.SetCount(i);
            break;
        }
    }
    NormalizeWeights();
}

int
tlSkinVertex::Compare(const tlVertex& a)
{
    const tlSkinVertex* sv = dynamic_cast<const tlSkinVertex*>(&a);
    assert(sv);

    int result = ::Compare(sv->jointweights.Count(), jointweights.Count());
    
    if ((result == 0) && (jointweights.Count() > 0))
    {
        result = ::Compare(jointweights[0].jointindex, sv->jointweights[0].jointindex);
    }

    if(result == 0)
    {
        result = tlVertex::Compare(a);
    }

    return result;
}

void 
tlSkinVertex::SetJointIndex( int jointweightsIndex, int newJointIndex )
{
    if( (0<=jointweightsIndex) && (jointweightsIndex<jointweights.Count()) )
    {
        jointweights[jointweightsIndex].jointindex = newJointIndex;
    }
    else
    {
        assert(0 && "Trying to access invalid array bounds");
    }
}

void 
tlSkinVertex::SetJointWeight( int jointweightsIndex, float newJointWeight )
{
    if( (0<=jointweightsIndex) && (jointweightsIndex<jointweights.Count()) )
    {
        jointweights[jointweightsIndex].weight = newJointWeight;
    }
    else
    {
        assert(0 && "Trying to access invalid array bounds");
    }
}


int tlSkinVertex::NumberOfBones( )
{
    int zeroWeights = 0;
    for( int i = 0; i < jointweights.Count( ); ++i ){
        if( GetJointWeight( i ).weight == 0.f )
            ++zeroWeights;
    }

    return jointweights.Count( ) - zeroWeights;
}
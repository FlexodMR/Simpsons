/*===========================================================================
    File:: tlSkinVertex.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSTREEVERTEX_HPP
#define _TLSTREEVERTEX_HPP

#include "tlVertex.hpp"
#include "tlSkinChunk.hpp"
#include "tlTable.hpp"

class tlSkinVertex : public tlVertex
{
public:
    tlSkinVertex();
    
    // copy constructors
    tlSkinVertex(const tlVertex& v);
    tlSkinVertex(const tlSkinVertex& v);

    tlSkinVertex(const tlPoint& vert,
                      const tlPoint& norm,
                      const tlColour& col,
                      const tlUV& uv0);
    virtual ~tlSkinVertex();

    virtual tlVertex* Clone() const;

    virtual int Compare(const tlVertex& a);

    void AddJointWeight(int jointIndex, float weight);
    int  NumJointWeights() { return jointweights.Count();}
    tlBoneWeightingData GetJointWeight(int i) { return jointweights[i]; }

    void NormalizeWeights();
    void SortWeights();
    void MaxWeights(int maxweights);             // removes any influences > max count
    void ThresholdWeights(float mininfluence);   // removes any influences < min weight
    
    void SetJointIndex( int jointweightsIndex, int newJointIndex );
    void SetJointWeight( int jointweightsIndex, float newJointWeight );

    int NumberOfBones(  );

private:
    
    tlTable<tlBoneWeightingData> jointweights;
};

#endif


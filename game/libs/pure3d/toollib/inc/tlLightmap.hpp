/*===========================================================================
   File:: tlLightmap.hpp

   Copyright (c) 2002 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLLIGHTMAP_HPP
#define _TLLIGHTMAP_HPP

#include "tlBSPTree.hpp"
#include "tlColour.hpp"
#include "tlMatrix.hpp"
#include "tlPlane.hpp"
#include "tlUV.hpp"

class tlLight;
class tlPrimGroup;
class tlTexture;

class tlProjectedLightmap{
  public:
    tlProjectedLightmap();
    virtual ~tlProjectedLightmap();
    void AddLightmapGeo( tlPrimGroup *prm );
    void AddShadowGeo( tlPrimGroup *prm );
    void AddLight( tlLight *light );

    tlUV UV( const tlPoint &worldCoord );

    void SetSuperSampling( int scale ); // Supersample higher than the current resolution.
    void SetWidth( int width );
    void SetHeight( int height );
    void SetName( const char *name );
    void SetWorldDensity( float density ); // Pixels per unit length (alternative to set width and height).
    void UseColourTranslucency( bool b ) { mUseColourTranslucency = b; }

    tlTexture* GetTexture(); // Return the lightmapped texture.
    int GetSamplingScale() const { return mSamplingScale; }
    int GetWidth();
    int GetHeight();
    const char* GetName() const { return mName; }

  private:
    void GenerateLightmap();
    void ConstructBSPTree( tlBSPTree *tritree, tlTable<tlPrimGroup*> &prms,
                           const tlBox &bounds );
    void ComputeTransforms( int targetWidth, int targetHeight );
    int  GetNormalAxis() const;
    tlPoint GetNormal() const;
    tlColour GetColourAtPoint( const tlPoint &pos, const tlTriangle *tri );
    void MinifyLightmap();

    void Invalidate();
    void Validate();

    int mWidth, mHeight;
    int mSamplingScale;
    int mSampleWidth, mSampleHeight;
    float mDensity;
    char *mName;
    
    tlTexture *mTexture;
    tlPlane   mPlane;

    tlTable<tlPrimGroup*> mLightmapGeo;
    tlBSPTree mLightmapGeoBSP;
    tlBox mLightmapBounds;
    tlTable<tlPrimGroup*> mShadowGeo;
    tlBSPTree mShadowGeoBSP;
    tlBox mShadowBounds;
    tlTable<tlLight*> mLights;

    tlMatrix mWorld2UV;
    tlMatrix mUV2World;

    bool mIsValid;
    bool mUseColourTranslucency;
};

#endif

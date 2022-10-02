/*===========================================================================
   File:: tlLight.hpp

   Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLLIGHT_HPP
#define _TLLIGHT_HPP

#include "tlEntity.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlShader.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"

class tlDataChunk;
class tlInventory;
class tlTriMeshIntersect;
class tlPhotonMap;
class tlPlane;
class tlBSPTree;

//*****************************************************************************
// tlLight
//*****************************************************************************
class tlLight : public tlEntity
{
public:
    tlLight(tlDataChunk *ch = NULL);
    ~tlLight();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk *Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                 { assert(0); }
    tlDataChunk* Chunk16()                                { assert(0); return NULL; }
    
    void LoadDecayRange(tlDataChunk *ch);

    enum tlLightType { Ambient, Point, Directional, Spot };
    enum tlDecayRangeType{ NO_DECAY_RANGE, SPHERE_DECAY_RANGE, CUBOID_DECAY_RANGE,
                           ELLIPSOID_DECAY_RANGE };
    enum tlIlluminationType{ POSITIVE_ILLUMINANT, ZERO_ILLUMINANT, NEGATIVE_ILLUMINANT };

    // accessors
    // Changed by Bryan Ewert on 04 Jun 2002 - added 'const' qualifier
    inline tlLightType Type() const { return mType; }
    inline void        SetType(tlLightType newType) { mType = newType; }

    inline tlPoint  Position() { return mPosition; }
    inline void     SetPosition(tlPoint newPosition) { mPosition = newPosition; }

    inline tlPoint  Direction() { return mDirection; }
    inline void     SetDirection(tlPoint newDirection) { mDirection = newDirection; }

    inline tlColour Colour() { return mColour; }
    inline void     SetColour(tlColour newColour) {mColour = newColour; }

    inline bool     Enabled(void) { return mEnabled; }
    inline void     SetEnabled(bool e = true) { mEnabled = e; }

    inline bool     CastShadow(void) { return mShadow; }
    inline void     SetShadow( bool s = true ) { mShadow = s; }

    inline void     Attenuation(float &con, float &lin, float &squared);
    inline void     SetAttenuation(float con, float lin, float squared);

    inline void     SetCone(float phi, float theta, float falloff);
    inline void     Cone(float &phi, float &theta, float &falloff);

    inline void     SetRange(float range) {mRange = range;}
    inline void     Range(float& range) {range = mRange;}

    inline tlDecayRangeType DecayRangeType() const { return mDecayRangeType; }
    inline void     SetDecayRangeType(tlDecayRangeType type);

    inline tlPoint  InnerDecayRange() const { return mInnerDecayRange; }
    inline void     SetInnerDecayRange(const tlPoint &inner);

    inline tlPoint  OuterDecayRange() const { return mOuterDecayRange; }
    inline void     SetOuterDecayRange(const tlPoint &outer);

    inline float    RotationY() const { return mRotationY; }
    inline void     SetRotationY(float rotationY);

    inline tlIlluminationType IlluminationType() { return mIlluminationType; }
    inline void     SetIlluminationType(tlIlluminationType type = POSITIVE_ILLUMINANT);

    inline void     SetMaxDepth( int maxDepth ) {mMaxDepth = maxDepth; }

    void Scale(float s);
    bool Intensity(const tlPoint& pos, tlColour& col, tlPoint& dir);
    float Decay(const tlPoint& pos) const;
    float Power() const;
    tlColour DiffuseLight(const tlPoint&  pos, const tlPoint& norm);
    tlColour DiffuseLightIntensity(const tlPoint&  pos, const tlPoint& norm);
    tlColour DiffuseLightShadow(const tlPoint&  pos, const tlPoint& norm, tlTable<tlTriMeshIntersect*> &meshes);
    tlColour DiffuseLightShadow(const tlPoint&  pos, const tlPoint& norm, tlBSPTree *tritree );
    bool InShadow(const tlPoint& pos, tlTriMeshIntersect& mesh);
    bool InShadow(const tlPoint& pos, tlTriMeshIntersect& mesh, int mark );
    bool InShadow(const tlPoint& pos, tlBSPTree *tritree );

    int AddPhotons( tlPhotonMap &pmap, const tlTable<tlTriMeshIntersect *> &scene, 
                   const tlTable<tlShader *> & shaders, int photonsNum = 1000 );
    void Transform( tlMatrix matrix );
    bool IsLighted( tlPoint pos )  const;
    bool IsLighted( tlPlane plane ) const;
    bool IsLighted( tlPoint pos, tlPoint norm ) const;
    tlPoint GetRayDirection( tlPoint  pos ) const;

    // Randomization used for Photonmap.
    void  SetSeed( unsigned seed );
    void  SetSeed( unsigned upper, unsigned lower );
    void  GetSeed( unsigned &upper, unsigned &lower ) const;
    float Random( void );              // returns value in 0 -> 1

private:
    tlLight(const tlLight&);
    tlLight& operator=(const tlLight&);

    // General Parameters:
    // -------------------
    tlLightType mType;
    tlPoint     mPosition;
    tlPoint     mDirection;
    tlColour    mColour;
    bool        mEnabled;

    // Attenuation:
    // ---------------
    // Terms             Constant    Linear       Squared
    // attenuation = 1 / (a + distance * b + distance^2 * c)
    float mConstant;
    float mLinear;
    float mSquared;


    // Spotlight specific params
    // ---------------
    // mPhi: angle of cone from edge to edge 
    //       (Maya def'n: This attribute represents the angle 
    //       that the spotlight cone makes with the spotlight direction vector.)

    // mTheta: extra angle beyond mPhi on each side for soft shadows.  (penumbra) 
    //         (e.g. 50 deg phi + 10 deg theta produces total 70 degree spot edge to edge:
    //               25 degrees from center to edge of full light then 10 degrees more for penumbra.
    // mFalloff: This attribute represents the degree to which intensity of the light decreases 
    //           with increasing angular distance from the light direction vector. Higher values represent 
    //           more rapid intensity dropoff
    float mPhi;
    float mTheta;
    float mFalloff;
    
    //decay region: light falls off between this range.  
    //        Maya allows for 3 distinct decay regions, but tSpotLight only has 1
    float mRange;

    //shadow: if true then casting shadow for light mapping
    bool  mShadow;

    // Decay range.
    tlDecayRangeType mDecayRangeType;
    tlPoint          mInnerDecayRange;
    tlPoint          mOuterDecayRange;
    float            mRotationY;
    tlIlluminationType mIlluminationType;

    static const int CurrentLightVersion;

    int AddPhotonsForPointLight( tlPhotonMap &pmap, const tlTable<tlTriMeshIntersect *>&scene, 
                                const tlTable<tlShader *> & shaders, int photonsNum = 1000 );
    int AddPhotonsForSpotLight( tlPhotonMap &pmap, const tlTable<tlTriMeshIntersect *> &scene, 
                                      const tlTable<tlShader *> &shaders, int photonsNum  );
    long numPhotons;
    int mMaxDepth;
    tlDataChunk* MakeDirectionSubChunk();
    tlDataChunk* MakePositionSubChunk();
    tlDataChunk* MakeConeParamSubChunk();
    tlDataChunk* MakeShadowSubChunk();
    tlDataChunk* MakeDecayRangeChunk();
    tlDataChunk* MakeDecayRangeRotationYChunk();
    tlDataChunk* MakeIlluminationTypeChunk();

    bool TestPointLighIntersection( double alpha, double theta, const tlTable<tlTriMeshIntersect *>&scene, tlPoint & intersect, tlPoint &dir );
    bool TestSpotLighIntersection( double alpha, double theta, const tlTable<tlTriMeshIntersect *>&scene, tlPoint & intersect, tlPoint &dir );
    unsigned upperBits;
    unsigned lowerBits;
   
};


//************************************
// Inline methods
//
inline void tlLight::Attenuation(float &con, float &lin, float &squared)
{
    con     = mConstant;
    lin     = mLinear;
    squared = mSquared;
}

inline void tlLight::SetAttenuation(float con, float lin, float squared)
{
    mConstant = con;
    mLinear   = lin;
    mSquared  = squared;
}

inline void tlLight::SetCone(float phi, float theta, float falloff)
{
    mPhi = phi;
    mTheta = theta;
    mFalloff = falloff;
}

inline void tlLight::Cone(float &phi, float &theta, float &falloff)
{
    phi = mPhi;
    theta = mTheta;
    falloff = mFalloff;
}

inline void tlLight::SetDecayRangeType(tlDecayRangeType type)
{
    mDecayRangeType = type;
}

inline void tlLight::SetInnerDecayRange(const tlPoint &inner)
{
    mInnerDecayRange = inner;
}

inline void tlLight::SetOuterDecayRange(const tlPoint &outer)
{
    mOuterDecayRange = outer;
}

inline void tlLight::SetRotationY(float rotationY)
{
    mRotationY = rotationY;
}

inline void tlLight::SetIlluminationType(tlIlluminationType type)
{
    mIlluminationType = type;
}

//************************************

//*****************************************************************************
// tlLightLoader
//*****************************************************************************
class tlLightLoader : public tlEntityLoader
{
public:
    tlLightLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

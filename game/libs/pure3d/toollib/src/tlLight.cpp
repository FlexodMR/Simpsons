/*===========================================================================
   File:: tlLight.cpp

   Copyright (c) 1997 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlLight.hpp"
#include "tlLightChunk.hpp"
#include "tlColour.hpp"
#include "tlTriMeshIntersect.hpp"
#include "tlMatrix.hpp"
#include "tlRay.hpp"
#include "tlPhotonMap.hpp"
#include "tlPlane.hpp"
#include "tlInventory.hpp"
#include "tlBSPTree.hpp"

const int tlLight::CurrentLightVersion = 0x0101; // Version 1.01

struct RayParam{
    double alpha;
    double theta;
    double phi;
};

static const float PI = 3.14159265358979323846f;
static const float CONST_FALLOFF_SCALE   = 1.0f;
static const float LINEAR_FALLOFF_SCALE  = 1.0f;
static const float SQUARED_FALLOFF_SCALE = 1.0f;
static const float EPSILON = 1.0e-4f;

//************************************************
//
// Class tlLight
// tlDataChunk16 Constructor
//
//
tlLight::tlLight(tlDataChunk *ch /* = NULL */) :
    mType(Directional),
    mPosition(), 
    mDirection(), 
    mColour(),
    mEnabled(true),
    mConstant(1.0F),
    mLinear(0.0F),
    mSquared(0.0F),
    mPhi(0.0f),
    mTheta(0.0f),
    mFalloff(0.0f),
    mRange(10000000.0f),
    mShadow(true),
    numPhotons(0),
    mMaxDepth(12),
    mDecayRangeType( tlLight::NO_DECAY_RANGE ),
    mRotationY(0.0f),
    mIlluminationType( tlLight::POSITIVE_ILLUMINANT )
{
    SetSeed( 0, 0 );
    if (ch != NULL) LoadFromChunk(ch);
}



//************************************************
//
// Class tlLight
// Default Destructor
//
//
tlLight::~tlLight()
{

}

void tlLight::LoadFromChunk(tlDataChunk *ch)
{
    tlLightChunk *lc = dynamic_cast<tlLightChunk *>(ch);

    assert(lc->GetVersion() == (unsigned long)CurrentLightVersion);

    SetName(lc->GetName());
    mType = (tlLightType) lc->GetType();
   
    //do subchunk crep here
    mColour = tlColour(lc->GetColour());
    mConstant = lc->GetConstant();
    mLinear = lc->GetLinear();
    mSquared = lc->GetSquared();
    mEnabled = (lc->GetEnabled() != 0);

    int subChunkCount = lc->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = lc->GetSubChunk(i);
      
        switch (subChunk->ID())
        {
            case Pure3D::Light::CONE_PARAM:
            {
                tlLightConeParamChunk* cpChunk = dynamic_cast <tlLightConeParamChunk*> (subChunk);
                assert(cpChunk);
                mPhi = cpChunk->GetPhi();
                mTheta = cpChunk->GetTheta();
                mFalloff = cpChunk->GetFalloff();
                mRange = cpChunk->GetRange();
            }
            break;
            case Pure3D::Light::DIRECTION:
            {
                tlLightDirectionChunk* dirChunk = dynamic_cast <tlLightDirectionChunk*> (subChunk);
                assert(dirChunk);
                mDirection = dirChunk->GetDirection();
            }
            break;
            case Pure3D::Light::POSITION:
            {
                tlLightPositionChunk* posChunk = dynamic_cast <tlLightPositionChunk*> (subChunk);
                assert(posChunk);
                mPosition = posChunk->GetPosition();
            }
            break;
            case Pure3D::Light::SHADOW:
            {
                tlLightShadowChunk* shadowChunk = dynamic_cast <tlLightShadowChunk*> (subChunk);
                assert(shadowChunk);
                mShadow = ( shadowChunk->GetShadow() != 0 );
            }
            break;
            case Pure3D::Light::DECAY_RANGE:
            {
                LoadDecayRange(subChunk);
            }
            break;            
            case Pure3D::Light::ILLUMINATION_TYPE:
            {
                tlLightIlluminationTypeChunk* illuminationTypeChunk =
                    dynamic_cast <tlLightIlluminationTypeChunk*> (subChunk);
                assert(illuminationTypeChunk);
                SetIlluminationType( (tlIlluminationType)(illuminationTypeChunk->GetIlluminationType()) );
            }
            break;
        }
    }
}

void tlLight::LoadDecayRange(tlDataChunk *ch)
{
    tlLightDecayRangeChunk* drChunk = dynamic_cast <tlLightDecayRangeChunk*> (ch);
    assert(drChunk);
    SetDecayRangeType( (tlDecayRangeType)(drChunk->GetDecayRangeType()) );
    SetInnerDecayRange( drChunk->GetInner() );
    SetOuterDecayRange( drChunk->GetOuter() );

    int subChunkCount = drChunk->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = drChunk->GetSubChunk(i);
      
        switch (subChunk->ID())
        {
        case Pure3D::Light::DECAY_RANGE_ROTATION_Y:
            {
                tlLightDecayRangeRotationYChunk* drRotationYChunk =
                    dynamic_cast <tlLightDecayRangeRotationYChunk*> (subChunk);
                assert(drRotationYChunk);
                SetRotationY( drRotationYChunk->GetRotationY() );                
            }
            break;
        }
    }
}

tlDataChunk* tlLight::Chunk()
{
    tlLightChunk *lc = new tlLightChunk;
    lc->SetName(GetName());
    lc->SetVersion(CurrentLightVersion);
    lc->SetType((int)mType);
    lc->SetEnabled((int)mEnabled);
    lc->SetColour(mColour.ULong());
    lc->SetConstant(mConstant);
    lc->SetLinear(mLinear);
    lc->SetSquared(mSquared);

    // Position required for for all light types to support p3dDecayRange & Lights Chooser
    lc->AppendSubChunk(MakePositionSubChunk());

    switch (mType)
    {
        case Directional:
        {
            lc->AppendSubChunk(MakeDirectionSubChunk());
        }
        break;
        case Spot:
        {
            lc->AppendSubChunk(MakeDirectionSubChunk());
            lc->AppendSubChunk(MakeConeParamSubChunk());
        }
        break;
        default: //ambient has no subchunks
            break;
    };

    if ( mDecayRangeType != tlLight::NO_DECAY_RANGE )
    {
        lc->AppendSubChunk( MakeDecayRangeChunk() );
    }

    if ( mIlluminationType != tlLight::POSITIVE_ILLUMINANT )
    {
        lc->AppendSubChunk( MakeIlluminationTypeChunk() );
    }

    lc->AppendSubChunk( MakeShadowSubChunk( ) );
    return lc;
}

void tlLight::Scale(float s)
{
    // Behavioral change: 10 Sep 2002
    // Now always scales position (formerly only for Spot and Point).
    // Ambient and Directional Light position now has relevance when using Pure3D Decay Ranges.
    mPosition *= s;
}

tlDataChunk* tlLight::MakeDirectionSubChunk()
{
    tlLightDirectionChunk* dirChunk = new tlLightDirectionChunk();
    dirChunk->SetDirection(mDirection);
    return dirChunk;
}

tlDataChunk* tlLight::MakePositionSubChunk()
{
    tlLightPositionChunk* posChunk = new tlLightPositionChunk();
    posChunk->SetPosition(mPosition);
    return posChunk;
}

tlDataChunk* tlLight::MakeConeParamSubChunk()
{
    tlLightConeParamChunk* cpChunk = new tlLightConeParamChunk();
    cpChunk->SetPhi(mPhi);
    cpChunk->SetTheta(mTheta);
    cpChunk->SetFalloff(mFalloff);
    cpChunk->SetRange(mRange);
    return cpChunk;
}

tlDataChunk* tlLight::MakeShadowSubChunk()
{
    tlLightShadowChunk* cpChunk = new tlLightShadowChunk();
    cpChunk->SetShadow( (ULONG)mShadow );   
    return cpChunk;
}

//===========================================================================
// tlLight::MakeDecayRangeChunk
//===========================================================================
// Description: Creates the tlLightDecayRangeChunk that describes the 
//              enforced falloff ranges for the light. The volume within
//              the inner decay range has no additional falloff applied;
//              the outer decay range adds a linear falloff to the light's
//              normal falloff to ensure its intensity is zero at the 
//              outer decay boundary.
//
//===========================================================================
tlDataChunk* tlLight::MakeDecayRangeChunk()
{
    tlLightDecayRangeChunk* drChunk = new tlLightDecayRangeChunk();
    drChunk->SetDecayRangeType( mDecayRangeType );
    drChunk->SetInner( mInnerDecayRange );
    drChunk->SetOuter( mOuterDecayRange );
    if( !rmt::Epsilon( mRotationY, 0.0f, EPSILON ) )
    {
        drChunk->AppendSubChunk( MakeDecayRangeRotationYChunk() );
    }

    return drChunk;
}

tlDataChunk* tlLight::MakeDecayRangeRotationYChunk()
{
    tlLightDecayRangeRotationYChunk* drRotationYChunk
        = new tlLightDecayRangeRotationYChunk();
    drRotationYChunk->SetRotationY( mRotationY );

    return drRotationYChunk;
}

tlDataChunk* tlLight::MakeIlluminationTypeChunk()
{
    tlLightIlluminationTypeChunk* illuminationTypeChunk
        = new tlLightIlluminationTypeChunk();
    illuminationTypeChunk->SetIlluminationType( mIlluminationType );

    return illuminationTypeChunk;
}

// Computes light colour at position
// Returns FALSE if in full shadow, TRUE otherwise.
// (shadows currently not completely implemented)
// Computed colour is stored in col.
// Direction to light from pos (in world space) is returned in dir.

bool tlLight::Intensity(const tlPoint& pos, tlColour& col, tlPoint& dir)
{
  
    if( !mEnabled )
        return FALSE;

    float decay = Decay(pos);
    if( decay == 0.0f )
    {
        return FALSE;
    }
    
    if(IlluminationType() == ZERO_ILLUMINANT)
    {
        decay = 0.0f;
    }
    else if(IlluminationType() == NEGATIVE_ILLUMINANT)
    {
        decay *= -1.0f;
    }

    switch( mType )
    {
        case Point:
        {    
            tlPoint L = mPosition - pos;  // vector from light to pos in world space
            float dist = L.Length( );     //distance from light to pos

            float atten = mConstant + dist*(mLinear + dist*mSquared);

            if( atten != 0.0f )
                atten = (float)1./atten;

            if ( dist == 0.0f )
                return FALSE;
            
            atten *= decay; // Scale attenuation if using decay ranges

            dir = L/dist;                             //normalize L as the direction vector from light to pos
            col = mColour*atten;

            return TRUE;

            break;
        }

        case Directional:
        {
            dir = -mDirection;
            col = mColour*decay;

            return TRUE;
        }

        case Spot:
        {
   
            /* SPOTlight : compute light value */      
            float fallAngle = mPhi / 2.0f + mTheta; //cone angle + Penumbra angle is the completely lighting area
            float fall_cos = cosf( fallAngle ); 
            float hot_cos  = cosf( mPhi / 2.0f );
            tlPoint L = mPosition-pos;  // vector to light from pos in world
      
            float dist = L.Length( );

            if (dist==0.0f) return FALSE;
            tlPoint LL = -L * (1.0f / dist);      //normalize and reverse

            // Cosine of angle between L and mDirection
            float cosAngle = DotProd(LL,mDirection);

            //this angle is out of mTheta + mPhi
            if( cosAngle < fall_cos )     //out of the light area
                return false;

            //calculate attenuation
            float atten = mConstant + dist*(mLinear + dist*mSquared);

            if( atten != 0.0f )
                atten = (float)1./atten;  

            col = mColour;
         
            //if the point falls into the penumbra area of the spotlight
            if( cosAngle < hot_cos ) {
                float angle     = rmt::ACos( cosAngle );
                float u = 0.0f;
                if( mTheta > 0.0f )
                    u = ( fallAngle - angle ) / mTheta;
                atten *= u * u * ( 3.0f - 2.0f * u );  /* smooth cubic curve */
            }   
      
            if (atten==0.0f) 
                return FALSE;             

            float fallOff = (float)(pow( (double)cosAngle, (double)mFalloff ))/2.6f;

            atten *= fallOff;

            atten *= decay; // Scale attenuation if using decay ranges

            if (atten==0.0f) 
                return FALSE;
      
            //normalize L
            L = Normalize( L );

            dir = L;  // direction in camera space
            if (atten!=1.0f) col = col * atten;

            return TRUE;
            break;
        }
        case Ambient:
        {
            col = mColour*decay;
            return TRUE;
            break;
        }
        default:
        {
            col = mColour;
            return TRUE;
        }
         
    }
}

// Return a scale to be applied to the light intensity which
// represents the light's decay at some given position.
float tlLight::Decay(const tlPoint &samplePosition) const
{
    float decay = 0.0f;
    if(DecayRangeType() == NO_DECAY_RANGE)
    {
        decay = 1.0f;
    }
    else if(DecayRangeType() == SPHERE_DECAY_RANGE)
    {
        // Computation is simplified since only x-component is used.
        float in = mInnerDecayRange.x;
        float out = mOuterDecayRange.x;
        float distance = (samplePosition - mPosition).Magnitude(); // Distance from sample to light.

        if(distance <= in)
        {
            decay = 1.0f;
        }
        else if(distance < out)
        {
            decay = rmt::SmoothClamp( (out - distance) / (out - in) );
        }
        // else {decay = 0.0f};
    }
    // HBW TODO: For now just treat ELLIPSOID_DECAY_RANGE as CUBOID_DECAY_RANGE.  Update
    // this later with proper range code.
    else if(( DecayRangeType() == CUBOID_DECAY_RANGE) ||
            ( DecayRangeType() == ELLIPSOID_DECAY_RANGE) )
    {
        const tlPoint &in  = mInnerDecayRange;
        const tlPoint &out = mOuterDecayRange;
        tlPoint offset(samplePosition.x - mPosition.x,
                       samplePosition.y - mPosition.y,
                       samplePosition.z - mPosition.z); // Vector from sample to light
        
        if(rmt::Fabs(offset.y) >= out.y)
        {
            decay = 0.0f;
        }
        else
        {
            if(!rmt::Epsilon(mRotationY, 0.0f, EPSILON))
            {
                float tmpX = rmt::Cos(mRotationY) * offset.x +
                             rmt::Sin(mRotationY) * offset.z;
                offset.z = rmt::Cos(mRotationY) * offset.z -
                           rmt::Sin(mRotationY) * offset.x;
                offset.x = tmpX;
            }
            
            offset.x = rmt::Fabs(offset.x);
            offset.y = rmt::Fabs(offset.y);
            offset.z = rmt::Fabs(offset.z);
            
            if( offset.x >= out.x || offset.z >= out.z )
            {
                decay = 0.0f;
            }
            else
            {
                decay = 1.0f;
                
                if( offset.x > in.x )
                {
                    decay *= rmt::SmoothClamp((out.x - offset.x) / (out.x - in.x));
                }
                if( offset.y > in.y )
                {
                    decay *= rmt::SmoothClamp((out.y - offset.y) / (out.y - in.y));
                }
                if( offset.z > in.z )
                {
                    decay *= rmt::SmoothClamp((out.z - offset.z) / (out.z - in.z));
                }
            }
        }
    }

    return decay;
}

// Compute the total power of the light taking into consideration the
// size, color, intensity, etc.  Only works with quadratic lighting since
// this is the only physically valid light ( others lose or gain power )
// as they propogate through space ).
float tlLight::Power() const
{
    if( !mEnabled )
    {
        return 0.0f;
    }

    // Use whatever attenuation factor is set for this light: squared, linear, or constant.
    float intensity = 0.0f;
    if( mSquared != 0.0f ) 
    {
        intensity = SQUARED_FALLOFF_SCALE / mSquared;
    }
    else if( mLinear != 0.0f )
    {
        intensity = LINEAR_FALLOFF_SCALE / mLinear;
    }
    else if( mConstant != 0.0f )
    {
        intensity = CONST_FALLOFF_SCALE / mConstant;
    }
    else 
    {
        return 0;
    }
    float power     = 0.0f;

    switch( mType )
    {
        case Point:
        {
            // Solid angle of a sphere times intensity.
            power = 4.0f * PI * intensity * intensity;
            
            // Use the value of the maximum color.
            power *= mColour[mColour.MaxChannel()];
            break;
        }

        case Spot:
        {  
            float colour = mColour[mColour.MaxChannel()];
            float halfConeAngle = mPhi / 2.0f;

            // Find the spotlight intensity integrated over the main light cone.
            float tmpA      = ::powf( rmt::Cos( halfConeAngle ), mFalloff + 1.0f );
            float conePower = -2.0f * PI * ( tmpA - 1.0f ) / ( 2.6f * ( mFalloff + 1.0f ) );

            // Find the spotlight intensity integrated over the penumbra (a spherical
            // ring just outside the main spherical cap).  There is
            // no analytical solution to this integral so use numerical integration.
            // With 100 samples this simple trapazoid integration should be close enough.
            float penumbraPower = 0.0f;
            if( mTheta > 0.0f )
            {
                int numSamples = 100;  // Increasing numSamples increases accuracy.
                float dTheta = mTheta / (float)numSamples;
                float theta  = 0;
                int i;

                // Use half the value at the min angle = halfConeAngle.
                penumbraPower += 0.5f * ::powf( rmt::Cos( halfConeAngle ), mFalloff );

                for( i = 1; i < numSamples; i++)
                {
                    // Use the full value of the inside samples.
                    theta = (float)i * dTheta + halfConeAngle;
                    float u = (float)( numSamples - i ) / (float)numSamples;
                    float cubic = u * u * ( 3.0f - 2.0f * u );
                    penumbraPower += cubic * ::powf( rmt::Cos( theta ), mFalloff );
                }
                // Ignore last sample since cubic will be zero (u = 0).

                // Divide by the number of samples and the falloff scale.
                penumbraPower /= 2.6f * (float)numSamples;
            }

            power  = ( conePower + penumbraPower ) * intensity * intensity;
            power *= colour;
            
            break;
        }
        case Directional:
        default:
        {
            power = 0.0f;
            break;
        }
    }

    return power;
}

tlColour tlLight::DiffuseLight(const tlPoint&  pos, const tlPoint& norm)
{
    tlColour result(0.0f, 0.0f, 0.0f);
    tlColour lightcol;
    tlPoint  lightdirection;
   
    if(Intensity(pos,lightcol,lightdirection))
    {
        if(Type() != Ambient)
        {
            float costheta = DotProd(lightdirection,norm);

            if(costheta > 0.0f)
            {      // light is in front of the surface
                result = lightcol * costheta;
            }
        }
        else{
            result = lightcol;
        }
           
    }
    return result;
}
//-----------------------------------------------------------------------------
//          return the intensity of color from the light
//-----------------------------------------------------------------------------
tlColour tlLight::DiffuseLightIntensity(const tlPoint&  pos, const tlPoint& norm)
{
    tlColour result;
    tlColour lightcol;
    tlPoint  lightdirection;
    float    costheta;
   
   
    if(Intensity(pos,lightcol,lightdirection)){
        costheta = DotProd(lightdirection,norm);
        if(Type() != Ambient && costheta>0.0f){      // light is in front of the surface
            result = lightcol * costheta;
        }
        else{
            result = lightcol;
        }
    }
   
    float h, l, s;
    result.GetHLS( h, l, s );

    result.red = result.blue = result.green = l;

    return result;
}

tlColour  tlLight::DiffuseLightShadow(const tlPoint&  pos, const tlPoint& norm, tlBSPTree *tritree )
{
    tlColour result(0,0,0);
    tlColour lightcol;
    tlPoint  lightdirection;

    //test if this point is lighted by this light or not, if not return black
    if( IsLighted( pos, norm ) == false )
        return result;

    if(InShadow( pos,  tritree ) ){
        return result;       
    }

    if(Intensity(pos,lightcol,lightdirection))
    {
        if(Type() != Ambient)
        {

            float costheta = DotProd(lightdirection,norm);
            if(costheta>0.0f)
            {      // light is in front of the surface
                result = lightcol * costheta;
            }
        }
        else
        {
            result = lightcol;
        }
    }
    return result;
}

bool
tlLight::InShadow(const tlPoint& pos, tlTriMeshIntersect& mesh)
{
    if( mShadow == false )
        return false;

    switch(mType)
    {
        case Point:
        case Spot:
        {    
            return mesh.Intersect( tlRay(pos, mPosition,  mColour) );
        }
        break;
        case Directional:
        {
            tlPoint f = pos + (mDirection * -(mesh.Sphere().radius * 2));
            return mesh.Intersect( tlRay(pos, f, mColour) );
        }
        break;
        case Ambient:
            return false;
        default:
            return false;
    }
}

//------------------------------------------------------------------------------
//      test if a light is blocked by any triangles of mesh which are not marked
//------------------------------------------------------------------------------
bool
tlLight::InShadow(const tlPoint& pos, tlTriMeshIntersect& mesh, int mark )
{
    if( mShadow == false )
        return false;

    switch(mType)
    {
        case Point:
        case Spot:
        {    
            return mesh.Intersect(tlRay(pos, mPosition, mColour), mark);
        }
        break;
        case Directional:
        {                 
            //turn off testing shadow for directional lights

            tlPoint f = pos + (mDirection * -(mesh.Sphere().radius * 2));
            return mesh.Intersect(tlRay(pos, f, mColour), mark);

        }
        break;
        case Ambient:
            return false;
        default:
            return false;
    }
}

bool
tlLight::InShadow(const tlPoint& pos, tlBSPTree *tritree )
{
    if( mShadow == false )
        return false;

    switch(mType)
    {
        case Point:
        case Spot:
        {    
            return tritree->BlockTest( tlRay(pos, mPosition,  mColour) );
        }
        break;
        case Directional:
        {
         
            return tritree->BlockTest( tlRay(pos, -mDirection, mColour, tlRay::Infinite) );
        }
        break;
        case Ambient:
            return false;
        default:
            return false;
    }
}

//--------------------------------------------------------------------------------
//      Add photons emitting from this light to a photon-map
//      default number of photons is 1000
//      return value:  the actual number of photons added 
//--------------------------------------------------------------------------------
int tlLight::AddPhotons( tlPhotonMap &pmap, const tlTable<tlTriMeshIntersect *> & scene, 
                         const tlTable<tlShader *> & shaders, int photonsNum  )
{
    pmap.AddLight( *this );
    Power();
    switch( mType )
    {
        case Point:
        {
            return AddPhotonsForPointLight( pmap, scene, shaders, photonsNum );
            break;
        }

        case Spot:
        {   
            return AddPhotonsForSpotLight( pmap, scene, shaders, photonsNum );
            break;
        }
        case Ambient:
        case Directional:
        default:
        {
            return 0;
        }
    }
}

int tlLight::AddPhotonsForPointLight( tlPhotonMap &pmap,
                                      const tlTable<tlTriMeshIntersect *> &scene, 
                                      const tlTable<tlShader *> &shaders,
                                      int photonsNum  )
{
    assert( mType == Point );
    // tlTable<RayParam *> rays;           //store all the rays that creates photons;
    int photonCount = 0;

    //first pass, we shoot uniformly-distributed rays around the point light
    //iterate over alpha and theta angle

    double theta;
    double phi   = 0.0;
    
    // tlRay ray;  
    tlPoint dir, intersect;

    float maxPhotonIntensity = ( mColour.red > mColour.green ) ? mColour.red : mColour.green;
    if( mColour.blue > maxPhotonIntensity )
    {
        maxPhotonIntensity = mColour.blue;
    }
    if( maxPhotonIntensity <= 0.0f )
    {
        return 0;
    }
    
    numPhotons += photonsNum;
    float photonScale = maxPhotonIntensity * 100.0f;

    // Set up variables for stratified sampling
    int i1 = (int)( ::sqrtf( (float)photonsNum ) ); // Number samples on one side.
    float oneOver_i1 = 1.0f / i1;
    int i2 = i1 * i1;  // Number of valid samples
    const tlColour normalizedPhotonIntensity( mColour * ( 1.0f / maxPhotonIntensity ) );
    int i;
    for( i = 0; i < photonsNum; i++ )
    {
        float r1 = Random();
        float r2 = Random();

        if( i < i2 )
        {
            // Use stratified sampling.  The unit square is divided into i2 sub-squares.
            // Each i selects a new sub-square in which to sample.
            float iFrac      = oneOver_i1 * ( i / i1 );
            float iRemainder = oneOver_i1 * ( i % i1 );
            r1 = oneOver_i1 * r1 + iFrac;
            r2 = oneOver_i1 * r2 + iRemainder;
        }
        // Use a1 and a2 to deterimine a random theta and phi.
        phi   = 2.0f * PI * r1;
        theta = acos( 1.0f - 2.0 * r2 );            
    
        dir.z = (float)( cos( theta ) );
        dir.x = (float)(sin(theta)*cos(phi));
        dir.y = (float)(sin(theta)*sin(phi));
        
        // tlRay ray( mPosition, dir, mColour, tlRay::Infinite );
        tlRay ray( mPosition, dir, normalizedPhotonIntensity, tlRay::Infinite );
        //if( ray.Intersect( scene ) )
        //{
        //   ray  
        //}
        
        //tlPoint intersect;
        //int index = -1;
        //tlPhoton photon();
        
        // a closest intersection is found
        //if( TestPointLightIntersection( theta, phi, scene, intersect, index, dir ) ){
        int  scatterDepth = 0;
        bool isAlive = true;
        while( isAlive && ray.Intersect( scene ) ) 
        {
            tlRay currentRay( ray ); // ray will be used as the next ray.
            tlRay::tlScatterMethod scatterMethod = currentRay.Scatter( ray, shaders );

            switch( scatterMethod )
            {
                case tlRay::eAbsorb:
                {
                    isAlive = false;
                    // fall through to eDiffuse
                }
                case tlRay::eDiffuse:
                {

                    //the color of the photon might be the attenuated color
                    //of the light ????
                    pmap.Store( currentRay.Colour() * photonScale, currentRay.End(), 
                                currentRay.Direction(), (unsigned char)scatterDepth, *this );
                    photonCount++;
                    break;
                 
                }
                case tlRay::eReflect:
                {
                    // Don't store info in photonmap.
                    break;
                }
                case tlRay::eTransmit:
                {
                    // eTransmit not yet implemented.
                    isAlive = false;
                    break;
                }
                case tlRay::eRemoved:
                default:
                {
                    isAlive = false;
                    break;
                }
            }
           
            scatterDepth++;
            if( scatterDepth >= mMaxDepth )
            {
                isAlive = false;
            }
           
            // RayParam * param = new RayParam;
            // param->theta = theta;
            // param->phi = phi;
            // rays.Append( param );    
        }
    }
    
    //    int rayCount = rays.Count();
    
    //clean the allocated memory for rays
    //for( i = rays.Count( ) - 1; i >= 0; --i )
    //    rays.Delete( i, 1 );
    
    return photonCount;
}

int tlLight::AddPhotonsForSpotLight( tlPhotonMap &pmap, const tlTable<tlTriMeshIntersect *> &scene, 
                                     const tlTable<tlShader *> &shaders, int photonsNum  )
{
    assert( mType == Spot );
    // tlTable<RayParam *> rays;           //store all the rays that creates photons;
    int photonCount = 0;

    int numTheta = (int) sqrt((double)photonsNum);
    int numPhi   = 2 * numTheta;

    //first pass, we shoot uniformly-distributed rays around the point light
    //iterate over alpha and theta angle
    int i;
    double dtheta, dphi;
    dtheta = PI / numTheta;
    dphi   = 2.0 * PI / numPhi;

    double theta;
    double phi   = 0.0;
    
    // tlRay ray;  
    tlPoint dir, intersect;

    float maxPhotonIntensity = ( mColour.red > mColour.green ) ? mColour.red : mColour.green;
    if( mColour.blue > maxPhotonIntensity )
    {
        maxPhotonIntensity = mColour.blue;
    }
    if( maxPhotonIntensity <= 0.0f )
    {
        return 0;
    }
    
    numPhotons += photonsNum;
    float photonScale = maxPhotonIntensity * 100.0f;

    // Set up variables for stratified sampling
    int i1 = (int)( ::sqrtf( (float)photonsNum ) ); // Number samples on one side.
    float oneOver_i1 = 1.0f / i1;
    int i2 = i1 * i1;  // Number of valid samples
    const tlColour normalizedPhotonIntensity( mColour * ( 1.0f / maxPhotonIntensity ) );
    for( i = 0; i < photonsNum; i++ )
    {
        /* We want to generate random directions to correspond to the Maya definition 
           of a spot light:
           in main light,  0.0 <= theta <= ( m_phi / 2.0 )
           in penumbra,    ( m_phi / 2.0 ) < theta < ( m_phi / 2.0 + m_theta )
           Directions are selected so as to produce a distribution proportional to
           pow( cos( theta ), mFalloff).  While this can be done algebraicly, the rejection
           method must be used to create the correct distribution in the penumbra
           region.
        */

        bool reject = false;
        
        do
        {
            float r1 = Random();
            float r2 = Random();
            // Use stratified sampling only if this i hasn't already been rejected.
            if( !reject )
            {
                if( i < i2 )
                {
                    // Use stratified sampling.  The unit square is divided into i2 sub-squares.
                    // Each i selects a new sub-square in which to sample.
                    float iFrac      = oneOver_i1 * ( i / i1 );
                    float iRemainder = oneOver_i1 * ( i % i1 );
                    r1 = oneOver_i1 * r1 + iFrac;
                    r2 = oneOver_i1 * r2 + iRemainder;
                }
            }
            reject = false;
            
            // Use r1 and r2 to deterimine a random theta and phi.
            float halfFullAngle = mPhi / 2.0f + mTheta; // From spotlight axis to outside of penumbra
            float tmpA          = ::powf( rmt::Cos( halfFullAngle ), mFalloff + 1.0f );
            theta = acos( powf( 1.0f - r2 * ( 1.0f - tmpA ), 1.0f / ( mFalloff + 1.0f ) ) );
            phi   = 2.0f * PI * r1; // This phi is the azimuthal angle.
    
            // If the selected point is in the penumbra, fit the additional cubic distribution
            // by using rejection.
            if( theta > mPhi / 2.0f )
            {
                float u = (float)( ( halfFullAngle - theta ) / mTheta );
                float cubic = u * u * ( 3.0f - 2.0f * u ); // The target distribution.
                float r3 = Random(); // The test for distribution fit.

                if( r3 > cubic )
                {
                    reject = true;
                }
            }
        } while( reject );
        
        dir.y = (float)( cos( theta ) );
        dir.x = (float)( sin( theta ) * cos( phi ) );
        dir.z = (float)( sin( theta ) * sin( phi ) );
        tlPoint newDir( dir ); // This will be dir tranformed to world space.
        ::Normalize( mDirection );

        tlPoint u( 1.0f, 0.0f, 0.0f ), v( 0.0f, 0.0f, 1.0f ); // new coordinate system is (u, mDirection, v).
        const float MAX_SAFE = 0.9999f; // Limit of safe y values to rotate.
        if( fabsf( mDirection[1] ) < MAX_SAFE )
        {
            // u = ::Normalize( ::CrossProd( normal, tlPoint( 0.0f, 1.0f, 0.0f ) ) );
            u = ::Normalize( tlPoint( -mDirection.z, 0.0f, mDirection.x ) ); // Optimized version of above
            v = ::Normalize( ::CrossProd( u, mDirection ) );
            int j;
            for( j = 0; j < 3; j++ )
            {
                newDir[j] = dir[0] * u[j] + dir[1] * mDirection[j] + dir[2] * v[j];
            }
        }
        else if( mDirection[1] < -MAX_SAFE )  // Too close to neg. y-axis, Assume it is y-axis.
        {
            // newDir[0] is already correct
            newDir[1] *= -1.0f;
            newDir[2] *= -1.0f;
        }
        // else if normal very closely alligned to y-axis, leave alone.
        
        // tlRay ray( mPosition, dir, mColour, tlRay::Infinite );
        tlRay ray( mPosition, newDir, normalizedPhotonIntensity, tlRay::Infinite );
        //if( ray.Intersect( scene ) )
        //{
        //   ray  
        //}
        
        //tlPoint intersect;
        //int index = -1;
        //tlPhoton photon();
        
        // a closest intersection is found
        //if( TestPointLightIntersection( theta, phi, scene, intersect, index, dir ) ){
        int  scatterDepth = 0;
        bool isAlive = true;
        while( isAlive && ray.Intersect( scene ) ) 
        {
            tlRay currentRay( ray ); 
            tlRay::tlScatterMethod scatterMethod = currentRay.Scatter( ray, shaders );

            switch( scatterMethod )
            {
                case tlRay::eAbsorb:
                {
                    isAlive = false;
                    // fall through to eDiffuse
                }
                case tlRay::eDiffuse:
                {

                    //the color of the photon might be the attenuated color
                    //of the light ????
                    pmap.Store( currentRay.Colour() * photonScale, currentRay.End(), 
                                currentRay.Direction(), (unsigned char)scatterDepth, *this );
                    photonCount++;
                    break;
                 
                }
                case tlRay::eReflect:
                {
                    // Don't store info in photonmap.
                    break;
                }
                case tlRay::eTransmit:
                {
                    // eTransmit not yet implemented.
                    isAlive = false;
                    break;
                }
                case tlRay::eRemoved:
                default:
                {
                    isAlive = false;
                    break;
                }
            }
           
            scatterDepth++;
            if( scatterDepth >= mMaxDepth )
            {
                isAlive = false;
            }
           
            // RayParam * param = new RayParam;
            // param->theta = theta;
            // param->phi = phi;
            // rays.Append( param );    
        }
    }
    
    //    int rayCount = rays.Count();
    
    //clean the allocated memory for rays
    //for( i = rays.Count( ) - 1; i >= 0; --i )
    //    rays.Delete( i, 1 );
    
    return photonCount;
}

//------------------------------------------------------------------------
//          transform a light
void tlLight::Transform( tlMatrix matrix )
{
    mPosition = mPosition*matrix;
    mDirection = VectorTransform( matrix, mDirection );
    mDirection = Normalize( mDirection );
}
//-------------------------------------------------------------------------
//      Return the dirction of they ray from light to a point
tlPoint tlLight::GetRayDirection( tlPoint  pos ) const
{
    tlPoint dir;
    switch( mType ){
        case Directional:
            dir =  mDirection;
            break;

        case Point:
        case Spot:
            dir = pos - mPosition;
            break;

        default:
            dir = pos - mPosition;
            break;
    }

    dir = Normalize( dir );

    return dir;
}

//-------------------------------------------------------------------------
//      check if a pos is within the  lighted area of a light
bool tlLight::IsLighted( tlPoint pos )  const
{    
    switch( mType ){
        case Point:
        case Directional:
        case Ambient:
            return ( Decay( pos ) != 0.0f );
            break;

        case Spot:
        {
            tlPoint ray = pos - mPosition;
            ray = Normalize( ray );
            float lightArea = (float)cos( mPhi / 2.0f + mTheta );
            float value = DotProd(ray,mDirection);
            if( value >= lightArea )
                return ( Decay( pos ) != 0.0f );
            else
                return false;
        }
        break;

        //should not arrive though
        default:
            return false;
    }
}

//-------------------------------------------------------------------------
//      check if a pos is within the  lighted area of a light
bool tlLight::IsLighted( tlPoint pos, tlPoint norm )  const
{
    tlPoint dir = GetRayDirection( pos );

    //check if the point is back-point
    if( Type() != Ambient && DotProd(dir,norm) >= 0.f )
        return false;

    switch( mType ){
        case Point:
        case Directional:
        case Ambient:
            return ( Decay( pos ) != 0.0f );
            break;

        case Spot:
        {
            tlPoint ray = pos - mPosition;
            ray = Normalize( ray );
            float lightArea = (float)cos( mPhi / 2.0f + mTheta );
            float value = DotProd(ray,mDirection);
            if( value >= lightArea )
                return ( Decay( pos ) != 0.0f );
            else
                return false;
        }
        break;

        //should not arrive though
        default:
            return false;
    }
}
//---------------------------------------------------------------------------
//      check if a plane could be lighted by this light or not
bool tlLight::IsLighted( tlPlane plane ) const
{
    switch( mType ){
        case Point:
            if( plane.CheckSide( mPosition ) == tlPlane::Back )
                return false;
            else
                return true;
            break;

        case Spot:
        {
            float mini = (float)cos( mPhi / 2.0f + mTheta );
            if( DotProd(mDirection,plane.normal) > mini )
                return false;
            else
                return true;
        }                    
        break;

        case Directional:
            if( DotProd(plane.normal,mDirection) > 0.f )
                return false;
            else
                return true;
            break;

        case Ambient:
            return true;

            //should not arrive though
        default:
            return false;
    }
}

//===========================================================================
// from rmt::random.cpp

static inline unsigned int nextRandomValue(unsigned int &u, unsigned int &l)
{
    return ((u = 36969 * (u & 65535) + (u >> 16)) << 16) + 
        ((l = 18000 * (l & 65535) + (l >> 16)) & 65535);
}

void tlLight::SetSeed(unsigned seed)
{
    if(seed == 0)
        seed = 0xfc7d2ba2;

    upperBits = seed >> 16;
    lowerBits = seed & 0xffff;
}

void tlLight::SetSeed(unsigned upper, unsigned lower)
{
    if(upper == 0)
        upper = 0xfc7d2ba2;

    if(lower == 0)
        lower = 0x534ffd12;

    upperBits = upper;
    lowerBits = lower;
}

void tlLight::GetSeed( unsigned &upper, unsigned &lower ) const
{
    upper = upperBits;
    lower = lowerBits;
}

float tlLight::Random()
{
#if 1 // bit packing version
    float result;

    // stuff low 23 bits into mantissa - exponent = 127
    *(unsigned*)(&result) = 0x3f800000 | (nextRandomValue(upperBits, lowerBits) & 0x7fffff);
    return result - 1.0f;

#else // "safe" version
    return float(nextRandomValue(upperBits, lowerBits) * 2.328306e-10);
#endif
}

//*****************************************************************************
// tlLightLoader
//*****************************************************************************
tlLightLoader::tlLightLoader() : 
    tlEntityLoader(Pure3D::Light::LIGHT)
{
}

tlEntity*
tlLightLoader::Load(tlDataChunk* chunk)
{
    return new tlLight(chunk);
}

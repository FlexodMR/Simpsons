/*===========================================================================
    File:: tlPhotonMap.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPHOTONMAP_HPP
#define _TLPHOTONMAP_HPP

#include "tlFile.hpp"
#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlBox.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlPrimGroupMesh.hpp"

class  tlLight;
struct tlNearestPhotons;

//=============================================================================
// The structure representing photon hits on diffuse surfaces.  This should
// be as small as possible since there may be a huge number of these persistant
// for one scene (up to 1 million?).
class tlPhoton
{
public:
   tlPhoton();
   tlPoint  pos;        // point in space
   short    plane;      // splitting plane for kd-tree
   unsigned char theta; // angle around normal from (local) x-axis
   unsigned char phi;   // angle down from normal
   tlColour power;      // photon power (RGB)
   unsigned char numScatterings; // Number bounces from the source.
   unsigned char lightIndex; // Index of the source for this photon

   tlPoint Direction() const; // convert theta,phi to vector
   float   Theta() const;     // angle in radiance
   float   Phi() const;       // angle in radians
   // void    Intersect();
   bool operator==(const tlPhoton& p) const; // for tlTable

   // File IO methods
   void Read( tlFile* f );
   void Write( tlFile* f );
   void Print( int index, int indent = 0 );
   void PrintFormatted( int index, int indent = 0 );
   void Init();

   bool GetFieldValue( char*, int ) const;
   static bool GetFieldUpdatable();
   bool SetFieldValue( const char* );

   
};

//=============================================================================
// Keep an index list of lights which have generated photons.  Each photon then
// has reference to its source light so that post-processing can be performed on
// the lights.  For example the intensity of the lights can be changed without
// the photon map having to be re-run.  
class tlPhotonMapLights
{
public:
   tlPhotonMapLights();
   virtual ~tlPhotonMapLights();

   // const tlLight*    GetLight( int index ) const;
   char* GetLightName( int index ) const;
   int   GetLightIndex( const char *name ) const;
   int   GetLightIndex( const tlLight &light ) const;
   float GetScale( int index ) const;
   int   GetMaxIndex( ) const;
   bool  AddLight( const tlLight &light );  
   bool  SetScale( int index, float scale );
   bool operator==(const tlPhotonMapLights& lights) const;

   void PreInitialize( int count, char** lightNames, float* scale );

private:
   int     m_next;  // One beyond last valid index.
   char  *(m_name[256]);
   const tlLight *(m_pLight[256]);
   float   m_scale[256];
};

//=============================================================================
// Responsible for storing and processing the created photons.  The most 
// usefull function is finding the irradiance at a point in space acording to
// the photon map.  The photon creation is directed by tlLight.
class tlPhotonMap : public tlEntity
{
public:
   tlPhotonMap( tlDataChunk *ch = NULL );
   virtual ~tlPhotonMap();

   void LoadFromChunk16(tlDataChunk* ch);
   void LoadFromChunk(tlDataChunk* ch);

   tlDataChunk *Chunk16();
   tlDataChunk *Chunk();

   void Store(const tlColour& col,
              const tlPoint& pos,
              const tlPoint& dir,
              const unsigned char numScatterings,
              const tlLight& light );
   void Store( const tlPhoton& photon );
   int  GetPhotonCount() const;
   bool SetMaxNumberSampled( int max );
   bool SetMaxRadiusSampled( float radius );
   void IgnorePrimary( bool ignorePrimary );
   bool IsPrimaryIgnored( ) const;
   bool AddLight( const tlLight &light );
   bool Resize( int size );

   void ScalePhotonPower( const float scale );  //  1 / number of emmitted photons

   void Balance();      // balance the kd-tree

   tlColour Irradiance(const tlPoint& pos,
                       const tlPoint& normal) const;

   tlPrimGroupMesh* CreateMesh(const float length) const; // Diamond geometry for photons
    static const char* PHOTON_GEOMETRY_SHADER;  // Name of shader applied to the diamond geometry
   
private:

   void LocatePhotons( tlNearestPhotons* const np, bool ignorePrimary,
                       const int index = 0) const;

   void BalanceSegment( tlPhoton **pbal,
                        tlPhoton **porg,
                        const int index,
                        const int start,
                        const int end);

   void MedianSplit( tlPhoton** p,
                     const int start,
                     const int end,
                     const int median,
                     const int axis);
   

   tlTable<tlPhoton> m_photons;
   int half_stored_photons;
   int prev_scale;
   int m_MaxNumberSampled;
   float m_MaxRadiusSampled;
   bool m_ignorePrimary;
   tlPhotonMapLights m_lights;

   tlBox box;
   static const int CurrentPhotonMapVersion;
   tlPrimGroup* GenPhotonMarker(const float length, const tlColour &power) const;

   tlDataChunk* MakePhotonSubChunk();
};
#endif


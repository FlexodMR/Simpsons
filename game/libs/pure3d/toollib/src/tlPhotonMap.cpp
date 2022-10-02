/*===========================================================================
File:: tlPhotonMap.cpp

  Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.
  
===========================================================================*/

#include "tlPhotonMap.hpp"
#include "tlPhotonMapChunk.hpp"
#include <assert.h>
#include <math.h>
#include <string.h>
#include "tlFile.hpp"
#include "tlLight.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlVertex.hpp"
#include "tlMatrix.hpp"

#ifndef M_PI
const float M_PI  =  3.1415926535f;
#endif

struct tlNearestPhotons
{
    int max;
    int found;
    bool got_heap;
    tlPoint pos;
    float* dist2;
    const tlPhoton** index;
};

// tlPhoton::tlPhoton() : numScatterings( 0 )
tlPhoton::tlPhoton() : pos( -777.0f, -777.0f, -777.0f ), plane( -777 ), 
   theta( 0xff ), phi( 0xff ), power( -777.0f, -777.0f, -777.0f ),
   numScatterings( 0xff ), lightIndex( 0xff )
{
}

tlPoint 
tlPhoton::Direction() const
{
    // The photon mapping book does this with a lookup table.
    // We may want to do that for speed
    
    float t = float(theta) * (1.0f/256.0f) * M_PI;
    float p = float(phi) * (1.0f/256.0f) * M_PI * 2.0f;
    
    float x = sinf(t) * cosf(p);
    float y = sinf(t) * sinf(p);
    float z = cosf(t);
    
    return tlPoint(x,y,z);
    
}

float 
tlPhoton::Theta() const
{
    
    // The photon mapping book does this with a lookup table.
    // We may want to do that for speed
    
    float thetaRadians = float(theta) * (1.0f/256.0f) * M_PI;

    return thetaRadians;
}

float 
tlPhoton::Phi() const
{
    // The photon mapping book does this with a lookup table.
    // We may want to do that for speed
    
    float phiRadians = float(phi) * (1.0f/256.0f) * M_PI * 2.0f;
    
    return phiRadians;
}

bool tlPhoton::operator==(const tlPhoton& p) const
{
    return ( phi   == p.phi    &&
             plane == p.plane  &&
             pos   == p.pos    &&
             power == p.power  &&
             theta == p.theta  &&
             lightIndex == p.lightIndex );
    
}

void 
tlPhoton::Read(tlFile* f)
{
   pos   = f->GetPoint();
   // Dont' read in plane.  plane = f->GetWord();
   theta = f->GetChar();
   phi   = f->GetChar();
   power.red   = f->GetFloat();
   power.green = f->GetFloat();
   power.blue  = f->GetFloat();
   numScatterings = f->GetChar();
   lightIndex  = f->GetChar();
}

void
tlPhoton::Write(tlFile* f)
{
   f->PutPoint( pos );
   // Don't save plane.  f->PutWord( plane );
//   does putchar work for unsigned char?;
   f->PutChar( theta );
   f->PutChar( phi );
   f->PutFloat( power.red );
   f->PutFloat( power.green );
   f->PutFloat( power.blue );
   f->PutChar( numScatterings );
   f->PutChar( lightIndex );
}

void
tlPhoton::Print( int index, int indent )
{
   printf( "%*s%3d\n", indent, "", index );
   printf( "%*s   Position  = %3.3f %3.3f %3.3f\n", indent, "", pos.x, pos.y, pos.z );
   printf( "%*s   Direction = %3.3f %3.3f\n", indent, "", Theta(), Phi() );
   printf( "%*s   Power     = %3.3f %3.3f %3.3f\n", indent, "", 
            power.red, power.green, power.blue );
   printf( "%*s   numScat   = %d\n", indent, "", (int)numScatterings );
   printf( "%*s   lightIdx  = %d\n", indent, "", (int)lightIndex );
}

void
tlPhoton::PrintFormatted(int index, int indent)
{
}

void
tlPhoton::Init()
{
}

bool
tlPhoton::GetFieldValue(char* val, int len) const
{
   char buf[256];

   sprintf( buf, "Position( %3.3f, %3.3f, %3.3f ), "
                 "Direction( %3.3f, %3.3f ), "
                 "Power( %3.3f, %3.3f, %3.3f), "
                  "numScat( %u ), lightIdx( %u )",
                 pos.x, pos.y, pos.z, 
                 Theta(), Phi(), 
                  power.red, power.green, power.blue,
                  (int)numScatterings, (int)lightIndex );
 
   ::strncpy(val, buf, len);

   return true;
}

bool
tlPhoton::GetFieldUpdatable()
{
   return false;
}

bool
tlPhoton::SetFieldValue(const char*)
{
   return false;
}

tlPhotonMapLights::tlPhotonMapLights() : m_next(0)
{ 
   int i; 
   for( i = 0; i < 255; i++ )
   {
      m_name[i] = NULL;
      m_pLight[i]    = NULL;
      m_scale[i]     = 1.0f;
   }
}

tlPhotonMapLights::~tlPhotonMapLights()
{
   int i;
   for( i = 0; i < m_next; i++ )
   {
      delete m_name[i];
   }
}

//tlLight* tlPhotonMapLights::GetLight( int index ) const
//{
//   if( index < 0 || index >= m_next )
 //  {
//      return NULL;
//   }
//
//   return m_pLight[index];
//}

char* tlPhotonMapLights::GetLightName( int index ) const
{
   if( index < 0 || index >= m_next )
   {
      return NULL;
   }

   return m_name[index];
}

int tlPhotonMapLights::GetLightIndex( const char *name ) const
{
   int result = -1;

   int i;
   for( i = 0; i < m_next; i++ )
   {
      if( ::strcmp( name, m_name[i] ) )
      {
         result = i;
         break;
      }
   }

   return result;
}

int tlPhotonMapLights::GetLightIndex( const tlLight &light ) const
{
   int result = -1;

   int i;
   for( i = 0; i < m_next; i++ )
   {
      if( m_pLight[i] == &light )
      {
         result = i;
         break;
      }
   }

   return result;
}

float tlPhotonMapLights::GetScale( int index ) const
{
   if( index < 0 || index >= m_next )
   {
      return -777.0;
   }

   return m_scale[index];
}


int tlPhotonMapLights::GetMaxIndex() const
{
   return m_next - 1;
}

//=============================================================================
// Add a new light to the list.  return ( is the light added? ).
bool tlPhotonMapLights::AddLight( const tlLight &light )
{      
   bool result = false;
   int  index = m_next;
   bool lightAlreadyAdded = GetLightIndex( light ) != -1;


   if( !lightAlreadyAdded && index < 255 )
   {
      m_pLight[index] = &light;         // Add the pointer to the light.
      m_name[index] = ::strnew( light.GetName() ); // Add the name to the list.
      m_next++;
      result = true;
   }

   return result;
}

bool tlPhotonMapLights::SetScale( int index, float scale )
{
   bool result = false;

   if( index < 0 || index >= m_next )
   {
      m_scale[index] = scale;
      result = true;
   }

   return result;
}

bool tlPhotonMapLights::operator==(const tlPhotonMapLights& lights) const
{
   if( this->m_next != lights.m_next )
   {
      return false;
   }

   int i;
   for( i = 0; i < m_next; i++ )
   {
      if( ::strcmp( this->m_name[i], lights.m_name[i] ) != 0 ||
          this->m_scale[i]  != lights.m_scale[i]  ||
          this->m_pLight[i] != lights.m_pLight[i] )
      {
         return false;
      }
   }

   return true;
}

// This is only half of the initializatio process.  After this is called, a call
// must also be made to Initialize() to initialize m_plight.
void tlPhotonMapLights::PreInitialize( int count, char** lightNames, float* scale )
{
   m_next = count;
   int i;
   for( i = 0; i < count; i++ )
   {
      m_name[i]  = ::strnew( lightNames[i] );
      m_scale[i] = scale[i];
   }
}

const char* tlPhotonMap::PHOTON_GEOMETRY_SHADER = "photonGeometryShader";

const int tlPhotonMap::CurrentPhotonMapVersion = 0x0100; // Version 1.00

tlPhotonMap::tlPhotonMap( tlDataChunk *ch ) :
half_stored_photons( 0 ),
prev_scale( 0 ),
m_MaxNumberSampled( 50 ),
m_MaxRadiusSampled( 0.1f ),
m_ignorePrimary( true )
{
    box.Invalidate();
    if (ch != NULL) LoadFromChunk(ch);
}

tlPhotonMap::~tlPhotonMap()
{
}

tlColour
tlPhotonMap::Irradiance(const tlPoint& pos,
                        const tlPoint& normal) const
{
   if(m_photons.Count() <= 0) // Quick exit if no photons in the map.
   {
      return tlColour( 0.0f, 0.0f, 0.0f );
   }

    tlColour result( 0.0f, 0.0f, 0.0f );
    // const int MIN_PHOTONS_REQUIRED = 8;
    const int MIN_PHOTONS_REQUIRED = 3;
    
    tlNearestPhotons np;
    
    np.dist2 = new float[m_MaxNumberSampled+1];
    np.index = new const tlPhoton*[m_MaxNumberSampled+1];
    np.pos = pos;
    np.max = m_MaxNumberSampled;
    np.found = 0;
    np.got_heap = false;
    np.dist2[0] = m_MaxRadiusSampled * m_MaxRadiusSampled;
    
    // locate the nearest photons
    
    LocatePhotons(&np, this->IsPrimaryIgnored() );
    
    if(np.found < MIN_PHOTONS_REQUIRED)
    {
        return result;
    }
    
    
    for(int i = 1; i <= np.found; i++)
    {
        const tlPhoton* p = np.index[i];
        tlPoint pdir = p->Direction();
        if( DotProd(pdir, normal) < 0.0f )
        {
            result = result + p->power;
        }
    }
    
    const float density = (1.0f / M_PI) / (np.dist2[0]);
    
    result = result * density;
    
    delete[] np.dist2;
    delete[] np.index;
    
    return result;
}

// Generate a mesh of objects positioned at the photon locations.
tlPrimGroupMesh*
tlPhotonMap::CreateMesh(const float length) const
{
    if( m_photons.Count() == 0 )
    {
        return NULL;
    }
    tlPrimGroupMesh *result = new tlPrimGroupMesh;
    
    int i;
    
    for(i = 0; i < m_photons.Count(); i++)
    {
        tlPrimGroup *marker = GenPhotonMarker( length, m_photons[i].power );
        tlMatrix matrix;
        matrix.RotateY(M_PI - m_photons[i].Theta());
        matrix.RotateZ(M_PI + m_photons[i].Phi());
        matrix.Translate(m_photons[i].pos);
        marker->Transform(matrix);  
        marker->SetShader( PHOTON_GEOMETRY_SHADER );
        result->AddPrimGroup(marker);
    }
    
    return result;
}

void
tlPhotonMap::LocatePhotons(tlNearestPhotons* const np, bool ignorePrimary,
                       const int index) const
{
   assert( index >= 0 && index < m_photons.Count() );
   const tlPhoton* p = &m_photons[index];
   float dist1;
   
   if(index < half_stored_photons)
   {

      dist1 = np->pos[(int)(p->plane)] - p->pos[p->plane];
      
      // if dist1 is positive, searche the right plane
      
      if(dist1 > 0.0f)
      {
         LocatePhotons( np, ignorePrimary, 2*index + 2 );
         if( (dist1*dist1) < np->dist2[0])
         {
            LocatePhotons( np, ignorePrimary, 2*index + 1);
         }
      }
      else
      {
         LocatePhotons( np, ignorePrimary, 2*index + 1);
         if( (dist1*dist1) < np->dist2[0])
         {
            LocatePhotons( np, ignorePrimary, 2*index + 2);
         }
      }
   }
   
   // compute the sqaured distance between current photon and np->pos
   float dist2 = LengthSquared(p->pos - np->pos);

   if(dist2 < np->dist2[0]  && !( ignorePrimary && p->numScatterings == 0 ) )
   {    
      // we found a photon
      
      if(np->found < np->max)
      {
         np->found++;
         np->dist2[np->found] = dist2;
         np->index[np->found] = p;
      }
      else
      {
         // use a heap to keep only closest photons
         int j, parent;

         if(np->got_heap == false)
         {
            // build the heap
            float dst2;
            const tlPhoton* phot;
            int half_found = np->found / 2;
            for(int k = half_found; k >= 1; k--)
            {
               parent = k;
               phot = np->index[k];
               dst2 = np->dist2[k];
               while ( parent <= half_found)
               {
                  j = parent * 2;
                  if ( (j < np->found) && (np->dist2[j] < np->dist2[j+1]) )
                  {
                     j++;
                  }
                  if ( dst2 >= np->dist2[j] )
                  {
                     break;
                  }
                  np->dist2[parent] = np->dist2[j];
                  np->index[parent] = np->index[j];
                  parent = j;
               }
               np->dist2[parent] = dst2;
               np->index[parent] = phot;
            }
            
            np->got_heap = true;
         }

         // insert new photon into heap

         parent = 1;
         j = 2;
         while ( j <= np->found )
         {
            if( ( j < np->found ) && (np->dist2[j] < np->dist2[j+1]) )
            {
               j++;
            }
            if ( dist2 >= np->dist2[j] )
            {
               break;
            }
            np->dist2[parent] = np->dist2[j];
            np->index[parent] = np->index[j];
            parent = j;
            j += j;
         }
         np->dist2[parent] = dist2;
         np->index[parent] = p;
         
         np->dist2[0] = np->dist2[1];
      }
   }
}

            
void
tlPhotonMap::Store(const tlColour& col,
                   const tlPoint& pos,
                   const tlPoint& dir,
                   const unsigned char numScatterings,
                   const tlLight& light )
{
   int count = m_photons.Count();
   if( count >= m_photons.Nalloc() )
   {
       Resize( count * 2 );
   }
   m_photons.SetCount(count + 1);
   tlPhoton* node = & m_photons[count];
  
   node->pos = pos;
   node->power = col;
   node->numScatterings = numScatterings;

   node->lightIndex = m_lights.GetLightIndex( light );

   box.AddPoint(pos);

   int theta = int( acos(dir.z) * (256.0f / M_PI) );
   if(theta > 255)
   {
      node->theta = 255;
   }
   else
   {
      node->theta = (unsigned char) theta;
   }

   int phi = int( atan2(dir.y, dir.x) * (256.0f / (2.0f*M_PI)) );
   if(phi > 255)
   {
      node->phi = 255;
   }
   else if (phi < 0)
   {
      node->phi = (unsigned char) (phi + 256);
   }
   else 
   {
      node->phi = (unsigned char) phi;
   }
}
           
void
tlPhotonMap::Store( const tlPhoton &photon )
{
   int count = m_photons.Count();
   if( count >= m_photons.Nalloc() )
   {
       Resize( count * 2 );
   }
   m_photons.SetCount(count + 1);
   tlPhoton* node = & m_photons[count];
  
   *node = photon;
   box.AddPoint( photon.pos );
}

int 
tlPhotonMap::GetPhotonCount() const
{
   return m_photons.Count();
}
   
bool tlPhotonMap::SetMaxNumberSampled( int max )
{
   bool result = false;

   if( max > 0 )
   {
      m_MaxNumberSampled = max;
      result = true;
   }

   return result;
}

bool tlPhotonMap::SetMaxRadiusSampled( float radius )
{
   bool result = false;

   if( radius > 0.0f )
   {
      m_MaxRadiusSampled = radius;
      result = true;
   }

   return result;
}

void tlPhotonMap::IgnorePrimary( bool ignorePrimary )
{
   m_ignorePrimary = ignorePrimary; 
}

bool tlPhotonMap::IsPrimaryIgnored( ) const
{
   return m_ignorePrimary;
}
  
bool tlPhotonMap::AddLight( const tlLight &light ) 
{
    return m_lights.AddLight( light );
}
  
// Change the size of allocation for photon storage, not the number of
// stored photons.  Return success of allocation.
bool tlPhotonMap::Resize( int size ) 
{
    bool isSuccessful = false;
    int count = m_photons.Count();
    
    if( size > count )
    {
        isSuccessful = m_photons.Resize( size ) ? 1 : 0;
    }

    return isSuccessful;
}

void
tlPhotonMap::ScalePhotonPower( const float scale )
{
   //for(int i = prev_scale; i < m_photons.Count(); i++)
   for(int i = 0; i < m_photons.Count(); i++)
   {
      m_photons[i].power = m_photons[i].power * scale;
   }
   // prev_scale = m_photons.Count();
}

void
tlPhotonMap::Balance()
{
   if(m_photons.Count() > 0) 
   {
      // allocate two arrays for the balancing procedure
      tlPhoton ** pa1 = new tlPhoton*[m_photons.Count()];
      tlPhoton ** pa2 = new tlPhoton*[m_photons.Count()];

      int i;

      for(i = 0; i < m_photons.Count(); i++)
      {
         pa2[i] = &m_photons[i];
      }
      
      BalanceSegment( pa1, pa2, 0, 0, m_photons.Count() - 1);

      delete[] pa2;

      // make a heap from the balanced kd tree

      int d, j=0, k=0;
      tlPhoton phot = m_photons[j];

      for(i = 0; i <m_photons.Count(); i++)
      {
         d = pa1[j] - m_photons.Addr(0);
         pa1[j] = NULL;

         if(d != k)
         {
            m_photons[j] = m_photons[d];
         }
         else
         {
            m_photons[j] = phot;
            
            if(i < m_photons.Count()-1)
            {
               for( ; k <m_photons.Count(); k++)
               {
                  if(pa1[k] != NULL)
                  {
                     break;
                  }
               }

               phot = m_photons[k];
               j = k;
            }
            continue;
         }
         j = d;
      }
      delete[] pa1;
   }

   half_stored_photons = m_photons.Count()/2 -1;
}

#define swap(ph, a, b)  { tlPhoton* ph2 = ph[a]; ph[a] = ph[b]; ph[b] = ph2; }

void
tlPhotonMap::MedianSplit(tlPhoton** p,
                         const int start,
                         const int end,
                         const int median,
                         const int axis)
{
   int left = start;
   int right = end;

   while(right > left)
   {
      const float v = p[right]->pos[axis];
      
      int i = left-1;
      int j = right;
      
      while(1)
      {
         while( p[++i]->pos[axis] < v )
         {
            // empty
         }
         while( (p[--j]->pos[axis] > v)  && (j > left))
         {
            // empty
         }

         if ( i >= j)
         {
            break;
         }
         swap(p,i,j);
      }
      
      swap(p,i, right);
         
      if(i >= median )
      {
         right = i - 1;
      }
      if(i <= median )
      {
         left = i + 1;
      }
   }
}

void
tlPhotonMap:: BalanceSegment(tlPhoton **pbal,
                             tlPhoton **porg,
                             const int index,
                             const int start,
                             const int end)
{
   // compute new median

   int median = 1;

   while( (median * 4) <= (end - start + 1) )
   {
      median += median;
   }

   if( (median * 3) > (end - start + 1) )
   {
      median = end - median + 1;
   }
   else
   {
      median += median;
      median += start - 1;
   }

   // find axis to split along

   int axis = 2;
   if( ((box.high.x - box.low.x) > (box.high.y - box.low.y)) &&
       ((box.high.x - box.low.x) > (box.high.z - box.low.z)) )
   {
      axis = 0;
   }
   else if( (box.high.y - box.low.y) > (box.high.z - box.low.z) )
   {
      axis = 1;
   }

   // partition photon block around the median

   MedianSplit( porg, start, end, median, axis );
   pbal[ index ] = porg[ median ];
   pbal[ index ]->plane = axis;

   // recursivly balance the left and right blocks

   if ( median > start ) 
   {
      if( start < median - 1)
      {
         const float tmp = box.high[axis];
         box.high[axis] = pbal[index]->pos[axis];
         BalanceSegment( pbal, porg, 2*index + 1, start, median-1);
         box.high[axis] = tmp;
      } else {
         pbal[ 2 * index + 1 ] = porg[start];
      }
   }
   
   if( median < end)
   {
      if( median + 1 < end )
      {
            
         const float tmp = box.low[axis];
         box.low[axis] = pbal[index]->pos[axis];
         BalanceSegment( pbal, porg, 2 * index + 2, median+1, end);
         box.low[axis] = tmp;
      } else {
         pbal[ 2* index + 2] = porg[end];
      }
   }
}

// Build a coloured diamond with a specified edge length.
tlPrimGroup*
tlPhotonMap::GenPhotonMarker( const float length, const tlColour &power ) const
{
   tlColour scaledPower( power );
   float maxValue = power[power.MaxChannel()];
   if( maxValue != 0.0f )
   {
      scaledPower = power * ( 1.0f / maxValue );
   }
   tlColour fullColour( scaledPower );
   tlColour halfColour( scaledPower * 0.5f );
   tlColour black( 0.0f, 0.0f, 0.0f );

    float dist = length * (float)sqrt(2.0) / 2.0f;
    tlPoint coord[6] = { tlPoint(  0.0f,  0.0f,  dist ),
                         tlPoint(  dist,  0.0f,  0.0f ),
                         tlPoint(  0.0f, -dist,  0.0f ),
                         tlPoint( -dist,  0.0f,  0.0f ),
                         tlPoint(  0.0f,  dist,  0.0f ),
                         tlPoint(  0.0f,  0.0f, -dist ) };
    tlColour colour[6] = { fullColour,
                           halfColour,
                           halfColour,
                           halfColour,
                           halfColour,
                           black };
    int vertIndex[24] = { 0, 2, 1,
                          0, 3, 2,
                          0, 4, 3,
                          0, 1, 4,
                          5, 3, 4,
                          5, 2, 3,
                          5, 1, 2,
                          5, 4, 1 };

    int i;
    tlVertex *vert = NULL;
    tlPoint  pt;
    tlUV     uv;
    tlTable<tlVertex *> vertList;
    vertList.Resize( 24 );
    for ( i = 0; i < 24; i++ )
    {
        vert = new tlVertex( coord[vertIndex[i]],   pt, colour[vertIndex[i]], uv );
        // Bug #236: Added by Bryan Ewert on 22 Apr 2002
        vert->SetVertexFormat( PDDI_V_CT );
        vertList.Append(vert);
    }    

    tlPrimGroup *prim         = new tlPrimGroup( vertList );
    tlMatrix matrix;
    matrix.RotateZ(M_PI/4.0f);
    prim->Transform(matrix);
    prim->SetVertexType( PDDI_V_CT );

    return prim;
}

void tlPhotonMap::LoadFromChunk(tlDataChunk *ch)
{
   tlPhotonMapChunk *photonMapChunk = dynamic_cast<tlPhotonMapChunk *>(ch);
   if (photonMapChunk == NULL)
   {
      return;
   }

   assert(photonMapChunk->GetVersion() == (unsigned long)CurrentPhotonMapVersion);

   SetName(photonMapChunk->GetName());

   //----- Copy the light index (names and scales). -----------------
   int   numLights    = m_lights.GetMaxIndex();
   char  **names      = photonMapChunk->GetLights();
   float *lightScales = photonMapChunk->GetLightScales();

   m_lights.PreInitialize( numLights, names, lightScales );

   // Allocate memory for photons
   Resize( photonMapChunk->GetNumPhotons() );

   //------ Copy all the photons. -----------------------------------
   const tlPhoton *photons = photonMapChunk->GetPhotons();
   int subChunkCount = photonMapChunk->SubChunkCount();
   int i(0);
   for( i = 0; i < (int)(photonMapChunk->GetNumPhotons()); i++ )
   {
      // Add each photon to the map.
      Store( photons[i] );
   }

   Balance();
}

void tlPhotonMap::LoadFromChunk16(tlDataChunk* ch)
{
   assert(false); // Not implemented.
}

tlDataChunk* tlPhotonMap::Chunk()
{
   tlPhotonMapChunk *photonMapChunk = new tlPhotonMapChunk;
   photonMapChunk->SetName(GetName());
   photonMapChunk->SetVersion(CurrentPhotonMapVersion);
   int i;

   //----- Copy the light index (names and scales). -----------------
   int   numLights        = m_lights.GetMaxIndex() + 1;
   char  **names = new char*[numLights];
   float *lightScales     = new float[numLights];

   for( i = 0; i < numLights; i++ )
   {
      names[i] = ::strnew( m_lights.GetLightName( i ) );
      lightScales[i] = m_lights.GetScale( i );
   }

   photonMapChunk->SetNumLights( numLights );
   photonMapChunk->SetLights( names, numLights );
   photonMapChunk->SetLightScales( lightScales, numLights );

   //------ Copy all the photons. -----------------------------------
   tlPhoton *photons = new tlPhoton[m_photons.Count()];
   for( i = 0; i < m_photons.Count(); i++ )
   {
      photons[i] = m_photons[i];
   }
   photonMapChunk->SetPhotons( photons, m_photons.Count() );
   photonMapChunk->SetNumPhotons( m_photons.Count() );

   return photonMapChunk;
}

tlDataChunk* tlPhotonMap::Chunk16() 
{
   assert(false); // Not implemented.

   tlDataChunk *dummy = NULL;
   return dummy;
}

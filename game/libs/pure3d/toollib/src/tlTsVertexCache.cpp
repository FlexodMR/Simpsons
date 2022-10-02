//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlTsVertexCache.h"

bool tlTsVertexCache::InCache(unsigned long entry)
{
  bool returnVal = false;

  for(int i = 0; i < numEntries; i++)
  {
     if(entries[i] == entry)
     {
        returnVal = true;
        break;
     }
  }

  return returnVal;
}


unsigned long tlTsVertexCache::AddEntry(unsigned long entry)
{
  int removed;

  removed = entries[numEntries - 1];

  //push everything right one
  for(int i = numEntries - 2; i >= 0; i--)
  {
     entries[i + 1] = entries[i];
  }

  entries[0] = entry;

  return removed;
}


tlTsVertexCache::tlTsVertexCache()
{
  numEntries = 16;

  entries = new unsigned long[numEntries];

  for(int i = 0; i < numEntries; i++)
     entries[i] = ~1;
}


tlTsVertexCache::tlTsVertexCache(int size)
{
  numEntries = size;

  entries = new unsigned long[numEntries];

  for(int i = 0; i < numEntries; i++)
     entries[i] = ~1;
}


tlTsVertexCache::~tlTsVertexCache()
{
  delete[] entries;
}


unsigned long tlTsVertexCache::At(int index)
{
  return entries[index];
}


void tlTsVertexCache::Set(int index, unsigned long value)
{
  entries[index] = value;
}


void tlTsVertexCache::Clear()
{
  for(int i = 0; i < numEntries; i++)
     entries[i] = ~1;
}

void tlTsVertexCache::Copy(tlTsVertexCache* inVcache)
{
  for(int i = 0; i < numEntries; i++)
  {
     inVcache->Set(i, entries[i]);
  }
}

  
float tlTsVertexCache::CalcNumHitsOfStrip( tlTable< unsigned long > &strip )
{
     int numHits = 0;
    int numFaces = strip.Count( ) - 2;

     assert( numFaces > 0 );
    
    for(int i = 0; i < strip.Count( ); i++)
    {
        if( InCache(strip[ i ]) )
            numHits++;
    }
    
    return ((float)numHits / (float)numFaces);
}


//////////////////////////////////////////////////////////////////////////////////////////
// UpdateCacheStrip()
//
// Updates the input vertex cache with this strip's vertices
//
void tlTsVertexCache::UpdateCacheFromStrip( tlTable< unsigned long > strip)
{
    for(int i = 0; i < strip.Count( ); i++){
        if(!InCache( strip[ i ] ))
            AddEntry( strip[ i ]  );
    
    }
}


////////////////////////////////////////////////////////////////////////////////////
///     Calculate how many vertex are going to hit vertex buffer
///     this function change the vertex inside the cache
float tlTsVertexCache::CalcNumHitsOfStripEX( tlTable< unsigned long > &strip )
{
     int numHits = 0;
    int numFaces = strip.Count( ) - 2;

     assert( numFaces > 0 );
    

     //reset the cache
     Clear( );

    for(int i = 0; i < strip.Count( ); i++)
    {
        if( InCache(strip[ i ]) )
            numHits++;
          else
                AddEntry( strip[ i ] );
    }
    
    return (float)numHits;
}


#ifndef __CULL_DATA_H__
#define __CULL_DATA_H__

#include "ScratchArray.h"

class CullCache
{
public:
   CullCache()
   {
      mIntArray.Allocate( 1024 );
      InUse = false;
   }
   ~CullCache(){}

   bool Acquire( SubArray<int>& orSubArray, int iSize )
   {
      if( !InUse )
      {
         assert( iSize <= mIntArray.mSize );
         orSubArray.Init( iSize, mIntArray.mpData );
         InUse = true;
         return true;
      }
      else
      {
         return false;
      }
   }

   void Release( SubArray<int>& orSubArray )
   {
      // This will be replaced by a scratch array soon
      InUse = false;
      orSubArray.Invalidate();
   }

protected:

   // This will be replaced by a scratch array soon
   FixedArray<int> mIntArray;
   bool InUse;

};

CullCache& theCullCache();

#endif
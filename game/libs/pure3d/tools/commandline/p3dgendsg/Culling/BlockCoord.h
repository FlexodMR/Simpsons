#ifndef __BLOCK_COORD_H__
#define __BLOCK_COORD_H__

#include "Vector3f.h"
#include "Bounds.h"
#include "FloatFuncs.h"

class BlockCoord
{
public:
   BlockCoord(){}
   ~BlockCoord(){}

   void Init( Bounds3f& irBounds, Vector3f& irGranularities )
   {
      mOffset = irBounds.mMin; 

      for( int i=0; i<3; i++ )
      {
         mExtents[i] = sUpperInt( (irBounds.mMax[i] - irBounds.mMin[i])/irGranularities[i] );
         
         assert( mExtents[i] > -1 );

         if( mExtents[i] == 0 )
            mExtents[i] = 1;
      }
   }
   
   Vector3f mOffset;
   int      mExtents[3];
protected:

};
#endif
#ifndef __FIXED_ARRAY_H__
#define __FIXED_ARRAY_H__

#include "srrRenderTypes.h"

#define NULL 0

template <class T> class FixedArray
{
public:
   
   /////////////////////////////////////////
   // Constructors/Destructors
   /////////////////////////////////////////
   ~FixedArray()
   {
      Clear();
   }

   FixedArray() : mpData(NULL)
   {
   }

   FixedArray( int iSize ) : mpData(NULL)
   {
      Allocate( iSize );
   }


   /////////////////////////////////////////
   // Main Methods
   /////////////////////////////////////////
   T& operator[]( int iIndex )
   {
      assert( (iIndex < mSize) && (iIndex > -1) );
      return mpData[iIndex];
   }

   void Allocate( int iSize )
   {
      Clear();
      mSize = iSize;
      mpData = new T[mSize];
      assert(mSize>0);
      assert(mpData!=NULL);
   }

   void Clear()
   {
      if( mpData != NULL )
      {
         delete[] mpData;
         mpData = NULL;
      }
   }

   bool IsSetUp()
   {
      if( mpData == NULL )
         return false;
      else
         return true;
   }

   /////////////////////////////////////////
   // Data
   /////////////////////////////////////////
   int mSize;
   T*  mpData;

protected:

private:
   /////////////////////////////////////////
   // Currently Disallowed Functions 
   //    -Not implemented
   //    -Not accessible
   //    -Use will error at Compile
   /////////////////////////////////////////
   FixedArray( const FixedArray& iSource );
   FixedArray& operator=( const FixedArray& iSource );

};


#endif
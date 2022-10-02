#ifndef __USE_ARRAY_H__
#define __USE_ARRAY_H__


template <class T> class UseArray
{
public:
   
   /////////////////////////////////////////
   // Constructors/Destructors
   /////////////////////////////////////////
   ~UseArray()
   {
      Clear();
   }

   UseArray() : mpData(NULL), mUseSize(0)
   {
   }

   UseArray( int iSize ) : mpData(NULL)
   {
      Allocate( iSize );
   }


   /////////////////////////////////////////
   // Main Methods
   /////////////////////////////////////////
   void Init( int iIndex, T& irVal )
   {
      assert( (iIndex>=mUseSize)&&(iIndex<mSize) );
      mUseSize = iIndex+1;
      mpData[iIndex] = irVal;
   }

   void ClearUse()
   {
      assert(IsSetUp());
      mUseSize = 0;
   }

   void Add( T& irVal )
   {
      assert(mUseSize<mSize);
      mpData[mUseSize] = irVal;
      mUseSize++;
   }

   T& operator[]( int iIndex )
   {
      assert( (iIndex < mUseSize) && (iIndex > -1));
      return mpData[iIndex];
   }

   void Allocate( int iSize )
   {
      Clear();
      mSize = iSize;
      mpData = new T[mSize];
      assert(iSize>0);
      assert(mpData!=NULL);
      mUseSize = 0;
   }

   void Clear()
   {
      if( mpData != NULL )
      {
         delete[] mpData;
      }
      mpData = NULL;
      mUseSize = 0;
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
   int mUseSize;

protected:

private:
   /////////////////////////////////////////
   // Currently Disallowed Functions 
   //    -Not implemented
   //    -Not accessible
   //    -Use will error at Compile
   /////////////////////////////////////////
   UseArray( const UseArray& iSource );
   UseArray& operator=( const UseArray& iSource );

};

#endif
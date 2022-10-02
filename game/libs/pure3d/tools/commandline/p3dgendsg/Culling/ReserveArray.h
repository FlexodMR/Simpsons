#ifndef __RESERVE_ARRAY_H__
#define __RESERVE_ARRAY_H__


template <class T> class ReserveArray
{
public:
   
   /////////////////////////////////////////
   // Constructors/Destructors
   /////////////////////////////////////////
   ~ReserveArray()
   {
      Clear();
   }

   ReserveArray() : mpData(NULL), mUseSize(0)
   {
   }

   ReserveArray( int iSize ) : mpData(NULL)
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

   void Use( int iIndex )
   {
      assert( (iIndex>=mUseSize)&&(iIndex<mSize) );
      mUseSize = iIndex+1;
   }

   void AddUse( int iCountSize )
   {
      assert( (iCountSize+mUseSize)<=mSize );
      mUseSize += iCountSize;
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

   void Reserve( int iCount )
   {
      // UseSize is used during the 
      // unallocated state to count the reservations
      assert( !IsSetUp() );
      mUseSize += iCount;
   }

   void Allocate()
   {
      assert( !IsSetUp() );
      if( mUseSize == 0 )
      {
         mSize = mUseSize;
         mpData = NULL;
      }
      else
      {
         mSize = mUseSize;
         mpData = new T[mSize];
         assert(mSize>0);
         assert(mpData!=NULL);
         mUseSize = 0;
      }
   }

   void Allocate( int iSize )
   {
      assert( mUseSize == 0 );
      //TODO: wha?
      if( !IsSetUp() )
         iSize += mUseSize;
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
   int mUseSize;
   T*  mpData;

protected:

private:
   /////////////////////////////////////////
   // Currently Disallowed Functions 
   //    -Not implemented
   //    -Not accessible
   //    -Use will error at Compile
   /////////////////////////////////////////
   ReserveArray( const ReserveArray& iSource );
   ReserveArray& operator=( const ReserveArray& iSource );

};

#endif
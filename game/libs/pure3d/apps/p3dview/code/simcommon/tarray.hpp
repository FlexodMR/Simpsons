//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TARRAY_HPP_
#define _TARRAY_HPP_

#ifndef _P3DTYPES_H
#include "p3d/p3dtypes.hpp"
#endif

#include <string.h>
#include <p3d/error.hpp>

namespace sim
{

#define TARRAYMINSIZE 2

// template class TArray
template<class T> class TArray
{
public:
TArray(int s = 0) : mSize(0), mArraySize(s), mArray(NULL), mLock(false), mDontUseMemCpy(false)
{
    if (mArraySize > 0)
        mArray = new T[mArraySize];
}

~TArray() { delete[] mArray; }

int GetSize() const { return mSize; }
void Clear() { SetSize(0); }

T& GetAt(int i)         { P3DASSERT (i < mSize);   return mArray[i]; }
T& operator[] (int i)   { P3DASSERT (i < mSize);   return mArray[i]; }
T& NewElem();

void Add(const T& el);
void InsertAt(int i, const T& newElement);
void RemoveAt(int i);
void SetAt(int i, const T& newElement);
void ResizeArray(int arraysize);

bool Contains(const T& inEl)
{
    for (int i=0; i<mSize; i++)
    {
        if (mArray[i] == inEl)
            return true;
    }
    return false;
}

int Find(const T& inEl)
{
    for (int i=0; i<mSize; i++)
    {
        if (mArray[i] == inEl)
            return i;
    }
    return -1;
}

TArray<T>& operator=(const TArray<T>& inArray)
{
    if (mArraySize < inArray.mArraySize)
        ResizeArray(inArray.mArraySize);
    
    mSize = inArray.mSize;
    
    for (int i=0; i<mSize; i++)
        mArray[i] = inArray.mArray[i];
    
    return *this;
}

void Lock() { P3DASSERT(!mLock); mLock = true; }
void Unlock() { P3DASSERT(mLock); mLock = false; }

void DontUseMemCpy() { mDontUseMemCpy = true; }


protected:
inline void SetSize(int s) { P3DASSERT(!mLock); mSize = s; }

private:
void Grow();

int mSize;
int mArraySize;
T* mArray;
bool mLock;
bool mDontUseMemCpy;
};

//
//
//

template<class T> void TArray<T>::Add(const T& el)
{
    if (mSize >= mArraySize)
    {
        Grow();
    }
    mArray[mSize] = el;
    SetSize(mSize+1);
}

template<class T>
    void TArray<T>::InsertAt(int nIndex, const T& newElement)
{
    P3DASSERT( nIndex <= mSize );
    
    if ( mSize >= mArraySize)
    {
        ResizeArray(mSize*2);
    }
    for ( int i = mSize; i > nIndex; --i )
    {
        mArray[i] = mArray[i-1];
    }
    mArray[nIndex] = newElement;
    
    SetSize(mSize+1);
}

template<class T>
    void TArray<T>::RemoveAt(int nIndex)
{
    if (nIndex < mSize)
    {
        for (int i=nIndex; i<mSize-1; ++i)
        {
            mArray[i] = mArray[i+1];
        }
        SetSize(mSize-1);
    }
}

template<class T>
    void TArray<T>::SetAt(int nIndex, const T& newElement)
{
    P3DASSERT(nIndex < mSize);
    mArray[nIndex] = newElement;
}

template<class T>
    void TArray<T>::Grow()
{
    ResizeArray(2*mArraySize);
}

template<class T>
    void TArray<T>::ResizeArray(int newarraysize)
{
    if (newarraysize == 0)
        newarraysize = TARRAYMINSIZE;
    
    if (mArraySize < newarraysize)
    {
        T* array = new T[newarraysize];
        
        P3DASSERT(array != NULL);
        
        if (mSize > 0)
        {
            if (mDontUseMemCpy)
            {
                for ( int i = 0; i < mSize; ++i )
                {
                    array[i] = mArray[i];
                }
            }
            else
            {
                memcpy(array, mArray, mSize*sizeof(T));
            }
        }
        
        delete[] mArray;
        mArray = array;
        mArraySize = newarraysize;
    }
}

template<class T> T& TArray<T>::NewElem()
{
    if (mSize >= mArraySize)
    {
        Grow();
    }
    SetSize(mSize+1);
    return mArray[mSize-1];
}

} // sim

#endif



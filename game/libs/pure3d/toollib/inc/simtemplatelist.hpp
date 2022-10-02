//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _SIMTEMPLATELIST_HPP_
#define _SIMTEMPLATELIST_HPP_

#include <assert.h>
#include <string.h>


//
// a template list...
//

#define TListMINSIZE 2

template<class TYPE> class TList
{
public:
    TList(int size = 0) : mSize(0), mArraySize(size), mArray(NULL)
    {
        if (size > 0)
            mArray = new TYPE[mArraySize];
    }

    ~TList()
    {
        delete[] mArray;
    }

    int GetSize() const;
    void Append(const TYPE el);
    void Add(const TYPE el);
    void RemoveAll();
    TYPE GetAt(int index) const;
    bool Contains(const TYPE el) const;

    // overloaded operator helpers
    TYPE operator[](int nIndex) const;
    TList<TYPE>& operator=(const TList<TYPE>& list);
    TList<TYPE>& operator+=(const TList<TYPE>& list);

    // Operations that move elements around
    void InsertAt(int nIndex, TYPE newElement);
    void RemoveAt(int nIndex);
    void Remove(const TYPE el);
    void SetAt(int nIndex, const TYPE newValue) { assert(nIndex < mSize); mArray[nIndex] = newValue; }

private:
    void Grow();
    void ResizeArray(int arraysize);

    int mSize;
    int mArraySize;
    TYPE *mArray;
};

template<class TYPE>
inline void TList<TYPE>::Remove(const TYPE el)
{
    for (int i=mSize-1; i>=0; i--)
    {
        if (el == mArray[i])
            RemoveAt(i);
    }
}

template<class TYPE>
inline bool TList<TYPE>::Contains(const TYPE el) const
{
    for (int i=0; i<mSize; i++)
    {
        if (el == mArray[i])
            return TRUE;
    }
    return FALSE;
}

template<class TYPE>
inline int TList<TYPE>::GetSize() const
{
    return mSize;
}

template<class TYPE>
inline void TList<TYPE>::Append(const TYPE el)
{
    if (mSize >= mArraySize)
    {
        Grow();
    }
    mArray[mSize] = el;
    mSize++;

}

template<class TYPE>
inline void TList<TYPE>::Add(const TYPE el)
{
    Append(el); // bof...
}

template<class TYPE>
inline void TList<TYPE>::Grow()
{
    ResizeArray(2*mArraySize);
}

template<class TYPE>
inline void TList<TYPE>::ResizeArray(int newarraysize)
{
    if (newarraysize == 0)
        newarraysize = TListMINSIZE;

    if (mArraySize != newarraysize)
    {
        TYPE *array = new TYPE[newarraysize];

        assert(array != NULL);

        if (mSize > 0)
            memcpy(array, mArray, mSize*sizeof(TYPE));

        delete[] mArray;
        mArray = array;
        mArraySize = newarraysize;
    }
}

template<class TYPE>
inline void TList<TYPE>::RemoveAll()
{
    mSize = 0;
}

template<class TYPE>
inline void TList<TYPE>::InsertAt(int nIndex, TYPE newElement)
{
    if (mSize >= mArraySize)
    {
        Grow();
    }

    if (nIndex <= mSize)
    {
        TYPE tmp1, tmp2;
        tmp1 = mArray[nIndex];
        mArray[nIndex] = newElement;
        for (int i=nIndex+1; i<mSize; i++)
        {
            tmp2 = mArray[i];
            mArray[i] = tmp1;
            tmp1 = tmp2;
        }
    }
    else
    {
        mArray[mSize] = newElement;
    }

    mSize++;
}

template<class TYPE>
inline void TList<TYPE>::RemoveAt(int nIndex)
{
    if (nIndex < mSize)
    {
        for (int i=nIndex; i<mSize-1; i++)
        {
            mArray[i] = mArray[i+1];
        }
        mSize--;
    }
}

template<class TYPE>
inline TYPE TList<TYPE>::GetAt(int nIndex) const
{
    if (nIndex < mSize)
    {
        return mArray[nIndex];
    }
    else
        return 0;
}

template<class TYPE>
inline TYPE TList<TYPE>::operator[](int nIndex) const
{ 
    return GetAt(nIndex); 
}

// shallow copy the element of list into this
template<class TYPE>
inline TList<TYPE>& TList<TYPE>::operator=(const TList<TYPE>& list)
{
    RemoveAll();
    ResizeArray(list.GetSize());

    mSize = list.GetSize();

    if (mSize > 0)
        memcpy(mArray, list.mArray, mSize*sizeof(TYPE));

    return *this;
}

template<class TYPE>
inline TList<TYPE>& TList<TYPE>::operator+=(const TList<TYPE>& list)
{
    if (list.mSize > 0)
    {
        if (mArraySize < mSize + list.mSize)
            ResizeArray(mSize + list.mSize);


        if (list.mSize > 0)
            memcpy(&mArray[mSize], list.mArray, list.mSize*sizeof(TYPE));

        mSize += list.GetSize();
    }
    return *this;
}

//
// a template array class
//

#define TARRAYMINSIZE 2

// template class TArray
template<class T> class TArray
{
public:
    TArray(int s = 0) : mSize(0), mArraySize(s), mArray(NULL), mLock(false), mDontUseMemCpy(true)
    {
        if (mArraySize > 0)
            mArray = new T[mArraySize];
    }

    ~TArray() { delete[] mArray; }

    int GetSize() const { return mSize; }
    void Clear() { SetSize(0); }

    T& GetAt(int i)         { assert (i < mSize);   return mArray[i]; }
    T& operator[] (int i)   { assert (i < mSize);   return mArray[i]; }
    T& NewElem();

    void Add(const T& el);
    void InsertAt(int i, const T& newElement);
    void RemoveAt(int i);
    void SetAt(int i, const T& newElement);
    void ResizeArray(int arraysize);

    //TArray<T>& operator+=(const TArray<T>& Array);
    TArray<T>& operator=(const TArray<T>& inArray)
    {
        if (mArraySize < inArray.mArraySize)
            ResizeArray(inArray.mArraySize);

        mSize = inArray.mSize;

        for (int i=0; i<mSize; i++)
            mArray[i] = inArray.mArray[i];

        return *this;
    }

    void Lock() { assert(!mLock); mLock = true; }
    void Unlock() { assert(mLock); mLock = false; }

    void UseMemCpy() { mDontUseMemCpy = false; }

    bool Contains(const T& el) const
    {
        for ( int i = 0; i < mSize; ++i )
        {
             if (mArray[i] == el)
                 return true;
        }
        return false;
    }


protected:
    inline void SetSize(int s) { assert(!mLock); mSize = s; }

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
    assert( nIndex <= mSize );

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
    assert(nIndex < mSize);
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

        assert(array != NULL);

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

//
//
//


#endif // _SIMTEMPLATELIST_HPP_

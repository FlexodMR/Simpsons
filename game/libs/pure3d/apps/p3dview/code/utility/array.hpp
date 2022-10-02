//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ARRAY_HPP_
#define _ARRAY_HPP_

//-----------------------------------------------------------------------------
// Array
//
// A simple fixed size array, with size and bound checking 
//-----------------------------------------------------------------------------

template <class T> class Array
{
public:
   // construct an empty array
   Array(unsigned s) : size(s), data(new T[size]) {  /* */ }

   // construct from a standard C array and size
   Array(unsigned s, T* d) : size(s), data(new T[size]) 
   { 
      for(unsigned i = 0; i < size; i++)
         data[i] = d[i];
   }

   // destruct
   ~Array() 
   { 
      delete [] data;
   }

   // get the size
   unsigned Size(void) 
   { 
      return size; 
   }

   // get the indexed element
   T& operator[](unsigned i) 
   { 
      if(i < size) 
      {
         return data[i]; 
      }
      else 
      {
//         assert(0);
         return data[size-1]; 
      }
   }

   // get the raw data for passing to a function that takes a C array
   T* GetData() 
   { 
      return data;
   }

   // compact the list so that all unsed elements are at the end
   // only works on objects where !t is defined, and means that object is unused, i,e, pointers
   // returns number of elements in compacted list
   unsigned Compact(void)
   {
      unsigned compactDistance = 0;
      unsigned count = 0;

      for(unsigned i = 0; i < size; i++)
      {
         if(!data[i])
         {
            compactDistance++;
         }
         else
         {
            count++;
            if(compactDistance)
            {
               data[i - compactDistance] = data[i];
               data[i] = 0;
            }
         }
      }
      return count;
   }

   // add element to array in empty spot 
   // only works on objects where !t is defined, and means that object is unused, i,e, pointers
   unsigned Add(T t)
   {
      for(unsigned i = 0; i < size; i++)
      {
         if(!data[i])
         {
            data[i] = t;
            return i;
         }
      }
      return -1;
      // assert(0);
   }

protected:
   unsigned size;
   T* data;
};

template <class T> class DynamicArray : public Array<T>
{
public:
    DynamicArray(unsigned s) : Array<T>(s) {  /* */ }
    DynamicArray(unsigned s, T* d) : Array<T>(s,d) {  /* */ }

    void Shrink(unsigned newSize)
    {
        if(size > newSize)
        {
            Resize(newSize);
        }
    }

    void Grow(unsigned newSize)
    {
        if(size < newSize)
        {
            Resize(newSize);
        }
    }

    void Resize(unsigned newSize)
    {
        T* newData = new T[newSize];
        unsigned amountToCopy = (newSize > size) ? size : newSize;
        
        for(unsigned i = 0; i < amountToCopy; i++)
        {
            newData[i] = data[i];
        }
        delete [] data;
        data = newData;
        size = newSize;
    }

    // add element to array in empty spot and resize if neccesary
    // only works on objects where !t is defined, and means that object is unused, i,e, pointers
    unsigned Add(T t)
    {
        unsigned oldSize = size;
        for(unsigned i = 0; i < oldSize; i++)
        {
            if(!data[i])
            {
                data[i] = t;
                return i;
            }
        }
        Grow(Size()*2);
        data[oldSize] = t;
        return oldSize;

    }

};

#endif // #ifndef _ARRAY_HPP_

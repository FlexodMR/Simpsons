//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _OBJECTLIST_HPP_
#define _OBJECTLIST_HPP_

#include <utility/array.hpp>
#include <utility/pointer.hpp>
#include <p3d/inventory.hpp>

template <class T> class ObjectList
{
public:
    ObjectList() : current(0), objects(16) {};

    void Flush(void)
    {
        for(unsigned i = 0; i < objects.Size(); i++)
        {
            objects[i] = 0;
        }
        objects.Add(defaultObject);
        current = 0;
    }

    void Load(void)
    {
        tInventory::Iterator<T> iterate;
        T* t = iterate.First();
        unsigned index = 0;
        while(t)
        {
            objects.Add(t);
            t = iterate.Next();
        }
    }

    T* Current(void)
    {
        return(objects[current]);
    }

    void SetCurrent(const char* n)
    {
        tName name(n);

        for(unsigned i = 0; i < objects.Size(); i++ )
        {
            if(objects[i])
            {
                if(objects[i]->GetNameObject() == name)
                {
                    current = i;
                    return;
                }
            }
        }

    }

    void Next(void)
    {
        current++;
        if((current == objects.Size()) || !objects[current])
        {
            current = 0;
        }

    }

    void Prev(void)
    {
        if(current == 0)
        {
            current = objects.Size() - 1;

            while(!objects[current])
                current--;
        }
        else
        {
            current--;
        }
    }

    void SetDefaultObject(T* d) 
    {
        if(defaultObject)
        {
            for(unsigned i = 0; i < objects.Size(); i++)
            {
                if((T*)defaultObject == (T*)objects[i])
                {
                    objects[i] = 0;
                }
            }
        }
        defaultObject = d; 
        objects.Add(d);
    }

    T*   GetDefaultObject(void) 
    { 
        return defaultObject; 
    }

protected:
    unsigned current;
    RefPtr<T> defaultObject;
    DynamicArray<RefPtr<T> > objects;
};

#endif
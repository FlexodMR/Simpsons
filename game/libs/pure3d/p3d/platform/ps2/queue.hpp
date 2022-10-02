/*===========================================================================
    queue.hpp
    8-Dec-99 Created by Gabriel

    Copyright (c)1999  Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _QUEUE_HPP_
#define _QUEUE_HPP_

#include <p3d/platform/ps2/error.hpp>

template <class T> class tStaticQueue 
{
public:
    tStaticQueue<T>(int s) : size(s), head(0), tail(0), count(0) 
    { 
        queue = new T*[size];
    }

    ~tStaticQueue<T>() { delete [] queue; }

    bool Enqueue(T *ptr);
    T* Dequeue(void);

    T* GetHead(void);

private:
    T **queue;
    int size;
    int head;
    int tail; 
    int count;
};

template <class T>
bool tStaticQueue<T>::Enqueue(T* ptr)
{
    if ((tail == head) && (count != 0))
    {
        return false;
    }

    queue[tail % size] = ptr;

    count++; tail++;

    return true;
}

template <class T>
T* tStaticQueue<T>::Dequeue(void)
{
    if (count == 0)
    {
        return NULL;
    }
    
    count--;
    
    return queue[head++ % size];
}

template <class T>
T* tStaticQueue<T>::GetHead(void)
{
    if (count == 0)
    {
        return NULL;
    }
    
    return queue[head % size];
}

#endif // _QUEUE_HPP_

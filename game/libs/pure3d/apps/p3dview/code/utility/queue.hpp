//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_QUEUE_HPP_
#define _VIEWER_QUEUE_HPP_

#include <p3d/error.hpp>

template<class T> class Queue
{
public:
   Queue(int maxLength = 64) : length(maxLength), head(0), tail(0)
   {
      queue = new T[length];
   }

   ~Queue()
   {
      delete [] queue;
   }

   bool Empty(void)
   {
      return head == tail;
   }

   void Enqueue(const T& t)
   {
      P3DASSERT(Next(tail) != head);
      queue[tail] = t;
      tail = Next(tail);
   }

   T Dequeue(void)
   {
      P3DASSERT(!Empty());
      int index = head;
      head = Next(head);
      return queue[index];
   }

protected:
   unsigned Next(unsigned val)
   {
      val++;
      if(val == length)
         val = 0;
      return val;
   }

   T* queue;
   unsigned length;
   unsigned head, tail;
};

#endif
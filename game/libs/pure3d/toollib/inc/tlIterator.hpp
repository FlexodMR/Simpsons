/*===========================================================================
    File:: tlIterator.hpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLITERATOR_HPP
#define _TLITERATOR_HPP

template<class T> class tlIterator  //: Abstract class
{
public:
    // Return NULL to indicate no more elements
    virtual T* first() = 0;
    virtual T* next() = 0;
};

#endif


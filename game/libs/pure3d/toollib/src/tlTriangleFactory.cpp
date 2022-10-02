/*===========================================================================
    File:: tlTriangleFactory.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriangleFactory.hpp"
#include <assert.h>
#include <stdio.h>
#include "tlTriangleIntersect.hpp"

tlTriangleFactory* tlTriangleFactory::factory = NULL;

tlTriangleFactory::tlTriangleFactory()
{

}

tlTriangleFactory::~tlTriangleFactory()
{

}

tlTriangle*
tlTriangleFactory::Create() const
{
    return new tlTriangle;
}

tlTriangleFactory*
tlTriangleFactory::Factory()
{
    if(factory == NULL)
    {
        factory = new tlTriangleFactory();
    }
    return factory;
}



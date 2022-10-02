/*===========================================================================
    File:: tlTriangleIntersectFactory.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriangleIntersectFactory.hpp"
#include <assert.h>
#include <stdio.h>
#include "tlTriangleIntersect.hpp"

tlTriangleIntersectFactory* tlTriangleIntersectFactory::factory = NULL;

tlTriangleIntersectFactory::tlTriangleIntersectFactory()
{

}

tlTriangleIntersectFactory::~tlTriangleIntersectFactory()
{

}

tlTriangle*
tlTriangleIntersectFactory::Create() const
{
    return new tlTriangleIntersect;
}

tlTriangleFactory*
tlTriangleIntersectFactory::Factory()
{
    if(factory == NULL)
    {
        factory = new tlTriangleIntersectFactory();
    }
    return factory;
}



/*===========================================================================
    File:: tlTriangleIntersectFactory.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIANGLEINTERSECTFACTORY_HPP
#define _TLTRIANGLEINTERSECTFACTORY_HPP

#include "tlTriangleFactory.hpp"

class tlTriangle;

class tlTriangleIntersectFactory : public tlTriangleFactory
{
public:
    virtual tlTriangle* Create() const;
    static tlTriangleFactory* Factory();

protected:
    tlTriangleIntersectFactory();
    virtual ~tlTriangleIntersectFactory();

private:
    static tlTriangleIntersectFactory* factory;
};

#endif


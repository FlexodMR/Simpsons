/*===========================================================================
    File:: tlTriangleFactory.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIANGLEFACTORY_HPP
#define _TLTRIANGLEFACTORY_HPP

class tlTriangle;

class tlTriangleFactory
{
public:
    virtual tlTriangle* Create() const;
    static tlTriangleFactory* Factory();

protected:
    tlTriangleFactory();
    virtual ~tlTriangleFactory();

private:
    static tlTriangleFactory* factory;
};

#endif


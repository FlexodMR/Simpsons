/*===========================================================================
    traversalcontroller.hpp
    cahnged: Oct 25, 2000
    Eric Honsch

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TRAVERSALCONTROLLER_HPP
#define _TRAVERSALCONTROLLER_HPP

#include "exporteroptions.hpp"

#include <maya/MStatus.h>

class tlInventory;

class TraversalController
{
public:
    static MStatus              MainLoop(tlInventory* tlInv, bool bToFile );
};


extern void DumpInventory( tlInventory* pInv, const char* label = NULL );

#endif // _TRAVERSALCONTROLLER_HPP


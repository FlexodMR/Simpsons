/*===========================================================================
    materialgui.hpp
    created: Jul. 14, 2000
    Eric Honsch

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MObject.h>
#include <maya/MPxCommand.h>



class transformGUI  
{
public:

    transformGUI();
    virtual ~transformGUI();

    static void removeCallbacks( void );

private:
    static MIntArray callbackIds;

};





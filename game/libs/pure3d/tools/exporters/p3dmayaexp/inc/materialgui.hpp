/*===========================================================================
    materialgui.hpp
    created: Mar. 1, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

//===========================================================================
// This class is responsible for initiating the Maya callbacks which
// trigger the 'p3dtags' events on newly created nodes.
//===========================================================================

#include <maya/MObject.h>
#include <maya/MPxCommand.h>



class materialGUI  
{
public:

    materialGUI();
    virtual ~materialGUI();

    static void removeCallbacks( void );

private:
    static MIntArray callbackIds;

};





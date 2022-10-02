/*===========================================================================
    materialgui.cpp
    created: Feb. 29, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

//===========================================================================
// This class is responsible for initiating the Maya callbacks which
// trigger the 'p3dtags' events on newly created nodes.
//===========================================================================

#include <maya/MObject.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MDGMessage.h>
#include <maya/MIntArray.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MGlobal.h>

#include "p3dTagsCallback.h"

#include <assert.h>

#include "materialgui.hpp"

const unsigned int CALLBACK_NODETYPES_COUNT = 9;
const char* CallbackNodeTypes[ CALLBACK_NODETYPES_COUNT ] =
{
    "transform",
    "mesh",
    "camera",

    "lambert",
    "phong",

    "ambientLight",
    "pointLight",
    "spotLight",
    "directionalLight"
};


#define MCHECKERROR(stat,msg)       \
     if ( MS::kSuccess != stat ) {   \
          cout << msg << endl;        \
     }



//the callback id list
MIntArray materialGUI::callbackIds;


materialGUI::materialGUI()
{   
     MStatus     stat;
     MCallbackId id;
     MString     nodeType;

    unsigned int i;
    for ( i = 0; i < CALLBACK_NODETYPES_COUNT; i++ )
    {
        id = MDGMessage::addNodeAddedCallback( p3dTagsCallback, CallbackNodeTypes[ i ], NULL, &stat);
        // If the callback was successfully added then add the
        // callback id to our callback table so it can be removed
        // when the plugin is unloaded.
        if (stat)
        {
            callbackIds.append(id);
        }
        else
        {
            MGlobal::displayError("MDGMessage.addCallback (" + MString( CallbackNodeTypes[i] ) + ") failed");
        }
    }

}

                    
materialGUI::~materialGUI() 
{
}


// this must be called before deregistering a plugin which has added
// callbacks
void materialGUI::removeCallbacks( void )
{
     //remove all the callbacks
     for (unsigned int i=0; i<callbackIds.length(); i++ ) 
     {
          MMessage::removeCallback( (MCallbackId)callbackIds[i] );
     }
}




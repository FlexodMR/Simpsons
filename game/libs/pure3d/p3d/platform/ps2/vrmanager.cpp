/*===========================================================================
    vrmanager.cpp
    8-Dec-99 Created by Gabriel

    Copyright (c)1999  Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <p3d/platform/ps2/vrmanager.hpp>

//------------------------------------------------------------------------
static const int QUEUESIZE = 20;  
//------------------------------------------------------------------------
tVRManager::tVRManager() : start(0), end(0), head(0), tail(0),
                                    upload(QUEUESIZE), resident(QUEUESIZE) 
{
    // default constructor
}
//------------------------------------------------------------------------
void tVRManager::AddTexture(tTexture *texture)
{
/*

- if texture is already resident in VRAM, return
- if there is enough space in VRAM 
        - upload to VRAM at head pointer 
        - toggle residency flag to true
        - add texture to 'resident' queue
        - update VRAM pointers
- else
        - add texture to 'upload' queue   

*/
}
//------------------------------------------------------------------------
void tVRManager::RemoveTexture()
{
/*

- remove texture at head of 'resident' queue
- if new texture at head of 'resident' queue != removed texture
        - toggle residency flag to false
- update VRAM pointers
- while free VRAM > size of texture at head of 'upload' queue 
        - remove texture from head of 'upload' queue
        - upload to VRAM
        - toggle residency flag to true
        - add texture to 'resident' queue
        - update VRAM pointers

*/
}



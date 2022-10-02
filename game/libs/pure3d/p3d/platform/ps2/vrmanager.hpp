/*===========================================================================
    vrmanager.hpp
    8-Dec-99 Created by Gabriel

    Copyright (c)1999  Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _VRMANAGER_HPP_
#define _VRMANAGER_HPP_

#include <p3d/platform/ps2/queue.hpp>
#include <p3d/texture.hpp>

//------------------------------------------------------------------------
class tVRManager 
{
public:
     tVRManager();
     virtual ~tVRManager() {}
     
     void AddTexture(tTexture *texture);
     void RemoveTexture();

private:
    int start;  // bounds for dynamic region of VRAM
    int end;
    
    int head;  // start of available VRAM
    int tail;  // start of oldest resident texture
    
    tStaticQueue<tTexture> upload;
    tStaticQueue<tTexture> resident;
};

#endif // _VRMANAGER_HPP_

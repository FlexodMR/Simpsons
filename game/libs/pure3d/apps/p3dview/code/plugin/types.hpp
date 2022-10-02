//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLUGIN_TYPES_HPP_
#define _PLUGIN_TYPES_HPP_

#include <plugin/module.hpp>

namespace Plugin
{

const unsigned UNKNOWN             = 0;
const unsigned PURE3D_GLOBAL_STATE = 1;
const unsigned RENDERER            = 2;

class Renderer : public Module
{
public:
    virtual void Display(void) = 0;
};

}

#endif

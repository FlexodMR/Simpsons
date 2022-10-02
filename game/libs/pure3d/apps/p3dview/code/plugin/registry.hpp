//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLUGIN_REGISTRY_HPP_
#define _PLUGIN_REGISTRY_HPP_

namespace Plugin
{

class Module;

class Registry
{
public:
    static void     Register(Module*);
    static unsigned GetModuleCount(void);
    static Module*  GetModule(unsigned i);
};

}

#endif

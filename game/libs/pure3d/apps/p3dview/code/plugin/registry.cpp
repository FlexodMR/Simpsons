//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<plugin/registry.hpp>

namespace Plugin
{

static unsigned moduleCount = 0;
static Module* modules[256];

void Registry::Register(Module* e)
{
    modules[moduleCount] = e;
    moduleCount++;
}

unsigned Registry::GetModuleCount(void)
{
    return moduleCount;
}

Module* Registry::GetModule(unsigned i)
{
    if(i < moduleCount)
        return modules[i];

    return 0;
}

}

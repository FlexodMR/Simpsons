//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<plugin/module.hpp>
#include<plugin/registry.hpp>

namespace Plugin
{

Module::Module()
{
    Registry::Register(this);
}

}

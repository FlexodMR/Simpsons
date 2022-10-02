//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLUGIN_MODULE_HPP_
#define _PLUGIN_MODULE_HPP_

class Settings;

namespace Plugin
{

struct AppData
{
    Settings* settings;
};

class Module
{
public:
    Module();

    virtual const char* GetName(void) = 0;
    virtual unsigned    GetType(void) = 0;

    virtual void Setup(AppData*) = 0;
    virtual void Shutdown(void) = 0;

protected:
    virtual ~Module() {};
};

}

#endif

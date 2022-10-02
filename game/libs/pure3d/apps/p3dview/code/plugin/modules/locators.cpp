//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Locator viewer plugin module

#include <plugin/module.hpp>
#include <plugin/types.hpp>

#include <config/settings.hpp>

#include <p3d/context.hpp>
#include <p3d/loadmanager.hpp>
#include <p3d/utility.hpp>
#include <p3d/drawable.hpp>
#include <p3d/locator.hpp>
#include <constants/chunks.h>

#include <string.h>
#include <stdio.h>

void GamecubeLinkerSucks(void)
{
}

class LocatorPlugin : public Plugin::Renderer
{
public:
    LocatorPlugin();
    const char* GetName(void);
    unsigned    GetType(void);  
    void        Setup(Plugin::AppData*);
    void        Shutdown(void);
    void        Display(void);

protected:
    bool show;
    bool names;
    float size;

};

static LocatorPlugin locator;   

LocatorPlugin::LocatorPlugin(void) : show(false), names(true), size(1.0f)
{
}

const char* LocatorPlugin::GetName(void)
{
    return "Locators";
}

unsigned LocatorPlugin::GetType(void)
{
    return Plugin::RENDERER;
}

void LocatorPlugin::Setup(Plugin::AppData* appData)
{
    appData->settings->Bind("locators.show",&show);
    appData->settings->Bind("locators.showNames",&names);
    appData->settings->Bind("locators.size",&size);
}

void LocatorPlugin::Shutdown(void)
{
}

void LocatorPlugin::Display(void)
{
    if(!show)
        return;

    tInventory::Iterator<tLocator> i;

    tLocator* l = i.First();
    while(l)
    {
        rmt::Vector position = l->GetPosition();
        const char* name = l->GetName();

        float xtarget = position.x;
        float ytarget = position.y;
        float ztarget = position.z;

        pddiPrimStream* stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINES, PDDI_V_C, 6);
        stream->Colour(tColour(255,128,128));
        stream->Coord(xtarget - size,ytarget,ztarget);
        stream->Colour(tColour(255,128,128));
        stream->Coord(xtarget + size,ytarget,ztarget);
        stream->Colour(tColour(128,255,128));
        stream->Coord(xtarget,ytarget - size,ztarget);
        stream->Colour(tColour(128,255,128));
        stream->Coord(xtarget,ytarget + size,ztarget);
        stream->Colour(tColour(128,128,255));
        stream->Coord(xtarget,ytarget,ztarget - size);
        stream->Colour(tColour(128,128,255));
        stream->Coord(xtarget,ytarget,ztarget + size);
        p3d::pddi->EndPrims(stream);

        if(names)
        {
            p3d::context->WorldToDevice(position, &position);
            p3d::pddi->DrawString(name, (int)position.x, (int)position.y, tColour(255,255,255));
        }

        l = i.Next();
    }
}


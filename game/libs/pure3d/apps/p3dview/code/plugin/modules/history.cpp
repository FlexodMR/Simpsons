//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// An example viewer plugin module
//
// This module adds the (dubious) ability for the viewer to load and display P3D_HISTORY chunks

#include <plugin/module.hpp>
#include <plugin/types.hpp>

#include <p3d/context.hpp>
#include <p3d/loadmanager.hpp>
#include <p3d/utility.hpp>
#include <p3d/drawable.hpp>
#include <p3d/chunkfile.hpp>
#include <constants/chunks.h>

#include <string.h>
#include <stdio.h>


// the main plugin class
class HistoryPlugin : public Plugin::Module
{
public:
    // all these functions are overides of Plugin::Module
    const char* GetName(void);
    unsigned    GetType(void);  
    void        Setup(void);
    void        Shutdown(void);
};

// instantiating a static instance of any class derived from 
// Plugin::Module will register the plugin with the main 
// database, 

// ****************************
//static HistoryPlugin history;   // uncomment this line to use the plugin 
// ****************************


const char* HistoryPlugin::GetName(void)
{
    return "History";
}

// Get the type of the plugin, so the viewer knows what 
// sub typew to cast it to, and when to activate it
unsigned HistoryPlugin::GetType(void)
{
    return Plugin::PURE3D_GLOBAL_STATE; // PURE3D_GLOBAL_STATE plugins have no special interfaces
                                                    // Setup is called after the viewer has performed Pure3D
                                                    // initialization, and Shutdown right before Pure3D cleanup
}

// our history displaying tDrawable
class History : public tDrawable
{
public:
    History(int c) { count = c;}
    int count;

    char string[16][256];

    void Display(void) 
    { 
        for(int i = 0; i< count; i++)
        {
            p3d::pddi->DrawString(string[i], 100, 200 + (15*i));
        }
    }
};

// the  P3D_HISTORY loader class
class HistoryLoader : public tSimpleChunkHandler
{
public:
    HistoryLoader();
    tEntity* LoadObject(tChunkFile*, tEntityStore*);
};

// called after Pure3D initilization
// platform, context and related classes are all set up
void HistoryPlugin::Setup(void)
{
    // remove the ignore loader that will eat our chunks otherwise
    p3d::loadManager->GetP3DHandler()->RemoveHandler(P3D_HISTORY);

    // add an instance of our handler to the load list
    p3d::loadManager->GetP3DHandler()->AddHandler(new HistoryLoader);
}

// called right before shutdown
// not needed in this case sicne the loader we allocated 
// will be cleaned up by the load manager
void HistoryPlugin::Shutdown(void)
{
}

// loader implimentaion
HistoryLoader::HistoryLoader() : tSimpleChunkHandler(P3D_HISTORY)
{
}

tEntity* HistoryLoader::LoadObject(tChunkFile* f, tEntityStore*)
{
    static int totalCount = 0;
    char tmp[256];

    int count = f->GetShort();
    History* d = new History(count);

    sprintf(tmp,"%s_%d", f->GetFilename(), totalCount++);
    d->SetName(tmp);

    for(int i = 0; i < count; i++)
        strcpy(d->string[i], f->GetString(tmp));

    return d;
}


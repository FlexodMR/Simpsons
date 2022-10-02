//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "servermanager.hpp"

#include<interface/kernel.hpp>

#include<client/client.hpp>
#include<client/remote.hpp>
#include<config/arguments.hpp>
#include<config/settings.hpp>
#include<console/console.hpp>
#include<console/shatter.hpp>
#include<file/textfile.hpp>
#include<viewer/server.hpp>
#include<p3d/utility.hpp>
#include<console/shatter.hpp>

#include <string.h>

Subsystem* ServerManager::InitServer(Arguments* args, Settings* settings, const char* target)
{
    if((strcmp(target, "none") == 0) || (target[0] == 0))
    {
        return NULL;
    }
    else if(strcmp(target, "local") == 0)
    {
        if(!haveLocal)
        {
            localServer = new Server(kernel);
            localServer->Initialize(args, NULL);
            localServer->Command("s_display_init");
            haveLocal = true;
            return localServer;
        }
        else
        {
            return NULL;
        }
    }
    else
    {
        char fullTarget[64] = "target.";
        strcat(fullTarget, target);
        if(!settings->SectionExists(fullTarget))
        {
            p3d::printf("Unknown target '%s'\n", target);
        }

        RemoteServer* server = new RemoteServer(kernel);
        server->Initialize(args, settings, target);
        return server;
    }
}

void ServerManager::Initialize(Arguments* args, Settings* settings)
{
    Console::ShatterParser parse(' ');
    parse.Parse(settings->Get("platform.targets"));

    for(unsigned i = 0; i < parse.GetNumFragments(); i++)
    {
        servers[i] =  InitServer(args, settings, parse.GetFragment(i) );
    }
}

void ServerManager::Shutdown(void)
{
    for(unsigned i = 0; i < servers.Size(); i++)
    {
        if(servers[i]) 
        {
            servers[i]->Shutdown();
        }
    }
}

void ServerManager::Tick(float time)
{
    for(unsigned i = 0; i < servers.Size(); i++)
    {
        if(servers[i]) 
        {
            servers[i]->Tick(time);
        }
    }
}

void ServerManager::Command(const char* c)
{
    for(unsigned i = 0; i < servers.Size(); i++)
    {
        if(servers[i]) 
        {
            servers[i]->Command(c);
        }
    }
}

void ServerManager::SetClient(Client* c)
{
    if(localServer) 
    {
        localServer->AttachConsole(c->GetConsole());
    }
}

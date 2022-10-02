//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"main.hpp"

#include<interface/kernel.hpp>
#include<viewer/compile.h>
#include<viewer/version.h>

#include<utility/pointer.hpp>

#include<client/client.hpp>
#include<client/remote.hpp>
#include<config/arguments.hpp>
#include<config/settings.hpp>
#include<console/console.hpp>
#include<console/shatter.hpp>
#include<file/textfile.hpp>
#include<viewer/server.hpp>
#include<client/servermanager.hpp>

void LoadSettings(Kernel* kernel, Settings* settings, const char* fileName)
{
    InStream* file = kernel->OpenFileIn(fileName);
    if(file)
    {
        settings->OverlayFile(&TextInStream(file));
    }
}


int Main(Kernel* kernel, Arguments* args)
{
    args->SetSwitchHasArg("s");
    args->SetSwitchHasArg("ini");
    args->SetSwitchHasArg("command");

    // Load default client settings
    Settings settings;
    settings.LoadFile("client.ini", &TextInStream(kernel->OpenFileIn("client.ini")));
    settings.LoadFile("client_user.ini", &TextInStream(kernel->OpenFileIn("client_user.ini")));
    settings.SetDominant("client_user.ini");

    // load additional setting specified in .ini file
    const char* auxSettings;
    auxSettings = settings.Get("settings.additional");
    {
        Console::ShatterParser parser(' ');
        parser.Parse(auxSettings);
        for(unsigned i = 0; i < parser.GetNumFragments(); i++)
        {
            LoadSettings(kernel, &settings, parser.GetFragment(i));
        }
    }

    // load additional settings specified on command line 
    int currentArg = 0;
    auxSettings = args->GetSwitchArg(currentArg++, "ini");
    while(auxSettings)
    {
        LoadSettings(kernel, &settings, auxSettings);
        auxSettings = args->GetSwitchArg(currentArg++, "ini");
    }


    AutoPtr<Client> client = new Client(kernel); 
    AutoPtr<ServerManager> server = new ServerManager(kernel);

    client->Initialize(args, &settings);
    server->Initialize(args, &settings);
    client->SetServer(server);
    server->SetClient(client);

    client->ExecFile("default.cfg");

    if(args)
    {
        int argCount = 0;
        const char* arg;
        while((arg = args->GetArg(argCount++)))
        {
            char tmp[256];
            sprintf(tmp, "load %s", arg);
            client->Command(tmp);
        }
    }

    // execute commands 
    {
        int currentArg = 0;
        const char* command = args->GetSwitchArg(currentArg++, "command");
        while(command)
        {
            client->Command(command);
            command = args->GetSwitchArg(currentArg++, "command");
        }
    }

    ///  check for old screenshot command
    if (args->GetSwitch("s"))
    {
        client->Command("c_exec scripts/screenshot.cfg");
        const char* filename = args->GetSwitchArg(0, "s");
        if(filename)
        {
            char tmp[256];
            sprintf(tmp, "screenshotName %s", filename);
            client->Command(tmp);
        }
    }


    Time lastTime = kernel->SystemTime();

    while(kernel->Idle())
    {
        Time tmp = lastTime;
        lastTime = kernel->SystemTime();
        Time delta = lastTime - tmp;
        float time = float(delta.AsMicroseconds()) / 1000;

        server->Tick(time);
        client->Tick(time);
    }

    settings.UnbindAll();

    if(settings.GetBool("settings.save"))
        settings.SaveFile("client_user.ini", &TextOutStream(kernel->OpenFileOut("client_user.ini")));

    client->Shutdown();
    server->Shutdown();

    return 0;
}


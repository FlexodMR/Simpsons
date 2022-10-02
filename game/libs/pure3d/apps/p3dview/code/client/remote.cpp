//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <client/remote.hpp>
#include <client/ftthfs.hpp>
#include <client/debugcom.hpp>

#include <interface/kernel.hpp>

#include <config/settings.hpp>
#include <console/shatter.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRALEAN
#include <windows.h>

#include <XBoxDbg/XBoxDbg.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <fstream>


RemoteServer::RemoteServer(Kernel* k)
{
    kernel = k;
    connection = NULL;
    hfs = NULL;
}

extern "C" int BootTool(char* filename, char* hostname);

static int XBoxBooted = false;
DWORD __stdcall XBoxBootHandler(ULONG dwNotification, DWORD dwParam)
{
    if(dwParam == DMN_EXEC_PENDING)
        XBoxBooted = true;

    return 0;
}

// Subsystem overrides
void RemoteServer::Initialize(Arguments* args, Settings* settings, const char* origTarget)
{
    kernel->Message("remote", "Initializing remote server (this may take a while)...", true);

    char target[64] = "target.";
    strcat(target, origTarget);

    settings->GetBool("remote.boot");

    bool reconnect;
    char address[256];
    char type[256];

    strcpy(address, settings->Get(target, "address"));
    strcpy(type, settings->Get(target, "type"));
    boot = settings->GetBool(target, "launch");
    reconnect = settings->GetBool(target, "reconnect");

    bool isPC = false;
    bool isTool = false; 
    isXbox = false;
    isFirewire = false;
    isGamecube = false;
    bool needHFS = true;

    if(strcmp(type, "xbox") == 0)
    {
        isXbox = true;
    } 
    else if(strcmp(type, "ps2tool") == 0)
    {
        isTool = true;
    } 
    else if(strcmp(type, "ps2firewire") == 0)
    {
        isFirewire = true;
    }
    else if(strcmp(type, "gamecube") == 0)
    {
        isGamecube = true;
    }
    else if(strcmp(type, "pc") == 0)
    {
        isPC = true;
    }
    else
    {
        char error[256];
        sprintf(error, "Unrecognized target type '%s'", type);
        kernel->Message("remote", error);
        return;
    }

    PDM_CONNECTION xboxConn;

    if(isXbox)
    {
        DmSetXboxName(address);
//      DmSetXboxNameNoRegister(address);

        unsigned long ip;
        char iptext[32] = "";
        DmGetAltAddress(&ip);
        //DmResolveXboxName(&ip);
        sprintf(iptext, "%d.%d.%d.%d", ((ip & 0xff000000) >> 24), ((ip & 0x00ff0000) >> 16), ((ip & 0x0000ff00) >> 8), (ip & 0x000000ff));
        strcpy(address, iptext);

        DmUseSharedConnection(TRUE);
        DmOpenConnection(&xboxConn);
        DmMkdir("e:\\p3dview");
    }
 
/*
    if(smartBoot && isXbox) 
    {
        kernel->Message("remote", "Attempting connection to running server...", true);

        char resp[256];
        DWORD size;

        DmSendCommand(xboxConn, "XCMD!isViewerThere", resp, &size);

        if(strcmp(resp, "200- oh yeah") == 0)
        {
            kernel->Message("remote", "Connected!");
            DmCloseConnection(xboxConn);
            connection = new XboxInterpreter;
            connection->Connect(address);
            Command("flush");
            return;
        }

        kernel->Message("remote", "Server not present... performing ordinary connect");
        delete connection;
        connection = NULL;
    }
*/

    if(isXbox && boot)
    {
        char tmp[512];

        sprintf(tmp,"%s\\p3dview.xbe", kernel->GetWorkingDirectory());
        DmSendFile(tmp, "e:\\p3dview\\p3dview.xbe");

        kernel->Message("remote", "Booting XBox..", true);

        PDMN_SESSION session;
        DmOpenNotificationSession(DM_PERSISTENT, &session);
        DmNotify(session, DM_EXEC, XBoxBootHandler);

        XBoxBooted = false;
        DmReboot(DMBOOT_WAIT | DMBOOT_WARM);
        while(!XBoxBooted)
        {
        }
        DmCloseNotificationSession(session);

        DmSetTitle("e:\\p3dview","p3dview.xbe","");
        DmGo();
        kernel->Sleep(Time(5.0f, Time::SECONDS));
    }

    if(isXbox)
    {
        DmCloseConnection(xboxConn);
        unsigned long ip;
        char iptext[32] = "";
        DmGetAltAddress(&ip);
        sprintf(iptext, "%d.%d.%d.%d", ((ip & 0xff000000) >> 24), ((ip & 0x00ff0000) >> 16), ((ip & 0x0000ff00) >> 8), (ip & 0x000000ff));
        strcpy(address, iptext);
    }

    if(isTool && boot)
    {
        kernel->Message("remote", "  Booting PS2 Tool...", true);
        BootTool("p3dviewpt.elf", (char*)address);
    }

    if(isGamecube && boot)
    {
        strcpy(address, "gamecubeUSB");
        if(getenv("ODEMUSDKBIN") != NULL)
        {
            system("odrun .\\p3dviewgd.elf");
        }
        else
        {
            system("loadrun .\\p3dviewgd.elf");
        }
    }

    if(needHFS)
    {
        kernel->Message("remote", "Connecting Host File Server...", true);
        hfs = new HostFileServer(kernel, origTarget);

        hfs->SetIsTool(isTool);

        hfs->SetHost(address);
        hfs->SetBasePath(kernel->GetWorkingDirectory());
        hfs->SetPathOverride(true);
        hfs->SetIsFirewire(isFirewire);
        if(isGamecube)
        {
            hfs->SetBootFilename("p3dviewgd.elf");
        }
        else
        {
            hfs->SetBootFilename("p3dviewpt.elf");
        }
        hfs->Connect();
    }

    kernel->Message("remote", "Connecting...", true);
    RadDbgComInterpreter* dc = new RadDbgComInterpreter(origTarget);
    connection = dc;
    dc->SetIsFirewire(isFirewire);

    if(!connection->Connect(address))
    {
        if(hfs)
        {
            while(!hfs->IsDoneBooting())
            {
                if(!kernel->Idle())
                    return;
            }
        }

        while(!connection->Connect(address))
        {
            if(!kernel->Idle())
                return;
        }
    }

    kernel->Idle();
    if(hfs) hfs->Service();
}

void RemoteServer::Shutdown(void)
{
    Command("s_dumpSettings");
    
    kernel->Sleep(Time(3.0f, Time::SECONDS));

    if(isXbox)
    {
        DmReceiveFile("server_user.ini", "e:\\p3dview\\server_user.ini");
    }

    if(isGamecube && boot)
    {
        if(getenv("ODEMUSDKBIN") != NULL)
        {
            system("odstop");
        }
        else
        {
            system("stop");
        }
    }

    delete connection;
    delete hfs;
}

void RemoteServer::Tick(float time)
{
    if(hfs)
        hfs->Service();
}

void RemoteServer::Command(const char* line)
{
    if(!connection)
        return;

    connection->Command(line);
}


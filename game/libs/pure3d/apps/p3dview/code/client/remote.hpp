//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _REMOTE_HPP_
#define _REMOTE_HPP_

#include <console/interface.hpp>
#include <console/commandline.hpp>
#include <viewer/server.hpp>
#include <client/remoteconnection.hpp>

class HostFileServer;

class RemoteServer : public Subsystem
{
public:
    RemoteServer(Kernel* kernel);

    void Initialize(Arguments*, Settings*, const char* target); 

    // Subsystem overrides
    void Initialize(Arguments*, Settings*) {}; // TODO, need to fix this
    void Shutdown(void);

    void Tick(float time);

    void Command(const char* line);

protected:
    

    Kernel* kernel;
    RemoteConnection* connection;
    HostFileServer* hfs;

    bool boot;
    
    bool isXbox;
    bool isFirewire;
    bool isGamecube;
};

#endif

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SERVERMANAGER_HPP_
#define _SERVERMANAGER_HPP_

#include<utility/pointer.hpp>
#include<utility/array.hpp>
#include<interface/subsystem.hpp>

class Kernel;
class RemoteServer;
class Server;
class Client;


class ServerManager : public Subsystem
{
public:
    ServerManager(Kernel* k) : haveLocal(false), kernel(k), servers(8) { }
    
    // Subsystem overrides
    void Initialize(Arguments*, Settings*);
    void Shutdown(void);

    void Tick(float time);

    void Command(const char*);

    // local functions
    void SetClient(Client* c);
protected:
    Subsystem* InitServer(Arguments*, Settings*, const char* target);

    bool haveLocal;
    DumbPtr<Kernel> kernel;
    Array<AutoPtr<Subsystem> > servers;
    DumbPtr<Server> localServer;
};

#endif
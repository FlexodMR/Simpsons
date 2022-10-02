//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <client/ftthfs.hpp>

#include <interface/kernel.hpp>

#include <p3d/utility.hpp>
#include <p3d/platform.hpp>

#include <raddebugcommunication.hpp>
#include <radfile.hpp>
#include <radplatform.hpp>
#include <radprotocols/fileprotocol.hpp>
#include <raddebugfileserver.hpp>

#include <string.h>
#include <stdio.h>

class HFSCallback : public IRadDbgComChannelStatusCallback,
                    public IRadDebugFileServerFileCallback
{
public:
   HFSCallback(HostFileServer* h) : hfs(h) { /* */ }
   
    void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message )
    {
        if( connectionState == IRadDbgComChannel::Detached )
        {
            hfs->connected = false;
            p3d::printf( "Host file server (%s): [Detached], Message: [%s]\n",hfs->GetTargetName(), Message );
            hfs->Reconnect();
        }
        else if( connectionState == IRadDbgComChannel::Attaching )
        {
            p3d::printf( "Host file server (%s): [Attaching], Message: [%s]\n",hfs->GetTargetName(), Message );
        }   
        else if( connectionState == IRadDbgComChannel::Detaching )
        {
            p3d::printf( "Host file server (%s): [Detaching], Message: [%s]\n",hfs->GetTargetName(), Message );
        }   
        else if( connectionState == IRadDbgComChannel::Attached )
        {
            p3d::printf( "Host file server (%s): [Attached], Message: [%s]\n",hfs->GetTargetName(), Message );
        }   
   }

    void OnTargetFileAction( char* pName, HfpCommand pCommand, int pPosition, int pLength )
    {
        if( pCommand == HfsClose )
        {
            if( strcmpi( hfs->bootFilename, pName ) == 0 )
            {
               hfs->closeCount++;
               hfs->doneBooting = hfs->closeCount == 3;
            }
        }
    }

   void AddRef( void) { };
   void Release( void ) { };

protected:
   HostFileServer* hfs;
};


HostFileServer::HostFileServer(Kernel* k, const char* t)
{
   strcpy(targetName, "p3dview.");   
   strcat(targetName, t);

   kernel = k;

   hostName[0] = 0;
   basePath[0] = 0;
   bootFilename[0] = 0;
   tool = true;
   pathOverride = true;

   server = NULL;
   host = NULL;

   connected = false;

   radDebugFileServerInit( );
   radDebugFileServerCreate( &server, 0 );
   server->GetTargetInterface( &host );

   host->DeleteTargetDefinition(targetName);
   adapter = new HFSCallback(this);

   server->RegisterFileCallback( adapter );
   server->RegisterStatusCallback( adapter );

   isFirewire = false;

   doneBooting = true;
}

HostFileServer::~HostFileServer()
{
   Disconnect();
   host->DeleteTargetDefinition(targetName);
   host->Release( );
   server->Release( );
   radDebugFileServerTerminate( );
}

void HostFileServer::SetHost(const char* h)
{
   strcpy(hostName, h);
}

void HostFileServer::SetIsTool(bool t)
{
   tool = t;
}

void HostFileServer::SetBasePath(const char* p)
{
   strcpy(basePath, p);
   server->SetBasePath( ( char* ) p );
}

void HostFileServer::SetPathOverride(bool o)
{
   pathOverride = o;
   server->SetPathOverride( o );
}

void HostFileServer::SetBootFilename(const char* b)
{
   strcpy(bootFilename,b);
   if( strlen( b ) > 0 ) 
   {
       server->SetBootData( ( unsigned char* ) b, 1 + strlen( b ) );
   } 
   else
   {
       server->SetBootData( NULL, 0 );
   }
}

void HostFileServer::Connect(void)
{
    host->DeleteTargetDefinition(targetName);

    if(isFirewire)
        host->AddTargetDefinition(targetName, "FireWire", 8510);
    else
        host->AddTargetDefinition(targetName, hostName, 8510);


    server->RegisterStatusCallback( adapter );

    char errorMessage[ 512 ];
    if( !server->Attach( targetName, errorMessage ) )
    {
        return;
    }

    connected = true;      
    doneBooting = tool;
    closeCount = 0;
}

void HostFileServer::Reconnect(void)
{
    char errorMessage[ 512 ];
    if( !server->Attach( targetName, errorMessage ) )
    {
        return;
    }
}

void HostFileServer::Disconnect(void)
{
    connected = false;

    server->Detach( );
}

void HostFileServer::Service(void)
{
    radDbgComService();
    return;
}

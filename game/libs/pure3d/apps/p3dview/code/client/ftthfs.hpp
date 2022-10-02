//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _FTTHFS_HPP_
#define _FTTHFS_HPP_

#include "remote.hpp"
#include "raddebugfileserver.hpp"

class tFile;
class Kernel;

class HostFileServer
{
public:
   HostFileServer(Kernel*, const char* targetName);
   ~HostFileServer();

   void SetHost(const char*);
   void SetIsTool(bool);
   void SetBasePath(const char*);
   void SetPathOverride(bool);
   void SetBootFilename(const char* bootFilename);
   void SetIsFirewire(bool b) {isFirewire = b;}

   void Connect(void);
   void Reconnect(void);
   void Disconnect(void);
   bool IsConnected(void) { return connected; }
   bool IsDoneBooting(void) { return doneBooting; }

   void Service(void);

   const char* GetTargetName(void) { return targetName;}
//   void SetMessageRecipient(TextOutDevice*);

protected:
   friend class HFSCallback;

   char  targetName[256];
   char  hostName[64];
   char  basePath[512];
   char  bootFilename[64];
   bool  tool;
   bool  pathOverride;
   bool isFirewire;

   bool connected;

   HFSCallback* adapter;

   struct IRadDebugFileServer* server;
   struct IRadDbgComTargetTable* host;

   Kernel* kernel;

   bool doneBooting;
   unsigned closeCount;
};

#endif
//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _DEBUGCOM_HPP_
#define _DEBUGCOM_HPP_

#include "remote.hpp"

class Client;

class RadDbgComInterpreter : public RemoteConnection
{
public:
   RadDbgComInterpreter(const char* targetName);
   ~RadDbgComInterpreter();

   void Command(const char* line);

   bool Connect(const char* s);
   bool Disconnect(void);

   void SetIsFirewire(bool b) {isFirewire = b;}

   const char* GetTargetName(void) { return targetName;}

private: 
   char targetName[256];
   bool isFirewire;

   struct IRadDbgComChannel* channel;
   class CommandCallback* callback;
};

#endif
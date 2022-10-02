//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _REMOTE_CONNECTION_HPP
#define _REMOTE_CONNECTION_HPP

#include <interface/commandrecipient.hpp>

class RemoteConnection : public CommandRecipient
{
public:
    virtual void Command(const char* line) = 0;

    virtual bool Connect(const char* s) = 0;
    virtual bool Disconnect(void) = 0;
};

#endif
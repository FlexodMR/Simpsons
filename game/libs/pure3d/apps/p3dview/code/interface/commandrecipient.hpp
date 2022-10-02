//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_COMMAND_RECIPIENT_HPP_
#define _VIEWER_COMMAND_RECIPIENT_HPP_

class CommandRecipient
{
public:
    virtual ~CommandRecipient() {}
    virtual void Command(const char* text) = 0;
};

#endif
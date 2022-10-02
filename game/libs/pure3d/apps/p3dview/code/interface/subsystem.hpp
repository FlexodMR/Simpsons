//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SUBSYSTEM_HPP_
#define _SUBSYSTEM_HPP_

#include<interface/commandrecipient.hpp>

class Arguments;
class Settings;

class Subsystem : public CommandRecipient
{
public:
    virtual ~Subsystem() {};

    virtual void Initialize(Arguments*, Settings*) = 0;
    virtual void Shutdown(void) = 0;

//   virtual void Freeze(void) = 0;
//   virtual void Thaw(void) = 0;

    virtual void Tick(float time) = 0;

    virtual void Command(const char*) = 0;
};

#endif

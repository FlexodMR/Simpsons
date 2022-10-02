/*===========================================================================
    File:: tlEntity.cpp

    Copyright (c) 1997 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlEntity.hpp"
#include "tlTypes.hpp"    // For P3DMAXNAME
#include "tlString.hpp"
#include "hash.hpp"
#include <assert.h>
#include <string.h>

tlEntity::tlEntity() :
        name(NULL),
        mark(0)
{
}

tlEntity::~tlEntity(void)
{
    strdelete(name);
}


void
tlEntity::SetName(char const *n)
{
    strdelete(name);
    name = strnew(n);
}

TLUID tlEntity::MakeUID(const char* x)
{
    TLUID h = 0;
    char* s = (char*)x;

    // Added by Bryan Ewert on 25 Jun 2002: Protect from NULL name.
    while( s && *s)
    {
        h *= 65599;
        h = (h ^ *s);
        ++s;
    }
    return h;
}

TLUID tlEntity::UID()
{
    return MakeUID(name);
}


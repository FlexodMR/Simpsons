//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _MALLOCALIGNED_HPP
#define _MALLOCALIGNED_HPP

#include <size_t.h>

// Alignment MUST be a power of two
void *mallocaligned(std::size_t size, unsigned alignment);
void freealigned(void *p);

#endif


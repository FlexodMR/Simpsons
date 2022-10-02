//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/ee.hpp>
#include <p3d/memory.hpp>

namespace EE
{
    void* malloc_temp(int size)
    {
        return p3d::MallocTemp(size);
    }

    void free_temp(void* ptr)
    {
        p3d::FreeTemp(ptr);
    }
}

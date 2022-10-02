//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "copydataadapter.hpp"
#include <interface/commandrecipient.hpp>
#include <p3d/error.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>


CopyDataAdapter::CopyDataAdapter(CommandRecipient* v, Window* w) : viewer(v) 
{
    ((Win32Window*)w)->AddHandler(this);
}

long CopyDataAdapter::Event(Win32Window* win, int msg, int wparam, int lparam)
{
    if(msg == WM_COPYDATA)
    {
        char buf[1024];
        PCOPYDATASTRUCT copyData = (PCOPYDATASTRUCT) lparam; // pointer to structure with data 
        P3DASSERT(copyData->dwData == 0);
        memcpy(buf, copyData->lpData, copyData->cbData);
        buf[copyData->cbData] = 0;
        viewer->Command(buf);
    }
    return 0;
}

void CopyDataAdapter::Release(void)
{
    delete this;
}



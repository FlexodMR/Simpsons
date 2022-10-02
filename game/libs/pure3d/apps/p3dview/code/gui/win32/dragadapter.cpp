//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "dragadapter.hpp"

#include <interface/commandrecipient.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <shellapi.h>

// test

DragAdapter::DragAdapter(CommandRecipient* v, Window* w) : viewer(v) 
{
    ((Win32Window*)w)->AddHandler(this);
}

long DragAdapter::Event(Win32Window* win, int msg, int wparam, int lparam)
{
    if(msg == WM_DROPFILES)
    {
        HDROP hDrop = (HDROP) wparam;  // handle of internal drop structure 

        int count = DragQueryFile((HDROP)hDrop, 0xffffffff, NULL, 0);

        for(int i = 0; i < count; i++)
        {
            char buffy[128];            
            unsigned int result = DragQueryFile((HDROP)hDrop, i, buffy, 128);
            char buf2[256] = "load \"";
            strcat(buf2, buffy);
            strcat(buf2, "\"");
            viewer->Command(buf2);
        }
    }
        return 0;
}

void DragAdapter::Release(void)
{
    delete this;
}



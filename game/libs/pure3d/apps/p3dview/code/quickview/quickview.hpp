//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _QUICKVIEW_HPP_
#define _QUICKVIEW_HPP_

namespace QuickViewer
{
    void Start(const char* commandLine, const char* execPath = 0);
    void Shutdown(void);
    bool IsRunning(void);
    void Command(const char*);
}



#endif

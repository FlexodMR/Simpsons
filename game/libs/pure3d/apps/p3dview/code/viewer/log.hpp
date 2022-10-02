//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_LOG_HPP_
#define _VIEWER_LOG_HPP_

namespace Console
{
class Buffer;
}

namespace Log
{
    void Setup(void);
    void Shutdown(void);

    void Echo(const char*);

    Console::Buffer* GetText(void);
};


#endif
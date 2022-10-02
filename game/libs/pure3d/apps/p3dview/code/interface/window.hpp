//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_WINDOW_INTERFACEE_HPP_
#define _VIEWER_WINDOW_INTERFACEE_HPP_

class Window
{
public:
    virtual ~Window() {};

    virtual bool Active(void) = 0;
    virtual void Resize(unsigned, unsigned) = 0;
    virtual void Show(bool) = 0;
};

#endif
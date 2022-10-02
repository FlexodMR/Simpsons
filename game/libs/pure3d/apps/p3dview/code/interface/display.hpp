//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_DISPLAY_INTERFACEE_HPP_
#define _VIEWER_DISPLAY_INTERFACEE_HPP_

class Display
{
public:
    virtual ~Display() {};

    virtual void Configure(Settings*) = 0;

    virtual void SetDriver(char*) = 0;
    virtual void SetResolution(unsigned x, unsigned y, unsigned bpp) = 0;
    virtual void SetFullscreen(bool) = 0;

    virtual void Initialize(void) = 0;

    virtual tContext* GetContext(void) = 0;
};

#endif


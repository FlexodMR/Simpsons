//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCDEV_HPP_
#define _GCDEV_HPP_
                
#include <pddi/pddi.hpp>

class gcContext;

class gcDevice : public pddiDevice
{
    bool initialized;

public:
    gcDevice();

    void        GetLibraryInfo(pddiLibInfo *info);
    const char *GetDeviceDescription(void);
    unsigned    GetCaps(void);

    void SetCurrentContext(pddiRenderContext* context);
    pddiRenderContext* GetCurrentContext(void);

    pddiDisplay       *NewDisplay(int id);
    pddiRenderContext *NewRenderContext(pddiDisplay *display);
    pddiTexture       *NewTexture(pddiTextureDesc *desc);
    pddiPrimBuffer    *NewPrimBuffer(pddiPrimBufferDesc *desc);
    pddiShader        *NewShader(const char *name, const char *aux = NULL);

    void AddCustomShader(const char *name, const char *aux = NULL);

    void Release(void);

    protected:
    virtual ~gcDevice();
    
    gcContext *mCurrentContext;

};
#endif


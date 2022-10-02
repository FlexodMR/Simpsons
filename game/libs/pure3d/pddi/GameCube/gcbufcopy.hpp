//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GC_EXTBUFCOPY
#define _GC_EXTBUFCOPY

#include <pddi/pddiext.hpp>

class gcContext;
class gcDevice;
class pddiTexture;

class gcExtBufferCopy : public pddiExtBufferCopy
{
 public:
    gcExtBufferCopy(gcContext *c, gcDevice *dev);
    virtual ~gcExtBufferCopy();
    
    virtual pddiTexture *CreateZTexture(int xres, int yres, int bpp);
    virtual pddiTexture *CreateBackTexture(int xres, int yres, int bpp, bool alpha);
    virtual pddiTexture *CreateAlphaTexture(int xres, int yres, int bpp);

    virtual bool CopyZBuf(pddiTexture *tex, bool clear); 
    virtual bool CopyBackBuf(pddiTexture *tex, bool clear, bool halfsize);
    virtual bool CopyAlphaBuf(pddiTexture *tex, bool clear, int bpp, int alphadepth);

 private:

    gcContext *mContext;
    gcDevice  *mDevice;
};


#endif


/*===========================================================================
   ps2device.hpp
   22-Nov-99 Created by Gabriel

   Copyright (c)1999 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#ifndef _PS2DEVICE_HPP
#define _PS2DEVICE_HPP

#include <pddi/pddi.hpp>

class ps2Device : public pddiDevice
{
public:
   ps2Device();
   virtual ~ps2Device();

   virtual void GetLibraryInfo(pddiLibInfo* info);

   virtual void SetCurrentContext(pddiRenderContext* context);
   virtual pddiRenderContext* GetCurrentContext() { return context; }

   virtual pddiDisplay* NewDisplay(int id);
   virtual pddiRenderContext* NewRenderContext(pddiDisplay* display);
   virtual pddiTexture* NewTexture(pddiTextureDesc*);
   virtual pddiShader* NewShader(const char* name, const char* aux);
   virtual pddiPrimBuffer* NewPrimBuffer(pddiPrimBufferDesc* desc);

   virtual void AddCustomShader(const char* name, const char* aux) { /* */ }

private:
   pddiRenderContext* context;
};

#endif // _PS2DEVICE_HPP

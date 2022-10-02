//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GLSURF_HPP_
#define _GLSURF_HPP_
#include <pddi/pddi.hpp>

class pglContext;
class pglWrapper;

class pglDisplay : public pddiDisplay
{
public:
    pglDisplay();
    ~pglDisplay();

    // cross-platform functions
    bool InitDisplay(const pddiDisplayInit*);
    bool InitDisplay(int x, int y, int bpp);

    pddiDisplayInfo* GetDisplayInfo(void);

    int GetHeight(void);
    int GetWidth(void);
    int GetDepth(void);
    pddiDisplayMode GetDisplayMode(void);
    int GetNumColourBuffer(void);
    unsigned GetBufferMask(void);

    unsigned GetFreeTextureMem(void);

    void SwapBuffers(void);

    unsigned Screenshot(pddiColour* buffer, int nBytes);

    // Win32 specific functions
    long  ProcessWindowMessage(void* hWnd, unsigned message, unsigned wParam, long lParam);
    void  SetWindowHandle(void* hWnd);
    void* GetWindowHandle();

    // internal functions
    
    void BeginTiming();
    float EndTiming();

    void SetContext(pglContext* c) {context = c;}
    bool ExtBGRA(void) { return extBGRA;}
    bool CheckExtension(char*);
    bool HasReset(void) { return reset; }


    static unsigned FillDisplayModes(pddiModeInfo*);

    void BeginContext(void);
    void EndContext(void);

    void SetGamma(float r, float g, float b);
    void GetGamma(float* r, float* g, float* b);


private:
    pddiDisplayMode mode;
    int winWidth;
    int winHeight;
    int winBitDepth;

    pddiDisplayInit displayInit;

    pglContext* context;

    unsigned short initialGammaRamp[3][256];
    float gammaR,gammaG,gammaB;

    void* winHWND;
    void* hRC;
    void* hDC;
    void* hFont;
    void* prevRC;
    void* prevDC;

    bool extBGRA;
    bool reset;

    unsigned windowStyle;

    float beginTime;
};

#endif

#pragma once
#ifndef _DIB_H_
#define _DIB_H_

#include "StdAfx.h"


/////////////////////////////////////////////////////////////////////////////
// CDib

class CDib
{
public:
    CDib();
    ~CDib();

// Attributes
    BYTE* m_pData;
    BYTE* m_pBits;
    int m_nPitch;
    CSize m_size;

// Operations
    void Init(UINT nNumColors);
    void AllocateBits(int nPitch, int cy);

    operator BITMAPINFO*()    { return (BITMAPINFO*)m_pData; }
    operator RGBQUAD*()        { return (RGBQUAD*)(m_pData + sizeof(BITMAPINFOHEADER)); }
};

#endif

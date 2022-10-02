#include "dib.h"

/////////////////////////////////////////////////////////////////////////////
// CDib

CDib::CDib()
{
    m_pData = NULL;
    m_pBits = NULL;
}

CDib::~CDib()
{
    delete[] m_pData;
    delete[] m_pBits;
}

void CDib::Init(UINT nNumColors)
{
    if (m_pData)
    {
        delete[] m_pData;
        m_pData = NULL;
    }
    m_pData = new BYTE[sizeof(BITMAPINFOHEADER) + nNumColors*sizeof(RGBQUAD)];
}

void CDib::AllocateBits(int nPitch, int cy)
{
    if (m_pBits)
    {
        delete[] m_pBits;
        m_pBits = NULL;
    }

    m_nPitch = nPitch;
    m_pBits = new BYTE[nPitch*cy];
}



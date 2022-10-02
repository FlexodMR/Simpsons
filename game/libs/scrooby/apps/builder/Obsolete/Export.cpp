/////////////////////////////////////////////////////////////////////////////
// Export.cpp : implementation of the export functionality

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "XCon.h"
#include "resource.h"
#include "XConDoc.h"

#include "xScreen.h"
//#include "xGroup.h"
#include "xOverlay.h"
//#include "xPrimitive.h"
//#include "xSprite.h"
//#include "xText.h"
#include "xDisplay.h"
//#include "xFont.h"
//#include "xClipReg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

// if we use javascript, no xc
#ifdef JSFILE
enum xcTModeEnum
{
    xcTM_s50d50,
    xcTM_sAdd,
    xcTM_sSub,
    xcTM_s100d25,
    xcTM_sNone,
    xcTM_sDisableDrawing,
    xcTM_sMAX,
};
enum xcChunkEnum
{
    XC_CHUNK_XCON = 1,
    XC_CHUNK_NONDISCARD,
    XC_CHUNK_DISCARD,
    XC_CHUNK_FONT,
    XC_CHUNK_IMAGE,
    XC_CHUNK_STRING,
    XC_CHUNK_SCREEN,
    XC_CHUNK_OVERLAY,
    XC_CHUNK_SPRITE,
    XC_CHUNK_TEXT,
    XC_CHUNK_DR_AREA,            // clip
    XC_CHUNK_PRIMITIVE_F2,        // flat line            // Look these up in libgpu.h
    XC_CHUNK_PRIMITIVE_G2,        // gouraud line
    XC_CHUNK_PRIMITIVE_F3,        // flat triangle
    XC_CHUNK_PRIMITIVE_G3,        // gouraud triangle
    XC_CHUNK_PRIMITIVE_F4,        // flat quad
    XC_CHUNK_PRIMITIVE_G4,        // gouraud quad
    XC_NUM_CHUNKS
};
enum xcJustEnum
{
    xcJUST_LEFT = 0x0001,
    xcJUST_RIGHT = 0x0002,
    xcJUST_CENTERX = xcJUST_LEFT | xcJUST_RIGHT,
    xcJUST_TOP = 0x0004,
    xcJUST_BOTTOM = 0x0008,
    xcJUST_CENTERY = xcJUST_TOP | xcJUST_BOTTOM,

    xcJUST_LEFT_TOP = xcJUST_LEFT | xcJUST_TOP,
    xcJUST_RIGHT_TOP = xcJUST_RIGHT | xcJUST_TOP,
    xcJUST_CENTERX_TOP = xcJUST_CENTERX | xcJUST_TOP,

    xcJUST_LEFT_BOTTOM = xcJUST_LEFT | xcJUST_BOTTOM,
    xcJUST_RIGHT_BOTTOM = xcJUST_RIGHT | xcJUST_BOTTOM,
    xcJUST_CENTERX_BOTTOM = xcJUST_CENTERX | xcJUST_BOTTOM,

    xcJUST_LEFT_CENTERY = xcJUST_LEFT | xcJUST_BOTTOM,
    xcJUST_RIGHT_CENTERY = xcJUST_RIGHT | xcJUST_BOTTOM,
    xcJUST_CENTERX_CENTERY = xcJUST_CENTERX | xcJUST_CENTERY,
};

#define xcPalette32Image  xcImage



typedef struct xcColour32
{
    char m_red;
    char m_green;
    char m_blue;
    char m_alpha;
    xcColour32(char red, char green, char blue, char alpha = -1)
    {m_red = red;/*etc*/};
} xcColour32;

#else
#include <xcImage.cpp>
#include <xcXDC.cpp>
#include <xcCell.cpp>
#include <xcSquish.cpp>
#include <xcDoEnum.h>
#endif

#define FIX16(a)    (DWORD)((int)a << 16)

static const TCHAR s_szPSXFileName[] = _T("xcview.tmp");

#pragma pack(1)

typedef struct
{
    BYTE type;
    BYTE just;
    BYTE trans;
    BYTE size;
} PRIMHEADER;

// structures from LIBGPU.H
typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x40
    short x0,y0;
    short x1,y1;
} LINE_F2;

typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x50
    short x0,y0;
    BYTE r1,g1,b1,pad;        // pad=0
    short x1,y1;
} LINE_G2;

typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x20
    short x0,y0;
    short x1,y1;
    short x2,y2;
} POLY_F3;

typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x30
    short x0,y0;
    BYTE r1,g1,b1,pad1;        // pad=0
    short x1,y1;
    BYTE r2,g2,b2,pad2;        // pad=0
    short x2,y2;
} POLY_G3;

typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x28
    short x0,y0;
    short x1,y1;
    short x2,y2;
    short x3,y3;
} POLY_F4;

typedef struct
{
    PRIMHEADER tag;
    BYTE r0,g0,b0,code;        // code=0x38
    short x0,y0;
    BYTE r1,g1,b1,pad1;        // pad=0
    short x1,y1;
    BYTE r2,g2,b2,pad2;        // pad=0
    short x2,y2;
    BYTE r3,g3,b3,pad3;        // pad=0
    short x3,y3;
} POLY_G4;

typedef struct
{
    PRIMHEADER tag;
    DWORD code[2];            // fill with short x,y,w,h
} DR_AREA;

typedef struct
{
    PRIMHEADER tag;
    DWORD dwMatrix[3][3];    // translation matrix
    xcColour32 nColour32;
    BYTE nNumItems;
    BYTE nItemIndex;
    WORD wPad;
} XC_SPRITE;

typedef struct
{
    XC_SPRITE xcs;
    DWORD dwFont;
    int nSpacing;
} XC_TEXT;

#pragma pack()

static BYTE s_nTranslucencyMap[] =
{
    xcTM_sNone,
    xcTM_sAdd,
    xcTM_sSub,
    xcTM_s50d50,
    xcTM_s100d25,
};

/////////////////////////////////////////////////////////////////////////////

static TCHAR s_szCurPath[_MAX_PATH];


void CXConDoc::FixUpPaths()
{
    if (m_strExportOnlyResPath.IsEmpty())
        return;

    // fix up the language path first
    if (!m_strLanguagePath.IsEmpty())
    {
        CString strTemp = m_strLanguagePath;
        m_strLanguagePath = m_strExportOnlyResPath + &((LPCTSTR)strTemp)[m_strResourcePath.GetLength()];
    }

    // change the resource path to the passed in resource path
    m_strResourcePath = m_strExportOnlyResPath;
}

/////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////

DWORD CXConDoc::HashName(LPCTSTR pName)
{
    DWORD dwHash = 0;
    while (*pName)
        dwHash = (dwHash<<5) + dwHash + *pName++;
    return dwHash;
}


void CXConDoc::ExportArrayNameOffset(CArchive& ar, CObArray* pArray)
{
    int nSize = pArray->GetSize();
    ar << nSize;
    for (int i = 0; i < nSize; i++)
    {
        ar << HashName(((CXObject*)pArray->GetAt(i))->GetName());
        ar << (DWORD)0;        // offset
    }
}

void CXConDoc::ExportOffsets(CArchive& ar, CObArray* pArray)
{
    CFile* pFile = ar.GetFile();
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        ar.Flush();
        pFile->Seek(4, CFile::current);
        ar << ((CXObject*)pArray->GetAt(i))->GetExpOffset();
    }
}


/////////////////////////////////////////////////////////////////////////////

void CXObject::Export(CArchive& ar)
{
    ar.Flush();
    m_dwExpOffset = ar.GetFile()->GetPosition();
}

void CXScreen::Export(CArchive& ar)
{
    CXObject::Export(ar);

    int nSize = m_arOverlay.GetSize();
    ar << nSize;
    for (int i = 0; i < nSize; i++)
        ar << ((CXConDoc*)ar.m_pDocument)->HashName(m_arOverlay[i]->GetName());
}

void CXOverlay::Export(CArchive& ar)
{
    CXObject::Export(ar);

    ar << (DWORD)0;        // visible state
    ((CXConDoc*)ar.m_pDocument)->ExportArrayNameOffset(ar, &m_arContext);
}

/*
void CXGroup::Export(CArchive& ar)
{
    CXObject::Export(ar);

    ar << (DWORD)0;        // visible state
    ((CXConDoc*)ar.m_pDocument)->ExportArrayNameOffset(ar, &m_arContext);
}
*/

BYTE CXDisplay::GetExpJustification()
{
    BYTE c = 0;
    if (m_d.nAlignment & ALIGN_LEFT)
        c |= xcJUST_LEFT;
    else if (m_d.nAlignment & ALIGN_HCENTER)
        c |= xcJUST_CENTERX;
    else
        c |= xcJUST_RIGHT;

    if (m_d.nAlignment & ALIGN_TOP)
        c |= xcJUST_TOP;
    else if (m_d.nAlignment & ALIGN_VCENTER)
        c |= xcJUST_CENTERY;
    else
        c |= xcJUST_BOTTOM;
    return c;
}

/*
void CXSprite::Export(CArchive& ar)
{
#ifndef JSFILE
    CXObject::Export(ar);

    XC_SPRITE xcs;
    xcs.tag.size = 0;
    xcs.tag.type = XC_CHUNK_SPRITE; 
    xcs.tag.just = GetExpJustification();
    xcs.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    memset(xcs.dwMatrix, 0, sizeof(xcs.dwMatrix));
    xcs.dwMatrix[0][0] = FIX16(1);
    xcs.dwMatrix[1][1] = FIX16(1);
    xcs.dwMatrix[0][2] = FIX16(m_d.x);
    xcs.dwMatrix[1][2] = FIX16(m_d.y);
    xcs.dwMatrix[2][2] = FIX16(1);

    BYTE r = (BYTE)min(255.0f, m_ds.ClrScale.fRed*128.0f);
    BYTE g = (BYTE)min(255.0f, m_ds.ClrScale.fGreen*128.0f);
    BYTE b = (BYTE)min(255.0f, m_ds.ClrScale.fBlue*128.0f);
    xcs.nColour32 = xcColour32(r, g, b);

    int nSize = m_arImage.GetSize();
    xcs.nNumItems = nSize;
    xcs.nItemIndex = 0;

    ar.Write(&xcs, sizeof(xcs));

    CXConDoc* pDoc = (CXConDoc*)ar.m_pDocument;
    for (int i = 0; i < nSize; i++)
        ar << pDoc->HashName(m_arImage[i]->GetName());
#endif
}

*/

/*
void CXText::Export(CArchive& ar)
{
    CXObject::Export(ar);
#ifndef JSFILE
    XC_TEXT xct;
    xct.xcs.tag.size = 0;
    xct.xcs.tag.type = XC_CHUNK_TEXT; 
    xct.xcs.tag.just = GetExpJustification();
    xct.xcs.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    memset(xct.xcs.dwMatrix, 0, sizeof(xct.xcs.dwMatrix));
    if (m_dt.nOrientation == ORIENTATION_NORMAL)
    {
        xct.xcs.dwMatrix[0][0] = FIX16(1);
        xct.xcs.dwMatrix[1][1] = FIX16(1);
    }
    else
    {
        // set rotation to -90 deg
        xct.xcs.dwMatrix[0][1] = FIX16(1);
        xct.xcs.dwMatrix[1][0] = FIX16(-1);
    }
    xct.xcs.dwMatrix[0][2] = FIX16(m_d.x);
    xct.xcs.dwMatrix[1][2] = FIX16(m_d.y);
    xct.xcs.dwMatrix[2][2] = FIX16(1);

    BYTE r = GetRValue(m_dt.clr)*128/255;
    BYTE g = GetGValue(m_dt.clr)*128/255;
    BYTE b = GetBValue(m_dt.clr)*128/255;
    xct.xcs.nColour32 = xcColour32(r, g, b);

    int nSize = m_arString.GetSize();
    xct.xcs.nNumItems = nSize;
    xct.xcs.nItemIndex = 0;
    xct.dwFont = ((CXConDoc*)ar.m_pDocument)->HashName(m_dt.pFont->GetName());
    xct.nSpacing = m_dt.nSpacing;

    ar.Write(&xct, sizeof(xct));

    CXConDoc* pDoc = (CXConDoc*)ar.m_pDocument;
    CString str;
    for (int i = 0; i < nSize; i++)
    {
        if (m_dt.bCopyString)
            str = m_arExpCopyID[i];
        else
            str = m_arString[i]->GetName();
        ar << pDoc->HashName(str);
    }
#endif
}
*/

/*
void CXClipReg::Export(CArchive& ar)
{
    CXObject::Export(ar);

    DR_AREA da;
    da.tag.size = 2;
    da.tag.type = XC_CHUNK_DR_AREA;
    da.tag.just = 0;
    da.tag.trans = 0;

    WORD* pData = (WORD*)da.code;
    *pData++ = (WORD)m_rect.left;
    *pData++ = (WORD)m_rect.top;
    *pData++ = (WORD)m_rect.Width();
    *pData = (WORD)m_rect.Height();
    ar.Write(&da, sizeof(da));
}

*/
/////////////////////////////////////////////////////////////////////////////

/*
void CXPrimitive::Export(CArchive& ar)
{
    CXObject::Export(ar);

    switch (m_d.nVertices)
    {
    case 2:
        if (m_d.rgbVertex[0] == m_d.rgbVertex[1])
            ExportF2(ar);
        else
            ExportG2(ar);
        break;

    case 3:
        if (m_d.rgbVertex[0] == m_d.rgbVertex[1] && m_d.rgbVertex[0] == m_d.rgbVertex[2])
            ExportF3(ar);
        else
            ExportG3(ar);
        break;

    case 4:
        if (m_d.rgbVertex[0] == m_d.rgbVertex[1] && m_d.rgbVertex[0] == m_d.rgbVertex[2] && m_d.rgbVertex[0] == m_d.rgbVertex[3])
            ExportF4(ar);
        else
            ExportG4(ar);
        break;
    }
}

// ******************************
// ugly, ugly hack
//
// The PSX has a problem with right most edge of the screen, where the
// last pixel is not drawn. This seems to fix the problem, but a better
// solution should be found.
//
// ******************************

#define BOUNDX(n)    (short)(m_d.ptVertex[n].x == 511 ? 512 : m_d.ptVertex[n].x)
#define BOUNDY(n)    (short)(m_d.ptVertex[n].y == 255 ? 256 : m_d.ptVertex[n].y)


void CXPrimitive::ExportF2(CArchive& ar)
{
    LINE_F2 lf2;
    lf2.tag.size = 3;
    lf2.tag.type = XC_CHUNK_PRIMITIVE_F2;
    lf2.tag.just = 0;
    lf2.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&lf2.r0 = m_d.rgbVertex[0];
    lf2.code = 0x40;
    lf2.x0 = BOUNDX(0);
    lf2.y0 = BOUNDY(0);
//    lf2.y0 = (short)m_d.ptVertex[0].y;
    lf2.x1 = BOUNDX(1);
    lf2.y1 = BOUNDY(1);
//    lf2.y1 = (short)m_d.ptVertex[1].y;
    ar.Write(&lf2, sizeof(lf2));
}

void CXPrimitive::ExportG2(CArchive& ar)
{
    LINE_G2 lg2;
    lg2.tag.size = 4;
    lg2.tag.type = XC_CHUNK_PRIMITIVE_G2;
    lg2.tag.just = 0;
    lg2.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&lg2.r0 = m_d.rgbVertex[0];
    lg2.code = 0x50;
    lg2.x0 = BOUNDX(0);
    lg2.y0 = BOUNDY(0);
//    lg2.y0 = (short)m_d.ptVertex[0].y;
    *(DWORD*)&lg2.r1 = m_d.rgbVertex[1];
    lg2.x1 = BOUNDX(1);
    lg2.y1 = BOUNDY(1);
//    lg2.y1 = (short)m_d.ptVertex[1].y;
    ar.Write(&lg2, sizeof(lg2));
}

void CXPrimitive::ExportF3(CArchive& ar)
{
    POLY_F3 pf3;
    pf3.tag.size = 4;
    pf3.tag.type = XC_CHUNK_PRIMITIVE_F3;
    pf3.tag.just = 0;
    pf3.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&pf3.r0 = m_d.rgbVertex[0];
    pf3.code = 0x20;
    pf3.x0 = BOUNDX(0);
    pf3.y0 = BOUNDY(0);
//    pf3.y0 = (short)m_d.ptVertex[0].y;
    pf3.x1 = BOUNDX(1);
    pf3.y1 = BOUNDY(1);
//    pf3.y1 = (short)m_d.ptVertex[1].y;
    pf3.x2 = BOUNDX(2);
    pf3.y2 = BOUNDY(2);
//    pf3.y2 = (short)m_d.ptVertex[2].y;
    ar.Write(&pf3, sizeof(pf3));
}

void CXPrimitive::ExportG3(CArchive& ar)
{
    POLY_G3 pg3;
    pg3.tag.size = 6;
    pg3.tag.type = XC_CHUNK_PRIMITIVE_G3;
    pg3.tag.just = 0;
    pg3.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&pg3.r0 = m_d.rgbVertex[0];
    pg3.code = 0x30;
    pg3.x0 = BOUNDX(0);
    pg3.y0 = BOUNDY(0);
//    pg3.y0 = (short)m_d.ptVertex[0].y;
    *(DWORD*)&pg3.r1 = m_d.rgbVertex[1];
    pg3.x1 = BOUNDX(1);
    pg3.y1 = BOUNDY(1);
//    pg3.y1 = (short)m_d.ptVertex[1].y;
    *(DWORD*)&pg3.r2 = m_d.rgbVertex[2];
    pg3.x2 = BOUNDX(2);
    pg3.y2 = BOUNDY(2);
//    pg3.y2 = (short)m_d.ptVertex[2].y;
    ar.Write(&pg3, sizeof(pg3));
}

void CXPrimitive::ExportF4(CArchive& ar)
{
    POLY_F4 pf4;
    pf4.tag.size = 5;
    pf4.tag.type = XC_CHUNK_PRIMITIVE_F4;
    pf4.tag.just = 0;
    pf4.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&pf4.r0 = m_d.rgbVertex[0];
    pf4.code = 0x28;
    pf4.x0 = BOUNDX(0);
    pf4.y0 = BOUNDY(0);
//    pf4.y0 = (short)m_d.ptVertex[0].y;
    pf4.x1 = BOUNDX(1);
    pf4.y1 = BOUNDY(1);
//    pf4.y1 = (short)m_d.ptVertex[1].y;
    pf4.x3 = BOUNDX(2);
    pf4.y3 = BOUNDY(2);
//    pf4.y3 = (short)m_d.ptVertex[2].y;
    pf4.x2 = BOUNDX(3);
    pf4.y2 = BOUNDY(3);
//    pf4.y2 = (short)m_d.ptVertex[3].y;
    ar.Write(&pf4, sizeof(pf4));
}

void CXPrimitive::ExportG4(CArchive& ar)
{
    POLY_G4 pg4;
    pg4.tag.size = 8;
    pg4.tag.type = XC_CHUNK_PRIMITIVE_G4;
    pg4.tag.just = 0;
    pg4.tag.trans = s_nTranslucencyMap[m_d.nTranslucent];

    *(DWORD*)&pg4.r0 = m_d.rgbVertex[0];
    pg4.code = 0x38;
    pg4.x0 = BOUNDX(0);
    pg4.y0 = BOUNDY(0);
//    pg4.y0 = (short)m_d.ptVertex[0].y;
    *(DWORD*)&pg4.r1 = m_d.rgbVertex[1];
    pg4.x1 = BOUNDX(1);
    pg4.y1 = BOUNDY(1);
//    pg4.y1 = (short)m_d.ptVertex[1].y;
    *(DWORD*)&pg4.r3 = m_d.rgbVertex[2];
    pg4.x3 = BOUNDX(2);
    pg4.y3 = BOUNDY(2);
//    pg4.y3 = (short)m_d.ptVertex[2].y;
    *(DWORD*)&pg4.r2 = m_d.rgbVertex[3];
    pg4.x2 = BOUNDX(3);
    pg4.y2 = BOUNDY(3);
//    pg4.y2 = (short)m_d.ptVertex[3].y;
    ar.Write(&pg4, sizeof(pg4));
}
*/
/////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////

BOOL CXConDoc::ExportHeader(const CString& strFileName)
{
    HANDLE hFile = ::CreateFile(strFileName, GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        CFileException fe;
        fe.m_lOsError = ::GetLastError();
        fe.m_cause = CFileException::OsErrorToException(fe.m_lOsError);
        fe.m_strFileName = strFileName;
        ReportSaveLoadException(strFileName, &fe, TRUE, AFX_IDP_INVALID_FILENAME);
        return FALSE;
    }

    CFile fileOut((int)hFile);
    BOOL bSuccess = FALSE;

    CArchive saveArchive(&fileOut, CArchive::store | CArchive::bNoFlushOnDelete);
    saveArchive.m_pDocument = this;
    saveArchive.m_bForceFlat = FALSE;
    TRY
    {
        DoExportHeader(saveArchive);
        saveArchive.Close();
        bSuccess = TRUE;
    }
    CATCH_ALL(e)
    {
        TRY
        {
            ReportSaveLoadException(strFileName, e, TRUE, IDP_FAILED_TO_EXPORT_DOC);
        }
        END_TRY
        e->Delete();
    }
    END_CATCH_ALL

    fileOut.Close();
    return bSuccess;
}

static const char s_szSep[] = "//////////////////////////////////////////////////////////////////////////////\r\n// ";
static const char s_szNewLine[] = "\r\n";
static CPtrList s_listHash;

void CXConDoc::DoExportHeader(CArchive& ar)
{
    s_listHash.RemoveAll();

    // screens
    ar.WriteString(s_szSep);
    ar.WriteString("Screens\r\n");
    ExportHeaderArray(ar, m_arDocItems[DOC_SCREENS]);

    // overlays
    ar.WriteString(s_szNewLine);
    ar.WriteString(s_szSep);
    ar.WriteString("Overlays\r\n");
    ExportHeaderArray(ar, m_arDocItems[DOC_OVERLAYS]);

    // context items
    ar.WriteString(s_szNewLine);
    ar.WriteString(s_szSep);
    ar.WriteString("Context Items\r\n");
    CString string;
    int nSize = m_arDocItems[DOC_OVERLAYS]->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXOverlay* pOverlay = (CXOverlay*)m_arDocItems[DOC_OVERLAYS]->GetAt(i);
        string.Format("\r\n// %s\r\n", pOverlay->GetName());
        ar.WriteString(string);
        ExportHeaderArray(ar, pOverlay->GetContextArray());
    }

    // terminate with a new line
    ar.WriteString(s_szNewLine);
}

void CXConDoc::ExportHeaderArray(CArchive& ar, CObArray* pArray)
{
    CString string;
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        LPCTSTR psz = ((CXObjectName*)pArray->GetAt(i))->GetName();
        DWORD dwHash = HashName(psz);
        if (s_listHash.Find((void*)dwHash))
            ar.WriteString("//");
        else
            s_listHash.AddTail((void*)dwHash);
        string.Format("#define XC_%s\t0x%08X\r\n", psz, dwHash);
        ar.WriteString(string);
    }
}

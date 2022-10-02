#pragma once

#ifndef _XFONT_H_
#define _XFONT_H_

#include "StdAfx.h"
#include "xPathObject.h"


class CDib;
//class CXText;

/////////////////////////////////////////////////////////////////////////////
// CXFont

#pragma pack(1)
typedef struct
{
    short x, y;
    short cx, cy;
} PHORECT16;
#pragma pack()

typedef struct
{
    PHORECT16 rect;
    BYTE nBlock;
    BYTE nPalette;
} GLYPH;

enum
{
    FONT_ASCII,
    FONT_JAPANESE,
    NUM_FONT_TYPES,
};

class CXFont : public CXPathObject
{
    DECLARE_SERIAL(CXFont)
public:
    CXFont();
    virtual ~CXFont();

// Attributes
protected:
    struct FontData
    {
        BYTE* pFileData;
        DWORD dwFileSize;
        CDib* pDib;
        CMapWordToPtr mapLetters;
        DWORD dwGlyphs;
        DWORD cyFont;
        DWORD dwBlocks;
        DWORD dwPalettes;
        int nDefault;
    } m_fontdata[NUM_FONT_TYPES];

    CString m_strJapPathName;

// Operations
public:
    void Draw(CDC* pDC, int x, int y, int nType, int nIndex);
    void Draw(CDC* pDC, int nType, const CRect& rect, BYTE* pBits, const CRect& rectClip, int nZoomFactor);
    CSize GetGlyphSize(int nType, int nIndex) const;
    int GetFontHeight(int nType) const { return (int)m_fontdata[nType].cyFont; }
    CSize GetGlyphBits(int nType, int nIndex, const CPoint& pt, BYTE* pBits, int nPitch, BOOL bRotate = FALSE);
    int GetNextChar(int nType, LPCSTR& psz) const;

    void AdjustSizeLine(CSize& sizeLine, int nType, int nIndex, int nOrientation) const;
    //CSize GetSize(const CString& str, int nType, int nOrientation, int nSpacing, const CXText* pText) const;
    CSize GetSizeLine(const CString& str, int nType, int nLineIndex, int nOrientation) const;
    BOOL Load(LPCTSTR pszPathName, int nType);
    void Export(CArchive& ar, BOOL bJapanese);

    BOOL ReloadJap();

protected:
    void DeleteData(int nType);

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual BOOL Load(LPCTSTR pszPathName);
    virtual void OnProperties();
    virtual void OnDelete();
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() ;
    virtual DWORD GetSizeObject();
    virtual void SkipData(BYTE** ppData);

    friend class CFontPropDlg;
};

typedef CTypedPtrArray<CObArray, CXFont*> CXFontArray;


#endif

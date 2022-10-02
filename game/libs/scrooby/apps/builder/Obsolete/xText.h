#pragma once

#ifndef _XTEXT_H_
#define _XTEXT_H_


#include "xDisplay.h"
#include "xStringOrID.h"

class CXFont;

/////////////////////////////////////////////////////////////////////////////
// CXText

class CXText : public CXDisplay
{
    DECLARE_SERIAL(CXText)
public:
    CXText();
    virtual ~CXText();

// Attributes
public:
    CStringArray m_arExpCopyID;

protected:
    CXStringArray m_arString;
    struct TextData
    {
        CXFont* pFont;
        COLORREF clr;
        int nOrientation;
        int nSpacing;
        BOOL bCopyString;
    } m_dt;

    BYTE* m_pBits;
    CSize m_sizeBits;
    int m_nLangType;

// Operations
public:
    void SetFont(CXFont* pFont) { m_dt.pFont = pFont; }
    CXFont* GetFont() { return m_dt.pFont; }
    void SetColor();
    BOOL OnStringChange(CXString* pString);
    BOOL OnLanguageChange();
    void SetLangType(int nType) { m_nLangType = nType; }
    BOOL IsCopyString() const { return m_dt.bCopyString; }

protected:
    void DoUpdateImage();

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual const CSize GetSize(CXObject* pObject) const;
    virtual CObArray* GetArray() { return &m_arString; }
    virtual CXStringArray* GetTypedArray() { return &m_arString; }
    virtual int GetNumObjects() { return m_arString.GetSize(); }
    virtual void Draw(CDC* pDC, const CRect& rect, int nZoomFactor);
    virtual void SetShowIndex(int nIndex);
    virtual void UpdateImage();
    virtual BOOL IsResourceObjectUsed(CXResource* pResource);
    virtual void OnProperties();
    virtual int GetImage() ;
    virtual void CopyArray(CObArray* parDest, CObArray* parSrc);
    virtual void DeleteArray(CObArray* par);
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return XOBJECT_TEXT; }
};

#endif

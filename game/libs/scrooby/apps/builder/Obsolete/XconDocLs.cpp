/////////////////////////////////////////////////////////////////////////////
// XConDocLs.cpp : implementation of the CXconDoc load/save functionality

#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"


#include "xScreen.h"
#include "xOverlay.h"
//#include "xSprite.h"
//#include "xText.h"
#include "xDisplay.h"
//#include "xClipReg.h"
//#include "xPrimitive.h"
//#include "xGroup.h"
//#include "xFont.h"


enum
{
    VERSION_PHASE_1 = 1,
    VERSION_PHASE_2,
    VERSION_PHASE_3,
};
#define VERSION_CURRENT    VERSION_PHASE_3

#define OLD_SOUND_INDEX    3

BOOL CXConDoc::s_bFirstPathObj;

/////////////////////////////////////////////////////////////////////////////
// CXConDoc serialization

CXObject* CXConDoc::FindObject(DOCARRAYTYPE nType, const CString& str)
{
    CXObject* pObject;
    CXObjectArray* pArray = m_arDocItems[nType];
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        pObject = pArray->GetAt(i);
        if (pObject->GetName() == str)
            return pObject;
    }

    AfxThrowArchiveException(CArchiveException::badIndex);
    return NULL;
}

void CXConDoc::SerializePath(CArchive& ar, CString& strPath, CString* pstrDrive /*=NULL*/)
{
    if (ar.IsStoring())
    {
        // strip away the drive designation
        ar << strPath.Right(strPath.GetLength()-2);
    }
    else
    {
        CString strNoDrive;
        ar >> strNoDrive;

        if (!strNoDrive.IsEmpty())
            strPath = *pstrDrive + strNoDrive;
    }
}

void CXConDoc::Serialize(CArchive& ar)
{
    if (ar.IsStoring())
    {
        ar << (BYTE)VERSION_CURRENT;
        ar << (BYTE)m_nPlatform;
        ar << (WORD)m_sizeRes.cx;
        ar << (WORD)m_sizeRes.cy;
        ar << m_clrTransparency;
        ar << m_bTVCutoff;
        ar << m_sizeTVCutoff;
        ar << m_bExportFonts;
        ar << m_clrBkgd;

        SerializePath(ar, m_strResourcePath);
        SerializePath(ar, m_strLanguagePath);
        SerializePath(ar, m_strExportPath);

        for (int i = 0; i < NUM_RES_ITEMS; i++)
            SerializePath(ar, m_strResPaths[i]);

        for (i = 0; i < NUM_DOC_ITEMS; i++)
            m_arDocItems[i]->Serialize(ar);
    }
    else
    {
        BYTE c;
        ar >> c;
        BYTE nVersion = c;
        if (nVersion > VERSION_CURRENT)
        {
            AfxMessageBox(IDP_VERSION_CONFLICT);
            AfxThrowUserException();
        }

        ar >> c;
        m_nPlatform = (PLATFORM)c;
        WORD w;
        ar >> w;
        m_sizeRes.cx = w;
        ar >> w;
        m_sizeRes.cy = w;
        ar >> m_clrTransparency;
        ar >> m_bTVCutoff;
        ar >> m_sizeTVCutoff;
        ar >> m_bExportFonts;

        if (nVersion >= VERSION_PHASE_2)
            ar >> m_clrBkgd;

        CString strDrive = ar.GetFile()->GetFilePath().Left(2);

        SerializePath(ar, m_strResourcePath, &strDrive);
        SerializePath(ar, m_strLanguagePath, &strDrive);
        SerializePath(ar, m_strExportPath, &strDrive);

        for (int i = 0; i < NUM_RES_ITEMS; i++)
        {
            if (i == OLD_SOUND_INDEX && nVersion <= VERSION_PHASE_2)
            {
                // load sound path
                CString strTemp;
                SerializePath(ar, strTemp, &strDrive);
            }
            SerializePath(ar, m_strResPaths[i], &strDrive);
        }

        if (App()->IsExportOnly())
            FixUpPaths();

        if (!m_strLanguagePath.IsEmpty() && !LoadLanguage())
            AfxThrowUserException();

        CDirectoryMgr dmg;
        if (!dmg.Init(m_strResourcePath, IDP_RES_PATH_NOT_FOUND))
        {
            if (!FindNewRootPath())
                AfxThrowUserException();
        }

        s_bFirstPathObj = TRUE;
        for (i = 0; i < NUM_DOC_ITEMS; i++)
        {
            if (i == OLD_SOUND_INDEX && nVersion <= VERSION_PHASE_2)
            {
                // sounds - fake a CObArray::Serialize (size always 0)
                ar.ReadCount();
            }
            m_arDocItems[i]->Serialize(ar);
        }
    }
}

/////////////////////////////////////////////////////////////////////////////

void CXObject::Serialize(CArchive& ar)
{
    CObject::Serialize(ar);

    if (ar.IsLoading())
        m_pDocument = (CXConDoc*)ar.m_pDocument;
}

void CXObjectName::Serialize(CArchive& ar)
{
    CXObject::Serialize(ar);

    if (ar.IsStoring())
        ar << m_strName;
    else
        App()->ReadStringFixSpaces(ar, m_strName);
}

/////////////////////////////////////////////////////////////////////////////

//IMPLEMENT_SERIAL(CXFont, CXPathObject, 1|VERSIONABLE_SCHEMA)

/*
void CXFont::Serialize(CArchive& ar)
{
    CXPathObject::Serialize(ar);

    if (ar.IsStoring())
        ar << m_strJapPathName;
    else
    {
        ar >> m_strJapPathName;
        if (!ReloadJap())
            AfxThrowUserException();
    }
}
*/

/////////////////////////////////////////////////////////////////////////////

//IMPLEMENT_SERIAL(CXClipReg, CXContext, 1|VERSIONABLE_SCHEMA)

/*
void CXClipReg::Serialize(CArchive& ar)
{
    CXContext::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << m_rect.left;
        ar << m_rect.top;
        ar << m_rect.right;
        ar << m_rect.bottom;
        ar << m_bReset;
    }
    else
    {
        ar >> m_rect.left;
        ar >> m_rect.top;
        ar >> m_rect.right;
        ar >> m_rect.bottom;
        ar >> m_bReset;
    }
}
*/
/////////////////////////////////////////////////////////////////////////////

void CXDisplay::Serialize(CArchive& ar)
{
    CXContext::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << m_d.x;
        ar << m_d.y;
        ar << m_d.nAlignment;
        ar << m_d.wShowIndex;
        ar << (BYTE)m_d.nTranslucent;
    }
    else
    {
        ar >> m_d.x;
        ar >> m_d.y;
        ar >> m_d.nAlignment;
        ar >> m_d.wShowIndex;

        BYTE c;
        ar >> c;
        m_d.nTranslucent = c;
    }
}

/////////////////////////////////////////////////////////////////////////////
/*
IMPLEMENT_SERIAL(CXSprite, CXDisplay, 1|VERSIONABLE_SCHEMA)

void CXSprite::Serialize(CArchive& ar)
{
    CXDisplay::Serialize(ar);

    WORD wSize;
    if (ar.IsStoring())
    {
        ar << m_ds.ClrScale.fRed;
        ar << m_ds.ClrScale.fGreen;
        ar << m_ds.ClrScale.fBlue;
        wSize = (WORD)m_arImage.GetSize();
        ar << wSize;
        for (WORD i = 0; i < wSize; i++)
            ar << CString(m_arImage[i]->GetName());
    }
    else
    {
        ar >> m_ds.ClrScale.fRed;
        ar >> m_ds.ClrScale.fGreen;
        ar >> m_ds.ClrScale.fBlue;
        ar >> wSize;
        m_arImage.SetSize(wSize);
        CString strName;
        for (WORD i = 0; i < wSize; i++)
        {
            ar >> strName;
            m_arImage[i] = (CXImage*)m_pDocument->FindObject(DOC_IMAGES, strName);
        }
        RecalcSize();
        ValidateRect();

        if (m_d.nTranslucent != TRANSLUCENT_NONE)
        {
            int nSize = m_arImage.GetSize();
            for (int i = 0; i < nSize; i++)
                m_arImage[i]->CreateTranslucent();
        }
    }
}
*/
/////////////////////////////////////////////////////////////////////////////
/*
IMPLEMENT_SERIAL(CXText, CXDisplay, 2|VERSIONABLE_SCHEMA)

void CXText::Serialize(CArchive& ar)
{
    CXDisplay::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << CString(m_dt.pFont->GetName());
        ar << m_dt.clr;
        ar << (BYTE)m_dt.nOrientation;
        ar << m_dt.nSpacing;
        ar << (BYTE)m_dt.bCopyString;
        m_arString.Serialize(ar);
    }
    else
    {
        CString strName;
        ar >> strName;
        m_dt.pFont = (CXFont*)m_pDocument->FindObject(DOC_FONTS, strName);
        ar >> m_dt.clr;
        BYTE b;
        ar >> b;
        m_dt.nOrientation = b;
        if (ar.GetObjectSchema() >= 2)
        {
            ar >> m_dt.nSpacing;
            ar >> b;
            m_dt.bCopyString = b;
        }
        m_arString.Serialize(ar);

        DoUpdateImage();
    }
}
*/
/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXOverlay, CXObjectName, 1|VERSIONABLE_SCHEMA)

void CXOverlay::Serialize(CArchive& ar)
{
    CXObjectName::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << m_bVisible;
        m_arLayer.Serialize(ar);
    }
    else
    {
        ar >> m_bVisible;
        m_arLayer.Serialize(ar);

        int nSize = m_arLayer.GetSize();
        for (int i = 0; i < nSize; i++)
            m_arLayer[i]->SetOverlay(this);
    }
}

/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXScreen, CXObjectName, 1|VERSIONABLE_SCHEMA)

void CXScreen::Serialize(CArchive& ar)
{
    CXObjectName::Serialize(ar);

    if (ar.IsStoring())
    {
        int nSize = m_arOverlay.GetSize();
        ar.WriteCount(nSize);
        for (int i = 0; i < nSize; i++)
            ar << CString(m_arOverlay[i]->GetName());
    }
    else
    {
        DWORD nSize = ar.ReadCount();
        m_arOverlay.SetSize(nSize);

        CXConApp* pApp = App();
        CString strName;
        for (DWORD i = 0; i < nSize; i++)
        {
            pApp->ReadStringFixSpaces(ar, strName);
            m_arOverlay.SetAt(i, (CXOverlay*)m_pDocument->FindObject(DOC_OVERLAYS, strName));
        }
    }
}

/////////////////////////////////////////////////////////////////////////////

/*
IMPLEMENT_SERIAL(CXPrimitive, CXContext, 1|VERSIONABLE_SCHEMA)

void CXPrimitive::Serialize(CArchive& ar)
{
    CXContext::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << (WORD)m_d.nTranslucent;
        ar << (BYTE)m_d.nVertices;
        for (int i = 0; i < m_d.nVertices; i++)
        {
            ar << (WORD)m_d.ptVertex[i].x;
            ar << (WORD)m_d.ptVertex[i].y;
            ar << m_d.rgbVertex[i];
        }
    }
    else
    {
        WORD w;
        ar >> w;
        m_d.nTranslucent = w;
        BYTE b;
        ar >> b;
        m_d.nVertices = b;
        for (int i = 0; i < m_d.nVertices; i++)
        {
            ar >> w;
            m_d.ptVertex[i].x = w;
            ar >> w;
            m_d.ptVertex[i].y = w;
            ar >> m_d.rgbVertex[i];
        }

        SetRect();
    }
}
*/

/////////////////////////////////////////////////////////////////////////////

//IMPLEMENT_SERIAL(CXGroup, CXContext, 1|VERSIONABLE_SCHEMA)

/*
void CXGroup::Serialize(CArchive& ar)
{
    CXContext::Serialize(ar);

    if (ar.IsStoring())
    {
        //ar << m_bVisible;
        m_arContext.Serialize(ar);
    }
    else
    {
        //ar >> m_bVisible;
        m_arContext.Serialize(ar);

        int nSize = m_arContext.GetSize();
        for (int i = 0; i < nSize; i++)
        {
            m_arContext[i]->SetGroup(this);
        }
    }
}
*/

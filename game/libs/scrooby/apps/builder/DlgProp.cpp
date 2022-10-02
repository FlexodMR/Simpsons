/////////////////////////////////////////////////////////////////////////////
// DlgProp.cpp : implementation file

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"    //needed forCDirectoryMgr
#include "DlgProp.h"

//#include "xFont.h"
//#include "xCursor.h"
#include "FeData\Helpers\ResourceManager.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\Resources\Image.h"
#include "FeData\ResourceFiles\ImageFile.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// Misc. helpers

BOOL OnColorHelper(COLORREF* pClr)
{
    CColorDialog dlg(*pClr, CC_FULLOPEN);
    if (dlg.DoModal() != IDOK)
        return FALSE;

    *pClr = dlg.GetColor();
    return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CColorWnd

BEGIN_MESSAGE_MAP(CColorWnd, CStatic)
    ON_WM_PAINT()
END_MESSAGE_MAP()

void CColorWnd::OnPaint()
{
    Default();

    CRect rect;
    GetClientRect(rect);

    CClientDC dc(this);
    dc.FillSolidRect(rect, *m_pClr);
}

/////////////////////////////////////////////////////////////////////////////
// CDocPropDlg dialog

CDocPropDlg::CDocPropDlg() : CDialog(CDocPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CDocPropDlg)
    m_strRootPath = _T("");
    m_strLanguagePath = _T("");
    m_bFonts = FALSE;
    m_strExportPath = _T("");
    //}}AFX_DATA_INIT
}

void CDocPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CDocPropDlg)
    DDX_Control(pDX, IDC_COLOR_BKGD, m_wndBkgd);
    DDX_Control(pDX, IDC_COLOR, m_wndColor);
    DDX_Text(pDX, IDC_PATH, m_strRootPath);
    DDX_Text(pDX, IDC_LANGUAGE, m_strLanguagePath);
    DDX_Check(pDX, IDC_FONTS, m_bFonts);
    DDX_Text(pDX, IDC_EXPORT_PATH, m_strExportPath);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDocPropDlg, CDialog)
    //{{AFX_MSG_MAP(CDocPropDlg)
    ON_BN_CLICKED(IDC_COLOR, OnColor)
    ON_BN_CLICKED(IDC_BROWSE, OnBrowse)
    ON_BN_CLICKED(IDC_COLOR_BKGD, OnColorBkgd)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDocPropDlg message handlers

BOOL CDocPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    m_wndColor.m_pClr = &m_clrDefTrans;
    m_wndBkgd.m_pClr = &m_clrBkgd;

    if (m_strRootPath.IsEmpty())
    {
        m_strRootPath.LoadString(IDS_NO_RES_PATH);
        UpdateData(FALSE);
    }

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CDocPropDlg::OnColor() 
{
    if (OnColorHelper(&m_clrDefTrans))
        m_wndColor.Invalidate();
}

void CDocPropDlg::OnColorBkgd() 
{
    if (OnColorHelper(&m_clrBkgd))
        m_wndBkgd.Invalidate();
}

void CDocPropDlg::OnBrowse() 
{
    CDirectoryMgr dmg(NULL);

    UpdateData();

    CString strFilter;
    strFilter.LoadString(IDS_LANGUAGE_FILTER);
    strFilter += _T("||");

    CFileDialog dlg(TRUE, NULL, m_strLanguagePath, OFN_HIDEREADONLY|OFN_FILEMUSTEXIST, strFilter);

    CString strTitle;
    strTitle.LoadString(IDS_LANGUAGE_TITLE);
    dlg.m_ofn.lpstrTitle = strTitle;

    if (dlg.DoModal() != IDOK)
        return;

    m_strLanguagePath = dlg.GetPathName();
    UpdateData(FALSE);
}

/////////////////////////////////////////////////////////////////////////////
// CFontPropDlg dialog

CFontPropDlg::CFontPropDlg() : CDialog(CFontPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CFontPropDlg)
    m_strFileName = _T("");
    m_strName = _T("");
    m_strHeight = _T("");
    m_strNoChars = _T("");
    m_strBlocks = _T("");
    m_strPalettes = _T("");
    m_strFileNameJap = _T("");
    m_bJapanese = FALSE;
    //}}AFX_DATA_INIT

//    m_nLangType = FONT_ASCII;
}

void CFontPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CFontPropDlg)
    DDX_Control(pDX, IDC_PREVIEW, m_wndPreview);
    DDX_Text(pDX, IDC_FILENAME, m_strFileName);
    DDX_Text(pDX, IDC_NAME, m_strName);
    DDX_Text(pDX, IDC_HEIGHT, m_strHeight);
    DDX_Text(pDX, IDC_NO_CHARS, m_strNoChars);
    DDX_Text(pDX, IDC_BLOCKS, m_strBlocks);
    DDX_Text(pDX, IDC_PALETTES, m_strPalettes);
    DDX_Text(pDX, IDC_FILENAME_JAP, m_strFileNameJap);
    DDX_Check(pDX, IDC_JAPANESE, m_bJapanese);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFontPropDlg, CDialog)
    //{{AFX_MSG_MAP(CFontPropDlg)
    ON_LBN_SELCHANGE(IDC_CHAR_LIST, OnSelchangeCharList)
    ON_BN_CLICKED(IDC_REFRESH, OnRefresh)
    ON_BN_CLICKED(IDC_JAPANESE, OnJapanese)
    ON_BN_CLICKED(IDC_BROWSE, OnBrowse)
    ON_BN_CLICKED(IDC_BROWSE_JAP, OnBrowseJap)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFontPropDlg message handlers

int compare(const void* p1, const void* p2)
{
    return *(WORD*)p1 - *(WORD*)p2;
}

BOOL CFontPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    m_wndPreview.SetParentDlg(this);
    InitData(m_nLangType);

    if (m_strFileNameJap.IsEmpty())
        GetDlgItem(IDC_JAPANESE)->EnableWindow(FALSE);

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CFontPropDlg::InitData(int nType)
{
    /*
    CXFont::FontData* pFontData = &m_pFont->m_fontdata[nType];

    TCHAR szBuf[17];
    m_strNoChars = _itot(pFontData->dwGlyphs, szBuf, 10);
    m_strHeight = _itot(pFontData->cyFont, szBuf, 10);
    m_strBlocks = _itot(pFontData->dwBlocks, szBuf, 10);
    m_strPalettes = _itot(pFontData->dwPalettes, szBuf, 10);

    int nCount = pFontData->mapLetters.GetCount();

    CWordArray arSort;
    arSort.SetSize(nCount);

    WORD wAscii;
    void* pGlyph;

    int nIndex = 0;
    POSITION pos = pFontData->mapLetters.GetStartPosition();
    while (pos)
    {
        pFontData->mapLetters.GetNextAssoc(pos, wAscii, pGlyph);
        arSort[nIndex++] = wAscii;
    }

    // sort array
    qsort(arSort.GetData(), nCount, sizeof(WORD), compare);

    CListBox* pList = (CListBox*)GetDlgItem(IDC_CHAR_LIST);
    pList->ResetContent();
    nIndex = 0;
    for (int i = 0; i < nCount; i++)
    {
        wAscii = arSort[i];
        if (wAscii == ' ')
            lstrcpy(szBuf, _T("SPACE"));
        else if (wAscii > 255)
            _stprintf(szBuf, _T("0x%X"), wAscii);
        else
        {
            szBuf[0] = (TCHAR)wAscii;
            szBuf[1] = _T('\0');
        }
        pList->SetItemData(pList->AddString(szBuf), wAscii);
    }

    UpdateData(FALSE);
    */
}

void CFontPropDlg::OnSelchangeCharList()
{
    CListBox* pList = (CListBox*)GetDlgItem(IDC_CHAR_LIST);
    DWORD dwData = pList->GetItemData(pList->GetCurSel());
    m_wndPreview.SetDisplayChar(dwData);
    CString str;
    if (dwData < 256)
        str.Format(_T("%d (0x%X)"), dwData, dwData);
    SetDlgItemText(IDC_CHARCODE, str);
}

void CFontPropDlg::OnRefresh() 
{
    /*
    CDirectoryMgr dmg(App()->GetActiveDocument()->GetResourcePath());
    if (m_nLangType == FONT_ASCII)
        m_pFont->Reload();
    else
        m_pFont->ReloadJap();
    ResetData();
    */
}

void CFontPropDlg::ResetData()
{
    InitData(m_nLangType);

    CWnd* pStatic = GetDlgItem(IDC_CHARCODE);
    pStatic->SetWindowText(_T(""));
    pStatic->Invalidate();
    m_wndPreview.SetDisplayChar(-1);
}

void CFontPropDlg::OnBrowse() 
{
    CXConDoc* pDoc = App()->GetActiveDocument();
    CString strNewPath = m_strFileName;
    if (pDoc->BrowseForFile(strNewPath, DOC_FONTS, IDS_FONT_TITLE, IDS_FONT_FILTER, this) &&
        strNewPath != m_strFileName)
    {
        CDirectoryMgr dmg(pDoc->GetResourcePath());
        TCHAR szPath[_MAX_PATH];
        ::GetFullPathName(strNewPath, _MAX_PATH, szPath, NULL);
        /*
        if (m_pFont->Load(szPath, FONT_ASCII))
        {
            m_strFileName = strNewPath;
            if (m_nLangType == FONT_ASCII)
                ResetData();
            else
                UpdateData(FALSE);
        }
        else
        {
            // reload the font
            ::GetFullPathName(m_strFileName, _MAX_PATH, szPath, NULL);
            m_pFont->Load(szPath, FONT_ASCII);
        }
        */
    }
}

void CFontPropDlg::OnJapanese() 
{
    /*
    UpdateData();
    m_nLangType = m_bJapanese ? FONT_JAPANESE : FONT_ASCII;
    m_wndPreview.SetLangType(m_nLangType);
    ResetData();
    */
}

void CFontPropDlg::OnBrowseJap() 
{
    CXConDoc* pDoc = App()->GetActiveDocument();
    CString strNewPath = m_strFileNameJap;
    if (pDoc->BrowseForFile(strNewPath, DOC_FONTS, IDS_FONT_TITLE, IDS_FONT_FILTER, this) &&
        strNewPath != m_strFileNameJap)
    {
        CDirectoryMgr dmg(pDoc->GetResourcePath());
        TCHAR szPath[_MAX_PATH];
        ::GetFullPathName(strNewPath, _MAX_PATH, szPath, NULL);
        /*
        if (m_pFont->Load(szPath, FONT_JAPANESE))
        {
            m_strFileNameJap = strNewPath;
            GetDlgItem(IDC_JAPANESE)->EnableWindow();
        }
        else
        {
            m_strFileNameJap.Empty();
            if (m_nLangType == FONT_JAPANESE)
            {
                m_bJapanese = FALSE;
                m_nLangType = FONT_ASCII;
                m_wndPreview.SetLangType(m_nLangType);
                ResetData();
            }
            GetDlgItem(IDC_JAPANESE)->EnableWindow(FALSE);
        }
        */
        UpdateData(FALSE);
    }
}

/////////////////////////////////////////////////////////////////////////////
// CFontWnd

CFontWnd::CFontWnd()
{
    m_nIndex = -1;
    //m_nLangType = FONT_ASCII;
}

BEGIN_MESSAGE_MAP(CFontWnd, CStatic)
    ON_WM_PAINT()
END_MESSAGE_MAP()

void CFontWnd::SetDisplayChar(int nIndex)
{
    m_nIndex = nIndex;
    Invalidate();
}

void CFontWnd::OnPaint()
{
    Default();

    if (m_nIndex != -1)
    {
        CClientDC dc(this);

        // clip DC to client area
        CRect rect;
        GetClientRect(rect);
        CRgn rgn;
        rgn.CreateRectRgnIndirect(rect);
        dc.SelectClipRgn(&rgn);

        /*
        const CSize size = m_pDlg->m_pFont->GetGlyphSize(m_nLangType, m_nIndex);
        m_pDlg->m_pFont->Draw(&dc, (rect.Width()-size.cx)/2, (rect.Height()-size.cy)/2, m_nLangType, m_nIndex);
        */
    }
}

/////////////////////////////////////////////////////////////////////////////
// CImagePropDlg dialog

CImagePropDlg::CImagePropDlg() : CDialog(CImagePropDlg::IDD)
{
    //{{AFX_DATA_INIT(CImagePropDlg)
    m_strFileName = _T("");
    m_strName = _T("");
    m_bTransparent = FALSE;
    m_strSize = _T("");
    //}}AFX_DATA_INIT
}

void CImagePropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CImagePropDlg)
    DDX_Control(pDX, IDC_COLOR, m_wndColor);
    DDX_Text(pDX, IDC_FILENAME, m_strFileName);
    DDX_Text(pDX, IDC_NAME, m_strName);
    DDX_Check(pDX, IDC_TRANSPARENT, m_bTransparent);
    DDX_Text(pDX, IDC_SIZEIMAGE, m_strSize);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CImagePropDlg, CDialog)
    //{{AFX_MSG_MAP(CImagePropDlg)
    ON_BN_CLICKED(IDC_COLOR, OnColor)
    ON_BN_CLICKED(IDC_REFRESH, OnRefresh)
    ON_BN_CLICKED(IDC_BROWSE, OnBrowse)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CImagePropDlg message handlers

BOOL CImagePropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    m_wndColor.m_pClr = &m_clr;
    InitData();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CImagePropDlg::InitData()
{
    /*
    static const TCHAR* pszColorTypes[] =
    {
        _T("Mono"),
        _T("16 Colors"),
        _T("256 Colors"),
    };

    BITMAPINFOHEADER* pbmih = (BITMAPINFOHEADER*)m_pImage->GetDib()->m_pData;
    int nIndex = 0;
    switch (pbmih->biBitCount)
    {
    case 4:
        nIndex = 1;
        break;
    case 8:
        nIndex = 2;
        break;
    }
    m_strSize.Format(_T("%dx%d (%s)"), pbmih->biWidth, pbmih->biHeight, pszColorTypes[nIndex]);

    if (pbmih->biBitCount > 8)
        GetDlgItem(IDC_TRANSPARENT)->EnableWindow(FALSE);

    UpdateData(FALSE);
    */
}

void CImagePropDlg::OnColor() 
{
    if (OnColorHelper(&m_clr))
        m_wndColor.Invalidate();
}

void CImagePropDlg::OnRefresh() 
{
    CDirectoryMgr dmg(App()->GetActiveDocument()->GetResourcePath());
    //m_pImage->Reload();
    InitData();
}

void CImagePropDlg::OnBrowse() 
{
    CXConDoc* pDoc = App()->GetActiveDocument();
    CString strNewPath = m_strFileName;
    if (pDoc->BrowseForFile(strNewPath, DOC_IMAGES, IDS_IMAGE_TITLE, IDS_IMAGE_FILTER, this) &&
        strNewPath != m_strFileName)
    {
        CDirectoryMgr dmg(pDoc->GetResourcePath());
        TCHAR szPath[_MAX_PATH];
        ::GetFullPathName(strNewPath, _MAX_PATH, szPath, NULL);
        /*
        if (m_pImage->Load(szPath))
        {
            m_strFileName = strNewPath;
            InitData();
        }
        else
        {
            // reload the image
            ::GetFullPathName(m_strFileName, _MAX_PATH, szPath, NULL);
            m_pImage->Load(szPath);
        }
        */
    }
}

/////////////////////////////////////////////////////////////////////////////
// CCursorPropDlg dialog

CCursorPropDlg::CCursorPropDlg() : CDialog(CCursorPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CCursorPropDlg)
    m_strFileName = _T("");
    m_strName = _T("");
    //}}AFX_DATA_INIT
}

void CCursorPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CCursorPropDlg)
    DDX_Text(pDX, IDC_FILENAME, m_strFileName);
    DDX_Text(pDX, IDC_NAME, m_strName);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CCursorPropDlg, CDialog)
    //{{AFX_MSG_MAP(CCursorPropDlg)
    ON_BN_CLICKED(IDC_REFRESH, OnRefresh)
    ON_BN_CLICKED(IDC_BROWSE, OnBrowse)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCursorPropDlg message handlers

void CCursorPropDlg::OnRefresh() 
{
    CDirectoryMgr dmg(App()->GetActiveDocument()->GetResourcePath());
//    m_pCursor->Reload();
}

void CCursorPropDlg::OnBrowse() 
{
    CXConDoc* pDoc = App()->GetActiveDocument();
    CString strNewPath = m_strFileName;
    if (pDoc->BrowseForFile(strNewPath, DOC_CURSORS, IDS_CURSOR_TITLE, IDS_CURSOR_FILTER, this) &&
        strNewPath != m_strFileName)
    {
        CDirectoryMgr dmg(pDoc->GetResourcePath());
        TCHAR szPath[_MAX_PATH];
        ::GetFullPathName(strNewPath, _MAX_PATH, szPath, NULL);
        /*
        if (m_pCursor->Load(szPath))
        {
            m_strFileName = strNewPath;
            UpdateData(FALSE);
        }
        else
        {
            // reload the image
            ::GetFullPathName(m_strFileName, _MAX_PATH, szPath, NULL);
            m_pCursor->Load(szPath);
        }*/
    }
}

/////////////////////////////////////////////////////////////////////////////
// CStringPropDlg dialog

CStringPropDlg::CStringPropDlg() : CDialog(CStringPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CStringPropDlg)
    m_strName = _T("");
    m_str = _T("");
    //}}AFX_DATA_INIT
}

void CStringPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CStringPropDlg)
    DDX_Text(pDX, IDC_NAME, m_strName);
    DDX_Text(pDX, IDC_STRING, m_str);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CStringPropDlg, CDialog)
    //{{AFX_MSG_MAP(CStringPropDlg)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CStringPropDlg message handlers

/////////////////////////////////////////////////////////////////////////////
// CDisplayPropDlg dialog

CDisplayPropDlg::CDisplayPropDlg(UINT nID) : CDialog(nID)
{
    m_fPosX = 0.0f;
    m_fPosY = 0.0f;
    m_nHorzAlign = -1;
    m_nVertAlign = -1;
    m_nTranslucent = -1;
}

void CDisplayPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    DDX_Text(pDX, IDC_XPOS, m_fPosX);
    DDX_Text(pDX, IDC_YPOS, m_fPosY);
    DDX_Radio(pDX, IDC_ALIGN_LEFT, m_nHorzAlign);
    DDX_Radio(pDX, IDC_ALIGN_TOP, m_nVertAlign);
    DDX_CBIndex(pDX, IDC_TRANSLUCENT, m_nTranslucent);
}

/*
BEGIN_MESSAGE_MAP(CDisplayPropDlg, CDialog)
    ON_BN_CLICKED(IDC_ALIGN_BOTTOM, OnAlignBottom)
    ON_BN_CLICKED(IDC_ALIGN_HCENTER, OnAlignHcenter)
    ON_BN_CLICKED(IDC_ALIGN_LEFT, OnAlignLeft)
    ON_BN_CLICKED(IDC_ALIGN_RIGHT, OnAlignRight)
    ON_BN_CLICKED(IDC_ALIGN_TOP, OnAlignTop)
    ON_BN_CLICKED(IDC_ALIGN_VCENTER, OnAlignVcenter)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDisplayPropDlg message handlers

void CDisplayPropDlg::OnAlignTop() 
{
    int nVertAlign = m_nVertAlign;
    UpdateData();
    if (nVertAlign != m_nVertAlign)
    {
        m_fPosY -= nVertAlign==1 ? m_cy/2.0f : m_cy;
        UpdateData(FALSE);
    }
}

void CDisplayPropDlg::OnAlignVcenter() 
{
    int nVertAlign = m_nVertAlign;
    UpdateData();
    if (nVertAlign != m_nVertAlign)
    {
        m_fPosY = nVertAlign==0 ? m_fPosY+m_cy/2.0f : m_fPosY-m_cy/2.0f;
        UpdateData(FALSE);
    }
}

void CDisplayPropDlg::OnAlignBottom() 
{
    int nVertAlign = m_nVertAlign;
    UpdateData();
    if (nVertAlign != m_nVertAlign)
    {
        m_fPosY += nVertAlign==0 ? m_cy : m_cy/2.0f;
        UpdateData(FALSE);
    }
}

void CDisplayPropDlg::OnAlignLeft() 
{
    int nHorzAlign = m_nHorzAlign;
    UpdateData();
    if (nHorzAlign != m_nHorzAlign)
    {
        m_fPosX -= nHorzAlign==1 ? m_cx/2.0f : m_cx;
        UpdateData(FALSE);
    }
}

void CDisplayPropDlg::OnAlignHcenter() 
{
    int nHorzAlign = m_nHorzAlign;
    UpdateData();
    if (nHorzAlign != m_nHorzAlign)
    {
        m_fPosX = nHorzAlign==0 ? m_fPosX+m_cx/2.0f : m_fPosX-m_cx/2.0f;
        UpdateData(FALSE);
    }
}

void CDisplayPropDlg::OnAlignRight() 
{
    int nHorzAlign = m_nHorzAlign;
    UpdateData();
    if (nHorzAlign != m_nHorzAlign)
    {
        m_fPosX += nHorzAlign==0 ? m_cx : m_cx/2.0f;
        UpdateData(FALSE);
    }
}
*/

/////////////////////////////////////////////////////////////////////////////
// CScreenPropDlg dialog

CScreenPropDlg::CScreenPropDlg() : CDialog(CScreenPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CScreenPropDlg)
    m_strName = _T("");
    //}}AFX_DATA_INIT
}

void CScreenPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CScreenPropDlg)
    DDX_Control(pDX, IDC_LIST, m_list);
    DDX_Text(pDX, IDC_NAME, m_strName);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CScreenPropDlg, CDialog)
    //{{AFX_MSG_MAP(CScreenPropDlg)
    ON_BN_CLICKED(IDC_SELECT, OnSelect)
    ON_BN_CLICKED(IDC_UNSELECT, OnUnselect)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CScreenPropDlg message handlers

BOOL CScreenPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    /*
    int nSize = m_pOverlayArray->GetSize();
    int nSize2 = m_pSelections->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXObject* pOverlay = m_pOverlayArray->GetAt(i);
        int nIndex = m_list.AddString(pOverlay->GetName());

        // check if this overlay is selected
        for (int j = 0; j < nSize2; j++)
        {
            if (m_pSelections->GetAt(j) == pOverlay)
            {
                m_list.SetCheck(nIndex, 1);
                break;
            }
        }
    }
    */
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CScreenPropDlg::OnOK() 
{/*
    // get the checked items
    m_pSelections->RemoveAll();
    int nSize = m_pOverlayArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_list.GetCheck(i) == 1)
            m_pSelections->Add((CXOverlay*)m_pOverlayArray->GetAt(i));
    }*/
    
    CDialog::OnOK();
}

void CScreenPropDlg::OnSelect() 
{/*
    int nCount = m_list.GetCount();
    for (int i = 0; i < nCount; i++)
        m_list.SetCheck(i, 1);*/
}

void CScreenPropDlg::OnUnselect() 
{/*
    int nCount = m_list.GetCount();
    for (int i = 0; i < nCount; i++)
        m_list.SetCheck(i, 0);*/
}

/////////////////////////////////////////////////////////////////////////////
// CTVCutoffPropDlg dialog

CTVCutoffPropDlg::CTVCutoffPropDlg() : CDialog(CTVCutoffPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CTVCutoffPropDlg)
    m_bEnable = FALSE;
    m_nVertInset = 0;
    m_nHorzInset = 0;
    //}}AFX_DATA_INIT
}

void CTVCutoffPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CTVCutoffPropDlg)
    DDX_Check(pDX, IDC_ENABLE, m_bEnable);
    //}}AFX_DATA_MAP
    DDX_Text(pDX, IDC_HORZ_INSET, m_nHorzInset);
    DDV_MinMaxUInt(pDX, m_nHorzInset, 0, m_sizeMax.cx);
    DDX_Text(pDX, IDC_VERT_INSET, m_nVertInset);
    DDV_MinMaxUInt(pDX, m_nVertInset, 0, m_sizeMax.cy);
}

BEGIN_MESSAGE_MAP(CTVCutoffPropDlg, CDialog)
    //{{AFX_MSG_MAP(CTVCutoffPropDlg)
    ON_BN_CLICKED(IDC_ENABLE, OnEnable)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTVCutoffPropDlg message handlers

BOOL CTVCutoffPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();

    ((CSpinButtonCtrl*)GetDlgItem(IDC_SPIN_HORZ))->SetRange(0, m_sizeMax.cx);
    ((CSpinButtonCtrl*)GetDlgItem(IDC_SPIN_VERT))->SetRange(0, m_sizeMax.cy);

    if (!m_bEnable)
        EnableEdits();
    
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CTVCutoffPropDlg::EnableEdits()
{
    GetDlgItem(IDC_HORZ_INSET)->EnableWindow(m_bEnable);
    GetDlgItem(IDC_VERT_INSET)->EnableWindow(m_bEnable);
}

void CTVCutoffPropDlg::OnEnable() 
{
    UpdateData();
    EnableEdits();
}

/////////////////////////////////////////////////////////////////////////////
// CMultiObjPropDlg dialog

CMultiObjPropDlg::CMultiObjPropDlg() : CDialog(CMultiObjPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CMultiObjPropDlg)
    //}}AFX_DATA_INIT

//    m_pMapLangIDs = NULL;
}

void CMultiObjPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMultiObjPropDlg)
    DDX_Control(pDX, IDC_LIST_SELECTED, m_listSelected);
    DDX_Control(pDX, IDC_LIST_AVAILABLE, m_listAvailable);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CMultiObjPropDlg, CDialog)
    //{{AFX_MSG_MAP(CMultiObjPropDlg)
    ON_BN_CLICKED(IDC_ADD, OnAdd)
    ON_BN_CLICKED(IDC_REMOVE, OnRemove)
    ON_BN_CLICKED(IDC_MOVE_UP, OnMoveUp)
    ON_BN_CLICKED(IDC_MOVE_DOWN, OnMoveDown)
    ON_LBN_SETFOCUS(IDC_LIST_AVAILABLE, OnSetfocusListAvailable)
    ON_LBN_SETFOCUS(IDC_LIST_SELECTED, OnSetfocusListSelected)
    ON_LBN_SELCHANGE(IDC_LIST_AVAILABLE, OnSelchangeListAvailable)
    ON_LBN_SELCHANGE(IDC_LIST_SELECTED, OnSelchangeListSelected)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMultiObjPropDlg message handlers

BOOL CMultiObjPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
/*
    int nSize = m_pObjectArray->GetSize();
    int nSize2 = m_pSelections->GetSize();

    for (int i = 0; i < nSize; i++)
    {
        CXObject* pObject = m_pObjectArray->GetAt(i);

        m_listAvailable.SetItemDataPtr(m_listAvailable.AddString(pObject->GetName()), pObject);
    }

    if (m_pMapLangIDs)
    {
        // find maximum horizontal extent
        int cx = 0;
        CClientDC dc(&m_listAvailable);
        CFont* pFont = m_listAvailable.GetFont();
        CFont* pOldFont = dc.SelectObject(pFont);
        TEXTMETRIC tm;
        dc.GetTextMetrics(&tm);

        CString strMapID;
        POSITION pos = m_pMapLangIDs->GetStartPosition();
        while (pos)
        {
            void* p;
            m_pMapLangIDs->GetNextAssoc(pos, strMapID, p);

            CSize size = dc.GetTextExtent(strMapID);
            size.cx += tm.tmAveCharWidth;
            cx = max(cx, size.cx);

            m_listAvailable.AddString(strMapID);
        }

        for (i = 0; i < nSize2; i++)
        {
            CXStringOrID* pObject = (CXStringOrID*)m_pSelections->GetAt(i);
            int nIndex = m_listSelected.AddString(pObject->GetName());
            CXString* pString = pObject->GetXString();
            if (pString)
                m_listSelected.SetItemDataPtr(nIndex, pString);
        }

        m_listAvailable.SetHorizontalExtent(cx);
        m_listSelected.SetHorizontalExtent(cx);
        dc.SelectObject(pOldFont);
    }
    else
    {
        for (i = 0; i < nSize2; i++)
        {
            CXObject* pObject = (CXObject*)m_pSelections->GetAt(i);
            m_listSelected.SetItemDataPtr(m_listSelected.AddString(pObject->GetName()), pObject);
        }
    }
*/
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CMultiObjPropDlg::OnSetfocusListAvailable() 
{
    /*
    GetDlgItem(IDC_ADD)->EnableWindow(m_listAvailable.GetCurSel() != LB_ERR);
    GetDlgItem(IDC_REMOVE)->EnableWindow(FALSE);
    GetDlgItem(IDC_MOVE_UP)->EnableWindow(FALSE);
    GetDlgItem(IDC_MOVE_DOWN)->EnableWindow(FALSE);
    */
}

void CMultiObjPropDlg::OnSetfocusListSelected() 
{
    /*
    GetDlgItem(IDC_ADD)->EnableWindow(FALSE);
    BOOL bEnable = m_listSelected.GetCurSel() != LB_ERR;
    GetDlgItem(IDC_REMOVE)->EnableWindow(bEnable);
    if (bEnable && m_listSelected.GetCount() < 2)
        bEnable = FALSE;
    GetDlgItem(IDC_MOVE_UP)->EnableWindow(bEnable);
    GetDlgItem(IDC_MOVE_DOWN)->EnableWindow(bEnable);
    */
}

void CMultiObjPropDlg::OnSelchangeListAvailable() 
{
//    GetDlgItem(IDC_ADD)->EnableWindow(TRUE);
}

void CMultiObjPropDlg::OnSelchangeListSelected() 
{
//    OnSetfocusListSelected();
}

void CMultiObjPropDlg::OnOK() 
{/*
    int nCount = m_listSelected.GetCount();
    if (!nCount)
    {
        AfxMessageBox(IDP_NO_OBJ_SELECTED);
        OnCancel();
        return;
    }

    if (m_pMapLangIDs)
    {
        int nSize = m_pSelections->GetSize();
        for (int i = 0; i < nSize; i++)
            delete m_pSelections->GetAt(i);
        m_pSelections->RemoveAll();

        for (i = 0; i < nCount; i++)
        {
            CXStringOrID* pStringOrID = new CXStringOrID;
            pStringOrID->SetDocument(m_pDocument);
            void* pData = m_listSelected.GetItemDataPtr(i);
            CString strText;
            if (!pData)
                m_listSelected.GetText(i, strText);
            pStringOrID->Set((CXString*)pData, strText);
            m_pSelections->Add(pStringOrID);
        }
    }
    else
    {
        m_pSelections->RemoveAll();
        for (int i = 0; i < nCount; i++)
            m_pSelections->Add((CObject*)m_listSelected.GetItemDataPtr(i));
    }*/

    CDialog::OnOK();
}



void CMultiObjPropDlg::OnAdd() 
{/*
    int nIndex = m_listAvailable.GetCurSel();
    void* pData = m_listAvailable.GetItemDataPtr(nIndex);
    CString strText;
    m_listAvailable.GetText(nIndex, strText);

    nIndex = m_listSelected.AddString(strText);
    m_listSelected.SetItemDataPtr(nIndex, pData);
    m_listSelected.SetCurSel(nIndex);
*/
}

void CMultiObjPropDlg::OnRemove() 
{/*
    int nIndex = m_listSelected.GetCurSel();
    void* pData = m_listSelected.GetItemDataPtr(nIndex);
    CString strText;
    m_listSelected.GetText(nIndex, strText);
    m_listSelected.DeleteString(nIndex);

    if (nIndex > 0)    //move index down
        m_listSelected.SetCurSel(nIndex - 1);
    else
    {
        if (m_listSelected.GetCount() > 0)    // don't bother, if have entry
               m_listSelected.SetCurSel(nIndex);
        else    
            m_listAvailable.SetFocus();    // change focus
    }*/
        
}

void CMultiObjPropDlg::OnMoveUp() 
{/*
    int nIndex = m_listSelected.GetCurSel();
    if (nIndex == 0)
        return;

    void* pData = m_listSelected.GetItemDataPtr(nIndex);
    CString strText;
    m_listSelected.GetText(nIndex, strText);
    m_listSelected.DeleteString(nIndex);

    nIndex = m_listSelected.InsertString(nIndex-1, strText);
    m_listSelected.SetItemDataPtr(nIndex, pData);
    m_listSelected.SetCurSel(nIndex);*/
}

void CMultiObjPropDlg::OnMoveDown() 
{/*
    int nCount = m_listSelected.GetCount();
    int nIndex = m_listSelected.GetCurSel();
    if (nIndex == nCount-1)
        return;

    void* pData = m_listSelected.GetItemDataPtr(nIndex);
    CString strText;
    m_listSelected.GetText(nIndex, strText);
    m_listSelected.DeleteString(nIndex);

    nIndex = m_listSelected.InsertString(nIndex+1, strText);
    m_listSelected.SetItemDataPtr(nIndex, pData);
    m_listSelected.SetCurSel(nIndex);*/
}

/////////////////////////////////////////////////////////////////////////////
// CClipPropDlg dialog

CClipPropDlg::CClipPropDlg() : CDialog(CClipPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CClipPropDlg)
    m_bReset = FALSE;
    m_nLeft = 0;
    m_nTop = 0;
    m_nWidth = 0;
    m_nHeight = 0;
    m_strName = _T("");
    //}}AFX_DATA_INIT
}

void CClipPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CClipPropDlg)
    DDX_Control(pDX, IDC_HEIGHT, m_editHeight);
    DDX_Control(pDX, IDC_WIDTH, m_editWidth);
    DDX_Control(pDX, IDC_TOP, m_editTop);
    DDX_Control(pDX, IDC_LEFT, m_editLeft);
    DDX_Control(pDX, IDC_SPIN_WIDTH, m_spinWidth);
    DDX_Control(pDX, IDC_SPIN_TOP, m_spinTop);
    DDX_Control(pDX, IDC_SPIN_LEFT, m_spinLeft);
    DDX_Control(pDX, IDC_SPIN_HEIGHT, m_spinHeight);
    DDX_Check(pDX, IDC_RESET, m_bReset);
    DDX_Text(pDX, IDC_NAME, m_strName);
    //}}AFX_DATA_MAP
    DDX_Text(pDX, IDC_LEFT, m_nLeft);
    DDV_MinMaxUInt(pDX, m_nLeft, 0, m_sizeMax.cx - m_nWidth);
    DDX_Text(pDX, IDC_TOP, m_nTop);
    DDV_MinMaxUInt(pDX, m_nTop, 0, m_sizeMax.cy - m_nHeight);
    DDX_Text(pDX, IDC_WIDTH, m_nWidth);
    DDV_MinMaxUInt(pDX, m_nWidth, 8, m_sizeMax.cx - m_nLeft);
    DDX_Text(pDX, IDC_HEIGHT, m_nHeight);
    DDV_MinMaxUInt(pDX, m_nHeight, 8, m_sizeMax.cy - m_nTop);
}

BEGIN_MESSAGE_MAP(CClipPropDlg, CDialog)
    //{{AFX_MSG_MAP(CClipPropDlg)
    ON_BN_CLICKED(IDC_RESET, OnReset)
    ON_EN_CHANGE(IDC_LEFT, OnChangeLeft)
    ON_EN_CHANGE(IDC_TOP, OnChangeTop)
    ON_EN_CHANGE(IDC_WIDTH, OnChangeWidth)
    ON_EN_CHANGE(IDC_HEIGHT, OnChangeHeight)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CClipPropDlg message handlers

BOOL CClipPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    m_editLeft.SetLimitText(4);
    m_editTop.SetLimitText(4);
    m_editWidth.SetLimitText(4);
    m_editHeight.SetLimitText(4);

    EnableEditWindows();

    SetLeftMinMax();
    SetTopMinMax();
    SetWidthMinMax();
    SetHeightMinMax();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CClipPropDlg::EnableEditWindows()
{
    m_editLeft.EnableWindow(!m_bReset);
    m_editTop.EnableWindow(!m_bReset);
    m_editWidth.EnableWindow(!m_bReset);
    m_editHeight.EnableWindow(!m_bReset);
}

void CClipPropDlg::SetLeftMinMax()
{
    m_spinLeft.SetRange(0, m_sizeMax.cx - m_nWidth);
}

void CClipPropDlg::SetTopMinMax()
{
    m_spinTop.SetRange(0, m_sizeMax.cy - m_nHeight);
}

void CClipPropDlg::SetWidthMinMax()
{
    m_spinWidth.SetRange(8, m_sizeMax.cx - m_nLeft);
}

void CClipPropDlg::SetHeightMinMax()
{
    m_spinHeight.SetRange(0, m_sizeMax.cx - m_nTop);
}

void CClipPropDlg::OnReset() 
{
    UpdateData();
    EnableEditWindows();
}

void CClipPropDlg::OnChangeLeft() 
{
    if (!m_editLeft.m_hWnd)
        return;

    if (UpdateData())
        SetWidthMinMax();
}

void CClipPropDlg::OnChangeTop() 
{
    if (!m_editLeft.m_hWnd)
        return;

    if (UpdateData())
        SetHeightMinMax();
}

void CClipPropDlg::OnChangeWidth() 
{
    if (!m_editLeft.m_hWnd)
        return;

    if (UpdateData())
        SetLeftMinMax();
}

void CClipPropDlg::OnChangeHeight() 
{
    if (!m_editLeft.m_hWnd)
        return;

    if (UpdateData())
        SetTopMinMax();
}


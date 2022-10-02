// makefontguiDlg.cpp : implementation file
//

#include "stdafx.h"
#include "makefontgui.h"
#include "makefontguiDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiDlg dialog

CMakefontguiDlg::CMakefontguiDlg(CWnd* pParent /*=NULL*/)
    : CDialog(CMakefontguiDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CMakefontguiDlg)
    m_fontName = _T("");
    m_outputName = _T("");
    m_fontSize = 12;
    m_fgColourR = 255;
    m_fgColourA = 255;
    m_fgColourG = 255;
    m_fgColourB = 255;
    m_bgColourA = 0;
    m_bgColourB = 0;
    m_bgColourG = 0;
    m_bgColourR = 0;
    //}}AFX_DATA_INIT
    // Note that LoadIcon does not require a subsequent DestroyIcon in Win32
    m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CMakefontguiDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMakefontguiDlg)
    DDX_Text(pDX, IDC_FONT_NAME, m_fontName);
    DDX_Text(pDX, IDC_FONT_OUTPUT_FILE, m_outputName);
    DDX_Text(pDX, IDC_FONT_SIZE, m_fontSize);
    DDV_MinMaxUInt(pDX, m_fontSize, 1, 1000);
    DDX_Text(pDX, IDC_FONT_COLOUR_RED, m_fgColourR);
    DDV_MinMaxUInt(pDX, m_fgColourR, 0, 255);
    DDX_Text(pDX, IDC_FONT_COLOUR_ALPHA, m_fgColourA);
    DDV_MinMaxUInt(pDX, m_fgColourA, 0, 255);
    DDX_Text(pDX, IDC_FONT_COLOUR_GREEN, m_fgColourG);
    DDV_MinMaxUInt(pDX, m_fgColourG, 0, 255);
    DDX_Text(pDX, IDC_FONT_COLOUR_BLUE, m_fgColourB);
    DDV_MinMaxUInt(pDX, m_fgColourB, 0, 255);
    DDX_Text(pDX, IDC_FONT_BGCOLOUR_ALPHA, m_bgColourA);
    DDV_MinMaxUInt(pDX, m_bgColourA, 0, 255);
    DDX_Text(pDX, IDC_FONT_BGCOLOUR_BLUE, m_bgColourB);
    DDV_MinMaxUInt(pDX, m_bgColourB, 0, 255);
    DDX_Text(pDX, IDC_FONT_BGCOLOUR_GREEN, m_bgColourG);
    DDV_MinMaxUInt(pDX, m_bgColourG, 0, 255);
    DDX_Text(pDX, IDC_FONT_BGCOLOUR_RED, m_bgColourR);
    DDV_MinMaxUInt(pDX, m_bgColourR, 0, 255);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CMakefontguiDlg, CDialog)
    //{{AFX_MSG_MAP(CMakefontguiDlg)
    ON_WM_PAINT()
    ON_WM_QUERYDRAGICON()
    ON_BN_CLICKED(IDC_FONT_COLOUR_BUTTON, OnFontColourButton)
    ON_BN_CLICKED(IDC_FONT_BGCOLOUR_BUTTON, OnFontBgcolourButton)
    ON_BN_CLICKED(IDC_FONT_BROWSE, OnFontBrowse)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_COLOUR_SPIN_RED, OnDeltaposFontColourSpinRed)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_SIZE_SPIN, OnDeltaposFontSizeSpin)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_BGCOLOUR_SPIN_ALPHA, OnDeltaposFontBgcolourSpinAlpha)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_BGCOLOUR_SPIN_BLUE, OnDeltaposFontBgcolourSpinBlue)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_BGCOLOUR_SPIN_GREEN, OnDeltaposFontBgcolourSpinGreen)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_BGCOLOUR_SPIN_RED, OnDeltaposFontBgcolourSpinRed)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_COLOUR_SPIN_ALPHA, OnDeltaposFontColourSpinAlpha)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_COLOUR_SPIN_BLUE, OnDeltaposFontColourSpinBlue)
    ON_NOTIFY(UDN_DELTAPOS, IDC_FONT_COLOUR_SPIN_GREEN, OnDeltaposFontColourSpinGreen)
    ON_EN_CHANGE(IDC_FONT_COLOUR_RED, OnChangeFontColourRed)
    ON_EN_CHANGE(IDC_FONT_COLOUR_GREEN, OnChangeFontColourGreen)
    ON_EN_CHANGE(IDC_FONT_COLOUR_BLUE, OnChangeFontColourBlue)
    ON_EN_CHANGE(IDC_FONT_COLOUR_ALPHA, OnChangeFontColourAlpha)
    ON_EN_CHANGE(IDC_FONT_BGCOLOUR_RED, OnChangeFontBgcolourRed)
    ON_EN_CHANGE(IDC_FONT_BGCOLOUR_GREEN, OnChangeFontBgcolourGreen)
    ON_EN_CHANGE(IDC_FONT_BGCOLOUR_BLUE, OnChangeFontBgcolourBlue)
    ON_EN_CHANGE(IDC_FONT_BGCOLOUR_ALPHA, OnChangeFontBgcolourAlpha)
    ON_EN_CHANGE(IDC_FONT_SIZE, OnChangeFontSize)
    ON_EN_CHANGE(IDC_FONT_NAME, OnChangeFontName)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiDlg message handlers

BOOL CMakefontguiDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    // Set the icon for this dialog.  The framework does this automatically
    //  when the application's main window is not a dialog
    SetIcon(m_hIcon, TRUE);            // Set big icon
    SetIcon(m_hIcon, FALSE);        // Set small icon
    
    // TODO: Add extra initialization here
    
    return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CMakefontguiDlg::OnPaint() 
{
    if (IsIconic())
    {
        CPaintDC dc(this); // device context for painting

        SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

        // Center icon in client rectangle
        int cxIcon = GetSystemMetrics(SM_CXICON);
        int cyIcon = GetSystemMetrics(SM_CYICON);
        CRect rect;
        GetClientRect(&rect);
        int x = (rect.Width() - cxIcon + 1) / 2;
        int y = (rect.Height() - cyIcon + 1) / 2;

        // Draw the icon
        dc.DrawIcon(x, y, m_hIcon);
    }
    else
    {
        CDialog::OnPaint();
    }
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CMakefontguiDlg::OnQueryDragIcon()
{
    return (HCURSOR) m_hIcon;
}

void CMakefontguiDlg::OnFontColourButton() 
{
    CColorDialog c;
    c.m_cc.rgbResult = RGB( m_fgColourR, m_fgColourG, m_fgColourB );
    c.m_cc.Flags |= CC_ANYCOLOR | CC_FULLOPEN | CC_RGBINIT; 
    if( c.DoModal() == IDOK )
    {
        COLORREF colour = c.GetColor();
        m_fgColourR = GetRValue( colour );
        m_fgColourG = GetGValue( colour );
        m_fgColourB = GetBValue( colour );

        UpdateData( FALSE );
        UpdateColour();
    }    
}

void CMakefontguiDlg::OnFontBgcolourButton() 
{
    CColorDialog c;
    c.m_cc.rgbResult = RGB( m_bgColourR, m_bgColourG, m_bgColourB );
    c.m_cc.Flags |= CC_ANYCOLOR | CC_FULLOPEN | CC_RGBINIT; 
    if( c.DoModal() == IDOK )
    {
        COLORREF colour = c.GetColor();
        m_bgColourR = GetRValue( colour );
        m_bgColourG = GetGValue( colour );
        m_bgColourB = GetBValue( colour );

        UpdateData( FALSE );
        UpdateColour();
    }    
    
}

void CMakefontguiDlg::OnFontBrowse() 
{
    CFileDialog f( TRUE );
    f.m_ofn.lpstrFilter = "True Type Font (*.ttf)\0*.ttf\0";
    if( f.DoModal() == IDOK )
    {
        m_fontName = f.GetPathName();
        m_outputName = m_fontName;
        m_outputName.Replace( ".ttf", ".p3d" );
        m_outputName.Replace( ".TTF", ".p3d" );
        UpdateData( FALSE );
    }
    
}

void CMakefontguiDlg::OnDeltaposFontSizeSpin(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_fontSize) - pNMUpDown->iDelta;
    tempval = tempval < 1 ? 1 : tempval;
    tempval = tempval > 1000 ? 1000 : tempval;
    m_fontSize = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontBgcolourSpinAlpha(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_bgColourA) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_bgColourA = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontBgcolourSpinBlue(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_bgColourB) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_bgColourB = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontBgcolourSpinGreen(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_bgColourG) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_bgColourG = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontBgcolourSpinRed(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_bgColourR) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_bgColourR = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontColourSpinAlpha(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_fgColourA) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_fgColourA = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontColourSpinBlue(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_fgColourB) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_fgColourB = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontColourSpinGreen(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_fgColourG) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_fgColourG = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnDeltaposFontColourSpinRed(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
    int tempval = static_cast<int>(m_fgColourR) - pNMUpDown->iDelta;
    tempval = tempval < 0 ? 0 : tempval;
    tempval = tempval > 255 ? 255 : tempval;
    m_fgColourR = tempval;
    UpdateData( FALSE );
    UpdateColour();
    *pResult = 0;
}

void CMakefontguiDlg::OnChangeFontColourRed() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontColourGreen() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontColourBlue() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontColourAlpha() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontBgcolourRed() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontBgcolourGreen() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontBgcolourBlue() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontBgcolourAlpha() 
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontSize()
{
    UpdateColour();
}

void CMakefontguiDlg::OnChangeFontName() 
{
    m_outputName = m_fontName;
    UpdateData( FALSE );
}

void CMakefontguiDlg::UpdateColour()
{
    UpdateData();
}



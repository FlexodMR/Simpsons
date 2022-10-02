//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// wincementerView.cpp : implementation of the CWincementerView class
//

#include "stdafx.h"
#include "wincementer.h"

#include "wincementerDoc.h"
#include "wincementerView.h"
#include "RCFInfoDlg.h"
#include "RCFProperties.h"
#include "RCFActivity.h"
#include "encoderwrapperview.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Static Variables
//=============================================================================

//
// Set up extensions
//
char BASED_CODE s_FileNameFilter[ ] =
"Radical Cement Files Files (*.rcf)|*.rcf|"
"All Files (*.*)|*.*|"
"|";


/////////////////////////////////////////////////////////////////////////////
// CWincementerView

IMPLEMENT_DYNCREATE(CWincementerView, CListView)

BEGIN_MESSAGE_MAP(CWincementerView, CListView)
    //{{AFX_MSG_MAP(CWincementerView)
    ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
	ON_COMMAND(ID_RCF_INFO, OnRcfInfo)
	ON_COMMAND(ID_FILE_NEW, OnFileNew)
	ON_UPDATE_COMMAND_UI(ID_RCF_INFO, OnUpdateRcfInfo)
	ON_UPDATE_COMMAND_UI(ID_FILE_SAVE, OnUpdateFileSave)
	ON_COMMAND(ID_FILE_SAVE, OnFileSave)
	ON_COMMAND(ID_RCF_PROPERTIES, OnRcfProperties)
	ON_UPDATE_COMMAND_UI(ID_RCF_PROPERTIES, OnUpdateRcfProperties)
	ON_UPDATE_COMMAND_UI(ID_FILE_PRINT_PREVIEW, OnUpdateFilePrintPreview)
	ON_UPDATE_COMMAND_UI(ID_FILE_PRINT_SETUP, OnUpdateFilePrintSetup)
	ON_UPDATE_COMMAND_UI(ID_FILE_PRINT, OnUpdateFilePrint)
	//}}AFX_MSG_MAP
    // Standard printing commands
    ON_COMMAND(ID_FILE_PRINT, CListView::OnFilePrint)
    ON_COMMAND(ID_FILE_PRINT_DIRECT, CListView::OnFilePrint)
    ON_COMMAND(ID_FILE_PRINT_PREVIEW, CListView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWincementerView construction/destruction

CWincementerView::CWincementerView()
:
m_pEncoderWrapperView( NULL )
{
    //
}

CWincementerView::~CWincementerView()
{
    if( m_pEncoderWrapperView != NULL )
    {
        GetDocument( )->GetEncoder( )->UnregisterUpdateFilesCallback
        (
            m_pEncoderWrapperView,
            NULL
        );
        ::radRCFInfoGet( )->UnregisterErrorCallback
        (
            m_pEncoderWrapperView,
            NULL
        );
        ::radRCFInfoGet( )->UnregisterActivityProcessingCallback
        (
            m_pEncoderWrapperView,
            NULL
        );
        m_pEncoderWrapperView->Release( );
    }
}

BOOL CWincementerView::PreCreateWindow(CREATESTRUCT& cs)
{
	// default is report view and full row selection
	cs.style &= ~LVS_TYPEMASK;
	cs.style |= LVS_REPORT;

    return CListView::PreCreateWindow(cs);
}

//
// IRadRCFActivityProcessingCallback
//
void CWincementerView::OnActivityProcess
(
    IRadRCFActivity* pActivity,
    void* pUserData
)
{
    static CRCFActivity* m_pActivtyDlg = NULL;
    const char* description = pActivity->GetDescription( );

    if( strnicmp( description, "Done", 4 ) == 0 )
    {
        if( m_pActivtyDlg != NULL )
        {
            // Close the activity dialog
            m_pActivtyDlg->EndDialog( IDOK );
            m_pActivtyDlg->DestroyWindow( );

            delete m_pActivtyDlg;
        }
    }
    else
    {
        // Show the activity
        if( m_pActivtyDlg == NULL )
        {
            m_pActivtyDlg = new CRCFActivity( );
            m_pActivtyDlg->Create( );

            m_pActivtyDlg->SetNumActivities( ::radRCFInfoGet( )->GetNumActivities( ) );
            m_pActivtyDlg->ShowActivity( description );
        }
        else
        {
            m_pActivtyDlg->ShowActivity( description );
        }
    }
}

//
// IRadRCFErrorCallback
//
void CWincementerView::OnRCFEncoderError
(
    void* pUserData,
    RCFErrorCode code,
    const char* message
)
{
    MessageBox( message, "Cement File Message" );
}

//
//IRadRCFEncoderFileUpdateCallback
//
void CWincementerView::OnRCFEncoderFileUpdate
(
    bool dataChangeOnly,
    void* pUserData
)
{
    // Get the list control
    CListCtrl& ListCtrl = GetListCtrl();

    // TODO
    if( true || !dataChangeOnly )
    {
        // Remove old items
        ListCtrl.DeleteAllItems( );

        // insert items    
        unsigned int i = 0;
        LV_ITEM lvi;

        // Add each of the files into the list
        IRadObjectList* pFileList = GetDocument( )->GetEncoder( )->GetFiles( );
        for( i = 0; i < pFileList->GetSize( ); i++ )
        {
            IRadRCFFile* pFile = reinterpret_cast< IRadRCFFile* >
            (
                pFileList->GetAt( i )
            );
            pFile->AddRef( );

            char str[ 256 ];

            lvi.mask = LVIF_TEXT;
            lvi.iItem = i;
            lvi.iSubItem = 0;
            lvi.cchTextMax = 30;

            // Insert size
            sprintf( str, "%d", pFile->GetSize( ) );
            lvi.pszText = str;        
            ListCtrl.InsertItem( &lvi );

            // Insert offset
            unsigned int offset = pFile->GetOffset( );
            if( offset != 0 )
            {
                sprintf( str, "%#010x", offset );
            }
            else
            {
                strcpy( str, "disk file" );
            }
            ListCtrl.SetItemText( i, 1, str );

            // Insert path
            strcpy( str, pFile->GetFileName( ) );
            ListCtrl.SetItemText
            (
                i,
                2,
                str
            );

            // Insert modification time
            FileTime uintTime = pFile->GetFileModificationTime( );
            struct tm *time;
            time = localtime( &uintTime );

            CTime theTime
            (
                time->tm_year + 1900,
                time->tm_mon + 1,
                time->tm_mday,
                time->tm_hour,
                time->tm_min,
                time->tm_sec
            );
            CString timestr = theTime.Format( "%m/%d/%Y %I:%M %p" );
            strcpy( str, timestr.GetBuffer( 256 ) );
            ListCtrl.SetItemText( i, 3, str );

            pFile->Release( );
        }
    }
    else
    {
        // Only update the data
        // TODO
    }
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerView drawing

void CWincementerView::OnInitialUpdate( )
{
    // Create the list view
    CListView::OnInitialUpdate();

    // Get the list control
    CListCtrl& ListCtrl = GetListCtrl( );

    // Set the extended style
    ListCtrl.SetExtendedStyle
    (
        LVS_EX_FULLROWSELECT |
        LVS_EX_GRIDLINES
    );

    // insert columns    
    LV_COLUMN lvc;
    
    lvc.iSubItem = 0;
    lvc.mask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT;
    lvc.pszText = _T("Size");
    lvc.cchTextMax = 30;
    lvc.cx = 80;
    lvc.fmt = LVCFMT_LEFT;
    ListCtrl.InsertColumn( 0, &lvc );
    
    lvc.iSubItem = 1;
    lvc.pszText = _T("Offset");
    lvc.cx = 80;
    lvc.fmt = LVCFMT_LEFT;
    ListCtrl.InsertColumn( 1, &lvc );

    lvc.iSubItem = 2;
    lvc.pszText = _T("Path");
    lvc.cx = 400;
    lvc.fmt = LVCFMT_LEFT;
    ListCtrl.InsertColumn( 2, &lvc );

    lvc.iSubItem = 3;
    lvc.pszText = _T("Modification Time");
    lvc.cx = 155;
    lvc.fmt = LVCFMT_LEFT;
    ListCtrl.InsertColumn( 3, &lvc );
        
    //
    // Create a wrapper to pick up encoder callbacks
    //
    ::CEncoderWrapperViewCreate( &m_pEncoderWrapperView, RADMEMORY_ALLOC_DEFAULT );    
    m_pEncoderWrapperView->SetView( this );

    // Register some callbacks
    ::radRCFInfoGet( )->RegisterErrorCallback
    (
        m_pEncoderWrapperView,
        NULL
    );
    ::radRCFInfoGet( )->RegisterActivityProcessingCallback
    (
        m_pEncoderWrapperView,
        NULL
    );
    GetDocument( )->GetEncoder( )->RegisterUpdateFilesCallback
    (
        m_pEncoderWrapperView,
        NULL
    );

    //
    // Update the file list
    //
    OnRCFEncoderFileUpdate( false, NULL );
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerView printing

BOOL CWincementerView::OnPreparePrinting( CPrintInfo* pInfo )
{
    if( !GetDocument( )->GetEncoder( )->IsInitialized( ) )
    {
        return FALSE;
    }
    pInfo->SetMaxPage( 0 );

    // default preparation
    return DoPreparePrinting( pInfo );
}

void CWincementerView::OnBeginPrinting( CDC* /*pDC*/, CPrintInfo* /*pInfo*/ )
{
    // Add extra initialization before printing
}

void CWincementerView::OnEndPrinting( CDC* /*pDC*/, CPrintInfo* /*pInfo*/ )
{
    // Add cleanup after printing
}
void CWincementerView::OnPrint( CDC* pDC, CPrintInfo* pInfo ) 
{
    //
    // Get the encoder and the files
    //
    IRadRCFEncoder* pEncoder = GetDocument( )->GetEncoder( );
    pEncoder->AddRef( );
    IRadObjectList* pFileList = pEncoder->GetFiles( );
    pFileList->AddRef( );

    // get size of printer page (in pixels)
	CRect rectPage = pInfo->m_rectDraw;

    //
    // Title
    //
    TEXTMETRIC textMetric;
    pDC->GetTextMetrics( &textMetric );
    pDC->SetTextAlign( TA_LEFT );
    int y = rectPage.top;
    char buf[ 1024 ];

	CString strPageTitle = GetDocument()->GetTitle();
    pDC->TextOut( rectPage.left,y, strPageTitle );
    y += textMetric.tmHeight;
    pDC->TextOut( rectPage.left,y, "Radical Entertainment Inc." );
    y += textMetric.tmHeight;
    pDC->TextOut( rectPage.left,y, pEncoder->GetLibraryName( ) );
    y += textMetric.tmHeight;

    // Draw a line across the page, below the header
    y += 10; // Put the line 10/100ths of an inch below the text.
    pDC->MoveTo( rectPage.left, y );
    pDC->LineTo( rectPage.right, y );
    y += 30;

    //
    // Print the info
    //
    if( pInfo->m_nCurPage == 1 )
    {
        //
        // Info
        //
        char buf[ 1024 ];
        char* pStr1;
        char* pStr2;
        pDC->TextOut( 0,y, "Cement Library Information" );
        y += textMetric.tmHeight;

        pEncoder->GetInfoText( buf, 1024 );
        pStr1 = buf;
        pStr2 = buf;
        while( *pStr1 != '\0' )
        {
            while( ( *pStr2 != '\n' ) && ( *pStr2 != '\r' ) && ( *pStr2 != '\0' ) )
            {
                pStr2++;
            }
            if( *pStr2 == '\0' )
            {
                pStr1 = pStr2;
                break;
            }
            *pStr2 = '\0';

            // Draw the text
            pDC->TextOut( rectPage.left,y, pStr1 );
            y += textMetric.tmHeight;
            pStr2 += 2;
            pStr1 = pStr2;
        }

        // Draw a line across the page, below the header
        y += 10;
        pDC->MoveTo( rectPage.left, y );
        pDC->LineTo( rectPage.right, y );
        y += 30;
    }

    //
    // File list title
    //
    pDC->TextOut( rectPage.left,y, "    SIZE OFFSET   FILE" );
    y += textMetric.tmHeight;
    pDC->TextOut( rectPage.left,y, "    ---- -------- ----" );
    y += textMetric.tmHeight;


    //
    // Define my top and bottom
    //
    int mytop = y;
    int mybottom = rectPage.bottom - 2 * textMetric.tmHeight;

    //
    // List the files
    //
    unsigned int i = 0;
    unsigned int currPage = 1;
    if( pInfo->m_nCurPage != 1 )
    {
        // Add on the page one offset
        char buf[ 1024 ];
        char* pStr1;
        char* pStr2;
        y += textMetric.tmHeight;

        pEncoder->GetInfoText( buf, 1024 );
        pStr1 = buf;
        pStr2 = buf;
        while( *pStr1 != '\0' )
        {
            while( ( *pStr2 != '\n' ) && ( *pStr2 != '\r' ) && ( *pStr2 != '\0' ) )
            {
                pStr2++;
            }
            if( *pStr2 == '\0' )
            {
                pStr1 = pStr2;
                break;
            }
            *pStr2 = '\0';

            y += textMetric.tmHeight;
            pStr2 += 2;
            pStr1 = pStr2;
        }

        y += 10;
        y += 30;
    }
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        IRadRCFFile* pFile = reinterpret_cast< IRadRCFFile* >   
        (
            pFileList->GetAt( i )
        );
        // Forget about addref and release for this tight cycle

        if( pFile->GetWhereIsFile( ) != IRadRCFFile::Unknown )
        {
            // Is this passed the end of the document
            if( y > mybottom - 2*textMetric.tmHeight )
            {
                currPage++;
                y = mytop;
            }
            if( currPage == pInfo->m_nCurPage )
            {
                //
                // Display the file info
                //
                sprintf
                (
                    buf,
                    "%8ld %08x %-12s",
                    pFile->GetSize( ),
                    pFile->GetOffset( ),
                    pFile->GetFileName( )
                );
                pDC->TextOut( rectPage.left,y, buf );
            }
            y += textMetric.tmHeight;
        }
    }
    pInfo->SetMaxPage( currPage );

    //
	// Draw footer
    //
    y = mybottom;
	pDC->MoveTo(rectPage.left, y );
	pDC->LineTo(rectPage.right, y );

    y += textMetric.tmHeight;
	sprintf( buf, "Page %u", pInfo->m_nCurPage );
    pDC->TextOut( rectPage.left,y, buf );

    //
    // Release stuff
    //
    pFileList->Release( );
    pEncoder->Release( );

    //CListView::OnPrint(pDC, pInfo);
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerView diagnostics

#ifdef _DEBUG
void CWincementerView::AssertValid() const
{
    CListView::AssertValid();
}

void CWincementerView::Dump(CDumpContext& dc) const
{
    CListView::Dump(dc);
}

CWincementerDoc* CWincementerView::GetDocument() // non-debug version is inline
{
    ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CWincementerDoc)));
    return (CWincementerDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CWincementerView new open and save handlers


void CWincementerView::OnFileNew() 
{
    //
    // Create the new file window
    //
    CFileDialog fileDialog
    (
        true,
        ".rcf",
        NULL,
        OFN_EXPLORER | OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,
        s_FileNameFilter,
        this
    );

    // Show
    fileDialog.m_ofn.lpstrTitle = "Create a cement library";
    int result = fileDialog.DoModal( );

    // If all is well, open the file
    if( result == IDOK )
    {
        // Set the document name
        GetDocument( )->SetTitle( fileDialog.GetFileName( ) );

        GetDocument( )->SetReadOnlyPref( false );
        GetDocument( )->OnOpenDocument( fileDialog.GetPathName( ) );
    }
}

void CWincementerView::OnFileOpen() 
{
    //
    // Create the file open window
    //
    CFileDialog fileDialog
    (
        true,
        ".rcf",
        NULL,
        OFN_EXPLORER | OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST,
        s_FileNameFilter,
        this
    );

    // Show
    fileDialog.m_ofn.lpstrTitle = "Open a cement library";
    int result = fileDialog.DoModal( );

    // If all is well, open the file
    if( result == IDOK )
    {
        // Set the document name
        GetDocument( )->SetTitle( fileDialog.GetFileName( ) );

        GetDocument( )->SetReadOnlyPref
        (
            fileDialog.GetReadOnlyPref( ) != 0
        );
        GetDocument( )->OnOpenDocument( fileDialog.GetPathName( ) );
    }
}

void CWincementerView::OnFileSave() 
{
    if( GetDocument( )->GetEncoder( )->IsWriteable( ) )
    {
        GetDocument( )->OnSaveDocument( "" );
    }
    else
    {
        MessageBox
        (
            "Cannot save because this is a read-only library",
            NULL,
            MB_ICONEXCLAMATION
        );
    }
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerView message handlers

//
// Display information about the current cement library
//
void CWincementerView::OnRcfInfo() 
{
    char buf[ 1025 ];
    GetDocument( )->GetEncoder( )->GetInfoText( buf, 1024 );

    CRCFInfoDlg infoDlg;
    infoDlg.SetInfoText( buf, 1024 );
    infoDlg.DoModal( );
}
void CWincementerView::OnUpdateRcfInfo( CCmdUI* pCmdUI ) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );	
}

//
// Display the properties
//
void CWincementerView::OnRcfProperties() 
{
    CRCFProperties propDlg;
    propDlg.ConnectEncoder( GetDocument( )->GetEncoder( ) );
    int result = propDlg.DoModal( );
    propDlg.DisconnectEncoder( result == IDOK );
}
void CWincementerView::OnUpdateRcfProperties(CCmdUI* pCmdUI) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );	
}

void CWincementerView::OnUpdateFileSave(CCmdUI* pCmdUI) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );
}

void CWincementerView::OnUpdateFilePrintPreview(CCmdUI* pCmdUI) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );	
}

void CWincementerView::OnUpdateFilePrintSetup(CCmdUI* pCmdUI) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );	
}

void CWincementerView::OnUpdateFilePrint(CCmdUI* pCmdUI) 
{
    BOOL enable = GetDocument( )->GetEncoder( )->IsInitialized( )?TRUE:FALSE;
    pCmdUI->Enable( enable );	
}

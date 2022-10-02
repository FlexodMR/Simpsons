//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Output Window
//
// Description: This contains the COutputWindow class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\stdafx.h"
#include "OutputWindow.h"

#ifdef FE_DATA_TESTER
#include "..\FeData Tester\fe data tester.h"
#else
#include "..\XCon.h"
#endif


//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// COutputWindow::COutputWindow
//===========================================================================
// Description: COutputWindow's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

COutputWindow::COutputWindow()
{
}

//===========================================================================
// COutputWindow::~COutputWindow
//===========================================================================
// Description: COutputWindow's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
COutputWindow::~COutputWindow()
{
}


BEGIN_MESSAGE_MAP(COutputWindow, CSizingControlBar)
    //{{AFX_MSG_MAP(COutputWindow)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


//===========================================================================
// COutputWindow::AddMessage
//===========================================================================
// Description: This adds a message of given type to the output window
//
// Constraints:    None
//
// Parameters:    message - the buffer to print
//              type - the message type
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool COutputWindow::AddMessage( const char* message, FeData::OutputMessageTypesEnum type )
{
    // Add the message to the control
    int numberOfItems = m_messageListbox.GetItemCount();
    int result = m_messageListbox.InsertItem( numberOfItems, message, type );
    m_messageListbox.SetItemText( numberOfItems, 1, GetMessageTypeString( type ) );
    
    if( result == -1 )
    {
        TRACE( "\nError in adding message (%s) to output window!!\n", message );
    }
    else
    {
        PascalCString textMessage = m_messageListbox.GetMessage( numberOfItems );
        TRACE( "%s\n", textMessage );
    }

    // Now scroll to make sure that item is visible
    m_messageListbox.EnsureVisible( numberOfItems, true );

    return true;
}

//===========================================================================
// COutputWindow::GetMessageTypeString
//===========================================================================
// Description: This returns the message type string
//
// Constraints:    None
//
// Parameters:    type - the message type enum
//
// Return:      const char* - the message type in string
//
//===========================================================================
const char* COutputWindow::GetMessageTypeString( FeData::OutputMessageTypesEnum type )
{
    switch( type )
    {
        case FeData::DebugOutputMessage:       return "DEBUG:   ";
        case FeData::InformationOutputMessage: return "INFORMATION:   ";
        case FeData::WarningOutputMessage:     return "WARNING:   ";
        case FeData::ErrorOutputMessage:       return "ERROR:   ";
        case FeData::FunnyOutputMessage:       return "FUNNY:   ";
        default:                               return "UNKNOWN:   ";
    }
}

int COutputWindow::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_ImageList.Create( 16, 16, ILC_COLOR4 | ILC_MASK, 1, 1 );
    
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_OUTPUT_DEBUG ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_OUTPUT_INFORMATION ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_OUTPUT_WARNING ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_OUTPUT_ERROR ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_OUTPUT_FUNNY ) );
    
    if (!m_messageListbox.Create( WS_BORDER|WS_CHILD|WS_VISIBLE|LVS_ALIGNLEFT|LVS_REPORT|LVS_NOCOLUMNHEADER,
                                  CRect( 0,0,110,110 ), this, ID_MESSAGES) )
    {
        return -1;
    }

    m_messageListbox.SetImageList( &m_ImageList, LVSIL_SMALL );
    m_messageListbox.InsertColumn(0, "Heading", LVCFMT_LEFT, 500 );
    m_messageListbox.InsertColumn(1, "MessageType", LVCFMT_CENTER, 0 );

    return 0;
}

void COutputWindow::OnUpdateCmdUI(CFrameWnd* pTarget, BOOL bDisableIfNoHndler)
{
    CSizingControlBar::OnUpdateCmdUI(pTarget, bDisableIfNoHndler);

    UpdateDialogControls(pTarget, bDisableIfNoHndler);
}

void COutputWindow::OnSize(UINT nType, int cx, int cy) 
{
    CSizingControlBar::OnSize(nType, cx, cy);

    // Resize the list box to full size of window
    m_messageListbox.MoveWindow( 0, 0, cx, cy);
    m_messageListbox.SetColumnWidth( 0, 2000 );
}

void COutputWindow::DoDataExchange(CDataExchange* pDX) 
{
    // TODO: Add your specialized code here and/or call the base class
    
    CSizingControlBar::DoDataExchange(pDX);
}

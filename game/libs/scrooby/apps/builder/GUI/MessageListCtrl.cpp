// MessageListCtrl.cpp : implementation file
//

#include "..\stdafx.h"
#include "MessageListCtrl.h"
#include "..\FeData\Helpers\OutputMessage.h"
#include "Files\TextFileWriter.h"

#ifdef FE_DATA_TESTER
#include "..\FeData Tester\fe data tester.h"
#else
#include "..\XCon.h"
#endif

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMessageListCtrl

CMessageListCtrl::CMessageListCtrl()
{
}

CMessageListCtrl::~CMessageListCtrl()
{
}


BEGIN_MESSAGE_MAP(CMessageListCtrl, CListCtrl)
    //{{AFX_MSG_MAP(CMessageListCtrl)
    ON_COMMAND(ID_OUTPUT_WINDOW_COPY, OnOutputWindowCopy)
    ON_COMMAND(ID_OUTPUT_WINDOW_SAVE_FILE, OnOutputWindowSaveFile)
    ON_WM_RBUTTONDOWN()
    ON_COMMAND(ID_OUTPUT_WINDOW_CLEAN, OnOutputWindowClean)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMessageListCtrl message handlers

//===========================================================================
// CMessageListCtrl::CopyToClipboard
//===========================================================================
// Description: Copy selected lines to clipboard
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void CMessageListCtrl::CopyToClipboard()
{
    POSITION pos = GetFirstSelectedItemPosition();

    // If there are any selected lines and we can open the clipboard
    if( ( pos != NULL ) && OpenClipboard())
    {
        PascalCString source;
        HGLOBAL clipbuffer;
        char * buffer;
        EmptyClipboard();
        
        // Now loop through and add all the selected lines to clipboard
        while( pos )
        {
            int nItem = GetNextSelectedItem( pos );
            source += GetMessage( nItem );
            source += "\r\n";
        }

        // Get some memory and lock clipboard
        clipbuffer = GlobalAlloc(GMEM_DDESHARE, source.Length()+1);
        buffer = (char*)GlobalLock(clipbuffer);

        // Save the buffer
        strcpy(buffer, source);
        GlobalUnlock(clipbuffer);
        SetClipboardData(CF_TEXT,clipbuffer);
        CloseClipboard();
    }
}

//===========================================================================
// CMessageListCtrl::SaveLogsToFile
//===========================================================================
// Description: Save all lines to file
//
// Constraints:    None
//
// Parameters:    filename - the file
//
// Return:      None
//
//===========================================================================
void CMessageListCtrl::SaveLogsToFile( const char* filename )
{
    TextFileWriter file;

    if( file.OpenFile( filename ) )
    {
        int numberOfItems = GetItemCount();
        for( int i=0; i<numberOfItems; i++ )
        {
            file.Print( GetMessage( i ) );
            file.PrintNewLine();
        }

        file.CloseFile();
    }
    else
    {
        FeData::g_OutputMessage.Add( "Unable to open log file for writing!", FeData::ErrorOutputMessage );
    }
}

//===========================================================================
// CMessageListCtrl::GetMessage
//===========================================================================
// Description: This returns the string for the given item
//
// Constraints:    None
//
// Parameters:    index - the index in the list
//
// Return:      CString - the string
//
//===========================================================================
PascalCString CMessageListCtrl::GetMessage( int index )
{
    PascalCString completeMessage;
    completeMessage = GetItemText( index, 1 );  // Get the message type
    completeMessage += GetItemText( index, 0 );  // Get the message
    return completeMessage;
}

void CMessageListCtrl::OnOutputWindowCopy() 
{
    CopyToClipboard();
}

void CMessageListCtrl::OnOutputWindowSaveFile() 
{
    static char BASED_CODE szFilter[] = "Log (*.feLog)|*.feLog|All Files (*.*)|*.*||";
    CFileDialog fileDialog( FALSE, ".feLog", "Default.feLog", OFN_EXPLORER, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        PascalCString logMessage = "Saving to log file (";
        logMessage += fileDialog.GetPathName();
        logMessage += ")...";
        FeData::g_OutputMessage.Add( logMessage );

        SaveLogsToFile( fileDialog.GetPathName () );
    }
}

void CMessageListCtrl::OnOutputWindowClean() 
{
    DeleteAllItems();
}


void CMessageListCtrl::OnRButtonDown(UINT nFlags, CPoint point) 
{
    CMenu menu;
    if( menu.LoadMenu( IDR_OUTPUT_WINDOW ) )
    {
        CMenu* pPopup = menu.GetSubMenu(0);
   
        ClientToScreen(&point);
        pPopup->TrackPopupMenu( TPM_LEFTALIGN|TPM_LEFTBUTTON, point.x, point.y, this );
    }
    
    CListCtrl::OnRButtonDown(nFlags, point);
}


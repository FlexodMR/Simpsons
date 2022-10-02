// ChildView.cpp : implementation of the CEditorWnd class
//

#include "pch.hpp"
#include "framework/RmBuilder.h"
#include "plugins/editor/EditorWnd.h"
#include "framework/MainFrm.h"
#include "plugins/editor/GoToLineDialog.h"
#include "plugins/editor/FindDialog.h"
#include <plugins/buildman/buildman.h>
#include <plugins/windowman/windowman.h>
#include <ods/parser.hpp>


static const char * BUILDMAN    = "root/plugins/buildman";
static const char * PLUGIN_NAME = "root/plugins/editor";
static const char * WINDOWMAN   = "root/plugins/windowman";

extern plugin_fx * g_p_editor_plugin_send;
extern void window_closing( CEditorWnd * );

#define TOOLBAR_HEIGHT BUT_EDITOR_HEIGHT
#define STATUSBAR_HEIGHT 20

#define STATUS_BAR_COLOR RGB( 128, 128, 128 )

#define ID_EDIT_CTRL 100
#define ID_CUT       101
#define ID_COPY      102
#define ID_PASTE     103
#define ID_UNDO      104
#define ID_REDO      105
#define ID_FIND      106
#define ID_GOTO      107
#define ID_FIND_NEXT 108
#define ID_SAVE      109

void resolve_source_file_path( const char * relative, char * absolute, unsigned int len )
{
               
    buildman_query_source_root_params d;
    d.hdr.id = buildman_query_source_root;
    d.hdr.size = sizeof( d );
    sprintf( d.hdr.target, BUILDMAN );
    g_p_editor_plugin_send ( & d.hdr );
    
    strncpy( absolute, d.root, len );
    strncat( absolute, "/", len );
    strncat( absolute, relative, len );
}

    
CEditorWnd::CEditorWnd( void)
{
    m_FindFlags = 0;
    ::ZeroMemory( & m_FindTextEx, sizeof( m_FindTextEx ) );
}

CEditorWnd::~CEditorWnd()
{
    
}


BEGIN_MESSAGE_MAP(CEditorWnd,CWnd )
	ON_WM_PAINT()
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_CHAR()
	ON_COMMAND(ID_COPY, OnEditCopy)
	ON_COMMAND(ID_CUT, OnEditCut)
	ON_COMMAND(ID_PASTE, OnEditPaste)
	ON_COMMAND(ID_UNDO, OnEditUndo)
    ON_COMMAND(ID_REDO, OnEditRedo)
	ON_COMMAND(ID_FIND, OnFind)
	ON_COMMAND(ID_GOTO, OnGoToLine)
	ON_COMMAND(ID_FIND_NEXT, OnFindNext)
	ON_COMMAND(ID_SAVE, OnSave )
	ON_NOTIFY(EN_MSGFILTER,ID_EDIT_CTRL,OnEditCtrlMsgFilter)
    ON_WM_DESTROY()
    ON_WM_CLOSE()
    ON_WM_SETFOCUS()
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CEditorWnd message handlers

BOOL CEditorWnd::PreCreateWindow(CREATESTRUCT& cs) 
{
	if (!CWnd::PreCreateWindow(cs))
		return FALSE;

	return TRUE;
}

void CEditorWnd::OnPaint() 
{
	CPaintDC dc(this); // device context for painting
	
	RECT rect;

	GetClientRect( & rect );

    // draw status bar

    long start, end, line_start, line_end;
    
    BOOL dirty = m_RichEdit.GetModify( );
    
    m_RichEdit.GetSel( start, end );
    line_start = m_RichEdit.LineFromChar( start );
    line_end   = m_RichEdit.LineFromChar( end );
    
           
    char text[ 256 ];
    sprintf(
        text,
        "Line: [%d][%d] Char:[%d][%d] Dirty:[%s]",
        line_start, line_end, start, end,
        dirty ? "true" : "false" );
    
    back_dc().FillSolidRect(
        0,
        0,
        rect.right,        
        STATUSBAR_HEIGHT,
        STATUS_BAR_COLOR );
        
    draw_text( 0, 0, rect.right, STATUSBAR_HEIGHT, text );
    
    dc.BitBlt(
        0,
        rect.bottom - STATUSBAR_HEIGHT,
        rect.right,
        STATUSBAR_HEIGHT,
        & back_dc(),
        0,
        0,
        SRCCOPY );
        
    // fill button area
    
    back_dc().FillSolidRect(
        0,
        0,
        rect.right,
        TOOLBAR_HEIGHT,
        STATUS_BAR_COLOR );
    
    dc.BitBlt(
        0,
        0,
        rect.right,
        TOOLBAR_HEIGHT,
        & back_dc(),
        0,
        0,
        SRCCOPY );
    
}

void CEditorWnd::ClearDocument( void )
{
	m_RichEdit.SetSel( 0, -1 );
	m_RichEdit.Clear( );
	m_RichEdit.SetModify( false );		
}

void CEditorWnd::CreateDocument( void )
{
}


int CEditorWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CWnd ::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	m_RichEdit.Create(   WS_DLGFRAME | WS_HSCROLL | WS_VSCROLL | ES_MULTILINE | ES_AUTOVSCROLL | ES_AUTOHSCROLL | WS_CHILD | WS_VISIBLE, CRect( 0,0,0,0 ), this, ID_EDIT_CTRL );
    m_RichEdit.LimitText( INT_MAX );
    m_RichEdit.SetEventMask( ENM_KEYEVENTS );
    unsigned int limit = m_RichEdit.GetLimitText( );

	CFont mono;
    CFont gui;
	
	mono.CreateStockObject( SYSTEM_FIXED_FONT);
    gui.CreateStockObject( DEFAULT_GUI_FONT );

	m_RichEdit.SetFont( & mono, false );
	m_RichEdit.SetBackgroundColor( FALSE, RGB( 200, 200, 200 ) );
	
	char window_title[ 256 ];
	
	GetWindowText( window_title, 256 );
	
	char absolute[ 256 ];
	resolve_source_file_path( window_title, absolute, 256 );
	
	CFile myFile;
	
	if ( myFile.Open( absolute, CFile::modeRead ) )
	{
	    char * pFileBuffer = new char [ (size_t) myFile.GetLength( ) + 1 ];
	    myFile.Read( pFileBuffer, (UINT) myFile.GetLength( ) );
	    pFileBuffer[ myFile.GetLength( ) ] = '\0';

        m_RichEdit.SetWindowText( pFileBuffer );
        m_RichEdit.SetModify( false );	
        
	    myFile.Close( );

	    delete [] pFileBuffer;
    }
    else
    {
        char msg[ 256 ];
        sprintf( msg, "Failed to open: [%s] for editing", window_title );
        MessageBox( msg );
    }

    m_Button_Cut.Create( edit_cut, this,    ID_CUT, CPoint( BUT_EDITOR_WIDTH     * 0, 0 ) );
    m_Button_Copy.Create( edit_copy, this,  ID_COPY, CPoint( BUT_EDITOR_WIDTH  * 1, 0 ) );
    m_Button_Paste.Create( edit_paste, this, ID_PASTE, CPoint( BUT_EDITOR_WIDTH * 2, 0 ) );
    m_Button_Undo.Create( edit_undo, this,  ID_UNDO, CPoint( BUT_EDITOR_WIDTH  * 3, 0 ) );
    m_Button_Redo.Create( edit_redo, this,  ID_REDO, CPoint( BUT_EDITOR_WIDTH  * 4, 0 ) );
    m_Button_Find.Create( edit_find, this,  ID_FIND, CPoint( BUT_EDITOR_WIDTH  * 5, 0 ) );
    m_Button_Goto.Create( edit_goto, this,  ID_GOTO, CPoint( BUT_EDITOR_WIDTH  * 6, 0 ) );
    		
	return 0;
}

void CEditorWnd::OnSave( void )
{
    SaveFile();

}

void CEditorWnd::SaveFile( void )
{
    char title[ 256 ];
    char absolute[ 256 ];
    GetWindowText( title, 256 );
    ::resolve_source_file_path( title, absolute, 256 );
            
	CFile myFile;
	
	if ( myFile.Open( absolute, CFile::modeWrite ) )
	{
	    long len = m_RichEdit.GetTextLength( );
	    
	    char * pFileBuffer = new char [ (size_t) len + 1 ];
	    m_RichEdit.GetWindowText( pFileBuffer, len );
	    
	    myFile.Write( pFileBuffer, len );

        m_RichEdit.SetModify( false );	
        
	    myFile.Close( );

	    delete [] pFileBuffer;
    }
    else
    {
        char msg[ 256 ];
        sprintf( msg, "Failed to open: [%s] for saving", title );
        MessageBox( msg );
    }
}    

void CEditorWnd::OnSetFocus( CWnd * pOldWnd )
{
    SendMessage( WM_NCACTIVATE, TRUE, TRUE );
    
    //OnNcActivate( TRUE ); 

    SetActiveWindow( );
    EnableWindow( TRUE );
}

void CEditorWnd::OnSize(UINT nType, int cx, int cy) 
{
	CWnd ::OnSize(nType, cx, cy);

	m_RichEdit.MoveWindow( 0, TOOLBAR_HEIGHT, cx, cy - TOOLBAR_HEIGHT - STATUSBAR_HEIGHT, true );
}

void CEditorWnd::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	CWnd ::OnChar(nChar, nRepCnt, nFlags);
}

void CEditorWnd::OnEditCopy() 
{
	m_RichEdit.Copy( );	
}

void CEditorWnd::OnEditCut() 
{
	m_RichEdit.Cut( );	
}

void CEditorWnd::OnEditPaste() 
{
	m_RichEdit.Paste( );	
}

void CEditorWnd::OnEditUndo() 
{
	m_RichEdit.Undo( );	
}

void CEditorWnd::OnEditRedo()
{
    m_RichEdit.Redo();
}

	
unsigned int CEditorWnd::GetEditLineNumber( void )
{
    long start, end;

    m_RichEdit.GetSel( start, end );
    

    return ::SendMessage( m_RichEdit.m_hWnd, EM_LINEFROMCHAR, start, 0 );
}

void CEditorWnd::OnFind() 
{
    CFindDialog fd;

    fd.m_MatchWholeWord = m_FindFlags & FR_WHOLEWORD;
    fd.m_MatchCase      = m_FindFlags & FR_MATCHCASE;
    fd.m_FindWhat       = m_FindString;

    if ( fd.DoModal( ) )
    {
        m_FindFlags = 0;
        ::ZeroMemory( & m_FindTextEx, sizeof( m_FindTextEx ) );

        if ( fd.m_MatchWholeWord == TRUE )
        {
            m_FindFlags |= FR_WHOLEWORD;
        }
        if ( fd.m_MatchCase == TRUE )
        {
            m_FindFlags = FR_MATCHCASE;
        }

        if ( fd.m_FindWhat.IsEmpty( ) == false )
        {
            m_FindString = fd.m_FindWhat;

            m_FindTextEx.chrgText.cpMin = 0xFFFFFFFF;
            m_FindTextEx.chrgText.cpMax = 0xFFFFFFFF;

            OnFindNext( );
        }
    }	

    m_RichEdit.SetFocus( );
}


void CEditorWnd::OnFindNext() 
{


    if ( m_FindString.IsEmpty( ) == false )
    {
        if ( m_FindTextEx.chrgText.cpMin == 0xFFFFFFFF )
        {
            m_FindTextEx.chrg.cpMin = 0;
        }
        else
        {
            m_FindTextEx.chrg.cpMin = m_FindTextEx.chrgText.cpMax;
        }

        m_FindTextEx.chrg.cpMax = m_RichEdit.GetTextLength( );

        m_FindTextEx.lpstrText = (char*) (const char*) m_FindString;

        m_RichEdit.FindText( m_FindFlags | FR_DOWN, & m_FindTextEx );

        if ( m_FindTextEx.chrgText.cpMin == 0xFFFFFFFF )
        {
            if ( m_FindTextEx.chrg.cpMin == 0 )
            {
                CString msg;
                msg.Format( "Text not found: [%s]", m_FindString );
                MessageBox( msg );
            }
            else
            {
                OnFindNext( );
            }
        }
        else
        {
            m_RichEdit.SetSel( m_FindTextEx.chrgText.cpMin, m_FindTextEx.chrgText.cpMax ); 
            int line = m_RichEdit.LineFromChar( m_FindTextEx.chrgText.cpMin );
            m_RichEdit.LineScroll( -(int)0x80000000 );
            m_RichEdit.LineScroll( line );
        }

        m_RichEdit.SetFocus( );
    }
}

void CEditorWnd::OnGoToLine() 
{
    CGoToLineDialog gtld;

    if ( gtld.DoModal( ) )
    {
        unsigned int l = gtld.m_LineNumber;

        m_RichEdit.LineScroll( -(int)0x80000000 );
        m_RichEdit.LineScroll( l );
        int character = m_RichEdit.LineIndex( l );
        m_RichEdit.SetSel( character, character );
    }	

    m_RichEdit.SetFocus( );
}

void CEditorWnd::OnClose( void )
{
    char title[ 256 ];
    GetWindowText( title, 256 );
    
    bool exit = true;
    
    if ( m_RichEdit.GetModify( ) )
    {
        char msg[ 256 ];
        sprintf( msg, "Save changes to: [%s]", title );
        
        INT res = MessageBox( msg, NULL, MB_YESNOCANCEL );
        
        if ( res == IDYES )
        {
            SaveFile( );
        }
        else if ( res == IDCANCEL )
        {
            exit = false;
        }
    }

    if ( exit )
    {
        window_closing( this );
    }
}

void CEditorWnd::OnDestroy()
{
    CWnd::OnDestroy();
}

void CEditorWnd::OnEditCtrlMsgFilter( NMHDR * p_nmhdr, LRESULT * p_result)
{
    MSGFILTER * p_msg_filter = (MSGFILTER*) p_nmhdr;

    *p_result = 0;
            
    if ( p_msg_filter->msg == WM_CHAR )
    {        
        if ( p_msg_filter->wParam == 0x9 )
        {
            *p_result = 1;
            
            ::PostMessage( p_nmhdr->hwndFrom, WM_CHAR, 0x20, 0 );
            ::PostMessage( p_nmhdr->hwndFrom, WM_CHAR, 0x20, 0 );
            ::PostMessage( p_nmhdr->hwndFrom, WM_CHAR, 0x20, 0 );
            ::PostMessage( p_nmhdr->hwndFrom, WM_CHAR, 0x20, 0 );                                    
        }
    }

}

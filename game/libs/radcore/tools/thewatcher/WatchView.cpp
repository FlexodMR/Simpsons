//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchView.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation in the watch server 
//				view
//
// Revisions:	Jan 22 2000
//
// Usage:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "WatchServer.h"
#include "WatchView.h"
#include "WatchPoint.h"
#include "EditBar.h"
#include "FileAssoc.h"

//=============================================================================
// Definitions 
//=============================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Message Map
//=============================================================================

BEGIN_MESSAGE_MAP(CWatchView,CTreeCtrl )
	//{{AFX_MSG_MAP(CWatchView)
    ON_NOTIFY( TVN_SELCHANGED, AFX_IDW_PANE_FIRST, OnSelectionChange )
	//}}AFX_MSG_MAP
    ON_WM_DESTROY()
END_MESSAGE_MAP()

//=============================================================================
// Contructor / Destructor
//=============================================================================

CWatchView::CWatchView( CMainFrame* pMainFrame ) :
    m_pMainFrame( pMainFrame ),
    m_pActiveWatchPoint(NULL ),
    m_bInResetState( false )
{
    //
    // Clear the default namespace
    //
    m_DefaultNameSpaceItem = NULL;
}

CWatchView::~CWatchView()
{
}

//=============================================================================
// PreCreateWindow
//=============================================================================

BOOL CWatchView::PreCreateWindow(CREATESTRUCT& cs) 
{
	if (!CTreeCtrl::PreCreateWindow(cs))
		return FALSE;

	cs.dwExStyle |= WS_EX_CLIENTEDGE;
	cs.style &= ~WS_BORDER;
	
	return TRUE;
}

//=============================================================================
// Reset
//=============================================================================

void CWatchView::Reset()
{
    m_bInResetState = true;
    //
    // Clear out all watchpoints.
    //
    CWatchPoint::DeleteAll( );

    m_pActiveWatchPoint = NULL;

    //
    // Clear all items in the display.
    //
    DeleteAllItems( );

    //
    // Delete all file associations.
    //
    CFileAssociation::DeleteAll( );

    //
    // Set our default namespace to null.
    //
    m_DefaultNameSpaceItem = NULL;

    m_bInResetState = false;
}

//=============================================================================
// AddNameSpace
//=============================================================================

void CWatchView::AddNameSpace(char *pNameSpace)
{
    //
    // Check if this is the first call. The first call is reserved for 
    // setting the default name space.
    //
    if( m_DefaultNameSpaceItem == NULL )
    {
        GetNameSpaceToken( pNameSpace, m_DefaultNameSpace );
        if( strlen( m_DefaultNameSpace ) == 0 )
        {
            m_DefaultNameSpaceItem = TVI_ROOT;
        }
        else
        {   
           m_DefaultNameSpaceItem = InsertItem( m_DefaultNameSpace, TVI_ROOT );
           SetItemData( m_DefaultNameSpaceItem, NULL );
        }
        m_CurrentNameSpaceItem = m_DefaultNameSpaceItem;
    }
    else
    {
        char            token[ 256 ];
        HTREEITEM       currentLevel = TVI_ROOT;
        
        //
        // Break down name space into tokens and add each item if not already
        // added.
        // 
        pNameSpace = GetNameSpaceToken( pNameSpace, token );

        while( pNameSpace != NULL )
        {
            //
            // Get child of the current level
            //
            HTREEITEM childItem = GetChildItem( currentLevel );
            
            while( childItem != NULL )
            {
                //
                // Get the value. We store zero for name space entries 
                // to distinguish them for watch point names,
                //
                if( GetItemData( childItem ) == NULL )
                {
                    //
                    // This item is a a namespace. Check if same name as our token.
                    //
                    CString ItemText = GetItemText( childItem );
                   
                    if( 0 == strcmp( ItemText, token ) )
                    {
                        //
                        // This token exits already. Set current level to this
                        // token and break out the inner while loop.
                        //
                        currentLevel = childItem;
                        break;
                    }
                }

                //
                // Get the next simbilig at this level.
                //
                childItem = GetNextItem( childItem /*currentLevel*/, TVGN_NEXT );
            }

            if( childItem == NULL )
            {
                //
                // We did not find the name. Lets add the token.
                //
                currentLevel = InsertItem( token, currentLevel );
                SetItemData( currentLevel, NULL );
            }        

            pNameSpace = GetNameSpaceToken( pNameSpace, token );
       
        }

        //
        // Set the item index where the next watch point will be added.
        //
        m_CurrentNameSpaceItem = currentLevel;
    }
}

//=============================================================================
// AssociateFile
//=============================================================================

void CWatchView::AssociateFile( const char *pNameSpace, const char* pFileName, unsigned int fileType )
{
    //
    // Simply new up a file object. The file object manages a linked list of 
    // these objects, hence we do not need to save the pointer.
    //
    new CFileAssociation( pNameSpace, pFileName, fileType );
}

//=============================================================================
// GetCurrentItem
//=============================================================================

HTREEITEM  CWatchView::GetCurrentItem( void )
{
    HTREEITEM currentItem = m_CurrentNameSpaceItem;
    
    //
    // return the current name space item and then reset to the
    // default.
    
    m_CurrentNameSpaceItem = m_DefaultNameSpaceItem;;

    return( currentItem );
}

//=============================================================================
// UpdateNameSpace
//=============================================================================

//
// This routins is invoked when we delete a watchpoint. I checks to see if 
// an parent name space items can be removed. The item is the parent to check.
//
void CWatchView::UpdateNameSpace( HTREEITEM item )
{
    while( item != NULL )
    {
        //
        // Check if the item has any childen. If so, simply return..
        //
        HTREEITEM child = GetChildItem( item );
        if( child != NULL )
        {   
            return;
        }

        //
        // Check if this item is our root. If so we don't delete it.
        //
        CString name = GetItemText( item );
        if( 0 == strcmp( name, m_DefaultNameSpace ) )
        {
            return;
        }
        
        //
        // Get the parent of this item, and delete the current item
        //
        child = item;

        item = GetParentItem( child );

        DeleteItem( child );

    }
}

//=============================================================================
// Function:    CWatchView::GetNameSpaceToken
//=============================================================================
// Description: This member is used to get the next name space token.
//              
// Parameters:  pNameName  - current position in name space
//              pToken     - where to copy token
//
// Returns:     NULL - no more tokens
//              non-zero, where to check for next.
//
// Notes:
//------------------------------------------------------------------------------

char* CWatchView::GetNameSpaceToken(char *pNameSpace, char *pToken)
{
    //
    // Check if leading \ exists. If so skip over it.
    //
    if( *pNameSpace == '\\' )
    {
        pNameSpace++;
    }

    //
    // Check if at end of string.
    //
    if( *pNameSpace == '\0' )
    {
        *pToken = '\0';
        return( NULL );
    }

    //
    // Copy the string until we hit a null termination or a back slash )
    //
    while( (*pNameSpace != '\0') && (*pNameSpace != '\\' ) )
    {
        *pToken++ = *pNameSpace++;
    }

    //
    // Make sure token is null terminated.
    //
    *pToken = '\0';

    return( pNameSpace );
}

//=============================================================================
// Function:    CWatchView::OnNotify
//=============================================================================
// Description: This member is used to field selection changes in the tree view
//              
// Parameters:  
//

// Notes:
//------------------------------------------------------------------------------

void CWatchView::OnSelectionChange( NMHDR * pNotifyStruct, LRESULT * result )
{
    //
    // do nothing if we attempt to reset.
    //
    if ( m_bInResetState )
    {
        return;
    }
    NMTREEVIEW* pnmtv = (NMTREEVIEW*) pNotifyStruct;

    //
    // Get the new selected item.
    //
    HTREEITEM selectedItem = pnmtv->itemNew.hItem;

    //
    // Get the item data. If it is null then it indicates a name space item
    // and not a watch point. Reset the edit bar.
    //
    CWatchPoint* pWatchPoint = (CWatchPoint*) GetItemData( selectedItem );
    
    m_pActiveWatchPoint = pWatchPoint;

    if( pWatchPoint == NULL )
    {
        m_pMainFrame->m_EditBar->SetDataType( CEditBar::Undefined );       
        
    }
    else
    {
        //
        // Tell the frame that edit bar control changes should
        // be directed to the current watchpoint. Also update the edit bar.
        //
        pWatchPoint->UpdateEditBar( m_pMainFrame->m_EditBar );
    }

    

    *result = 0;
}

//=============================================================================
// GetActiveWatchPoint
//=============================================================================

CWatchPoint* CWatchView::GetActiveWatchPoint( void )
{
    return( m_pActiveWatchPoint );
}

// 
// These two routines are responsible for reading and writing values to files.
// The first routine returns false if an associated file cannot be found
// or the file could not be openned or if the item cannot be found.  If found
// then the string is returned and true
//
bool CWatchView::GetInitialValue( const char* pName, HTREEITEM treeItem, char *pInitialValue)
{
    //
    // Lets build up a string containing the name space preceeding the current tree item.
    //
    char    nameSpace[ 512 ];
    nameSpace[0] = '\0';    

    HTREEITEM parent = GetParentItem( treeItem );
    
    if( parent == NULL )
    {
        return( false );
    }

    while( parent != NULL )
    {
        CString name = GetItemText( parent );
        name += "\\";
        name += nameSpace;
        strcpy( nameSpace, name );
        parent = GetParentItem( parent );
    }

    //
    // Remove trailing slash.
    //
    nameSpace[ strlen( nameSpace ) - 1 ] = '\0';

    //
    // Lets try and find the file. If not present or could not be openned, 
    // return false. The file will return the portion of the name space to use
    // for the element name,
    //
    char*   substring;
    CFileAssociation* pFile = CFileAssociation::Find( nameSpace, &substring );
    if( pFile == NULL )
    {
        return( false );
    }
    
    //
    // Get the value 
    //
    return( pFile->GetValue( substring, pName, pInitialValue ) );

}

//
// This routine will attempt to save a value. If the file cannot be found, then the write will
// be ignored.
//
bool CWatchView::SetInitialValue( const char* pName, HTREEITEM treeItem, char *pInitialValue)
{
    //
    // Lets build up a string containing the name space preceeding the current tree item.
    //
    char    nameSpace[ 512 ];
    nameSpace[0] = '\0';    

    HTREEITEM parent = GetParentItem( treeItem );

    if( parent == NULL )
    {
        return(false);
    }

    while( parent != NULL )
    {
        CString name = GetItemText( parent );
        name += "\\";
        name += nameSpace;
        strcpy( nameSpace, name );
        parent = GetParentItem( parent );
    }

    //
    // Remove trailing slash.
    //
    nameSpace[ strlen( nameSpace ) - 1 ] = '\0';

    //
    // Lets try and find the file. If not present or could not be openned, 
    // return false. The file will return the portion of the name space to use
    // for the element name,
    //
    char*   substring;
    CFileAssociation* pFile = CFileAssociation::Find( nameSpace, &substring );
    if( pFile == NULL )
    {
        return(false);
    }
    
    //
    // Set the value 
    //
    return( pFile->SetValue( substring, pName, pInitialValue ) );

}

void CWatchView::OnDestroy()
{
    Reset( );
    CTreeCtrl::OnDestroy();
}

//=============================================================================
//
// File:        WatchView.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				view. Responsible for managing for displaying tree view of watch points
//
// Revisions:	Jan 22, 2000
//
// Usage:       
//
//=============================================================================

#ifndef WATCHVIEW_H
#define WATCHVIEW_H

//=============================================================================
// Include Files
//=============================================================================

#include "MainFrm.h"
#include "..\\..\\src\\radprotocols\\debugWatchProtocol.hpp"

//=============================================================================
// Forward Declarations
//=============================================================================

class CMainFrame;
class CWatchPoint;

//=============================================================================
// Class Declarations
//=============================================================================

//
// Class used to display tree view of watchpoints
//
class CWatchView : public CTreeCtrl
{
    public:
   	    CWatchView( CMainFrame* pFrame );
    	virtual ~CWatchView();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWatchView)
	protected:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	//}}AFX_VIRTUAL

public:
	bool GetInitialValue( const char* pName, HTREEITEM treeItem, char* pInitialValue );
    bool SetInitialValue( const char* pName, HTREEITEM treeItem, char* pInitialValue );    

    //
    // Empties the tree and frees everything
    //
  	void Reset( void );
    
    //
    // Member used to set name space
    //    
	void AddNameSpace( char* pNameSpace );
    
    //
    // Used to associate filename with the name space.
    //
    void AssociateFile( const char* pNameSpace, const char* pFilename, unsigned int fileType ); 
    
    //
    // Member to obtain the index to add the watchpoint.
    //
    HTREEITEM  GetCurrentItem( void );

    //
    // Get active watchpoint.
    //
    CWatchPoint* GetActiveWatchPoint( void );

    //
    // Cleans up parent name space.
    //
    void UpdateNameSpace( HTREEITEM m_TreeItem );

   
	// Generated message map functions
protected:
	//{{AFX_MSG(CWatchView)
    afx_msg void OnSelectionChange( NMHDR * pNotifyStruct, LRESULT * result );
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:

    bool m_bInResetState;

    //
    // This member parse the name space string into its
    // constituent tokens.
    //
	char* GetNameSpaceToken( char* pNameSpace, char* token );

    //
    // This contains the default name space. 
    //
    char    m_DefaultNameSpace[ WP_MAX_NAMESPACELENGTH ];

    //
    // Contains the index of the default name space.
    //
    HTREEITEM   m_DefaultNameSpaceItem;

    //
    // This contains the current name space index.
    //
    HTREEITEM   m_CurrentNameSpaceItem;

    CMainFrame* m_pMainFrame;

    //
    // This maintains the active watch point. Used to forward edit bar
    // messages. Can be null.
    //
    class CWatchPoint* m_pActiveWatchPoint;
public:
    afx_msg void OnDestroy();
};

#endif

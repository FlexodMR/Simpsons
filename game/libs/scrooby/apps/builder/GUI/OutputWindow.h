//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Output Window
//
// Description: This contains the COutputWindow class which keeps track of output messages
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#if !defined(__OUTPUTWINDOW_H__)
#define __OUTPUTWINDOW_H__

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

//===========================================================================
// Nested Includes
//===========================================================================
#include "sizecbar.h"
#include "..\FeData\Helpers\OutputMessage.h"
#include "MessageListCtrl.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end box drawing 
//              element.
//
// Constraints: None
//
//===========================================================================
class COutputWindow : public CSizingControlBar
{
// Construction
public:
    COutputWindow();

// Attributes
public:
    // Add a message to the listbox
    bool AddMessage( const char* message, FeData::OutputMessageTypesEnum type = FeData::InformationOutputMessage );
    const char* GetMessageTypeString( FeData::OutputMessageTypesEnum type );

// Overridables
    virtual void OnUpdateCmdUI(CFrameWnd* pTarget, BOOL bDisableIfNoHndler);

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(COutputWindow)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~COutputWindow();

protected:
    CImageList m_ImageList;
    CMessageListCtrl    m_messageListbox;

    // Generated message map functions
protected:

    //{{AFX_MSG(COutputWindow)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(__OUTPUTWINDOW_H__)

//===========================================================================
// Inlines
//===========================================================================

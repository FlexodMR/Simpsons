//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Scrooby Project Window
//
// Description: This contains the CProjectWindow class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#if !defined(__PROJECTWINDOW_H__)
#define __PROJECTWINDOW_H__

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

//===========================================================================
// Nested Includes
//===========================================================================
#include "sizecbar.h"
#include "../FeData/Helpers/FileName.h"
#include "ProjectTree.h"
#include "../FeData/NamedElements/Project.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Project;
}

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
class CProjectWindow : public CSizingControlBar
{
// Construction
public:
    CProjectWindow();

// Attributes
public:
  
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
    virtual ~CProjectWindow();
    void ClearTree();
    bool InsertToTree(FeData::FileName& fileName);
    bool InsertScreensFolder();
    bool DeleteCurrentScreen( FeData::Project* project );

protected:
    CImageList m_ImageList;
    CProjectTree    m_tree;
    HTREEITEM   m_hScreens;

    // Generated message map functions
protected:
    //{{AFX_MSG(CProjectWindow)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(__PROJECTWINDOW_H__)

//===========================================================================
// Inlines
//===========================================================================

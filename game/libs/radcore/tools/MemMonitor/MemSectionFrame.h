// MEMSECTIONFRAME.h : interface of the CMemSectionFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMSECTIONFRAME_H__B91ADC82_B72B_4A1E_B824_90098FB744C5__INCLUDED_)
#define AFX_MEMSECTIONFRAME_H__B91ADC82_B72B_4A1E_B824_90098FB744C5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemSectionCreateProgressDlg.h"
#include "MemorySection.h"

class CMemSectionListView;
class CMemSectionCellView;
class CMemBlockView;
class CMemSessionViewManager;

class CMemSectionFrame;

typedef TRef< CMemSectionFrame > CMemSectionFramePtr;

#define CMDIChildWnd CBCGMDIChildWnd

class CMemSectionFrame :
    public CMDIChildWnd,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemSectionFrame)
protected:
    CMemSectionFrame( );

public:

    void Initialize( CMemorySection * pSection, CWnd * pParentWnd, CMemSessionViewManager * pViewManager );

    void Terminate( );

    void SetMemorySectionPtr( CMemorySection * pMemorySection )
    {
        m_pMemorySection = pMemorySection;
    }

    CMemorySection * GetMemorySectionPtr( )
    {
        return m_pMemorySection;
    }

    const CMemorySection * GetMemorySectionPtr( ) const
    {
        return m_pMemorySection;
    }

    CMemSectionListView * GetSectionListView( );

    CMemSectionCellView * GetSectionCellView( );

    CMemBlockView * GetBlockView( );

    CMemSectionCreateProgressDlg & GetProgressDlg( )
    {
        return m_dlgProgress;
    }

    CMemSessionViewManager * GetSessionViewManager( )
    {
        return m_pViewManager;
    }
    
    void SaveWndState( );

    void LoadWndState( );

// Attributes
private:

    HMENU                           m_hMenu;
    HACCEL                          m_hAccel;


    CMemSessionViewManager          * m_pViewManager;

    CBCGToolBar	                    m_wndToolBar;
    CImageList                      m_imgImageList;

    CMemSectionCreateProgressDlg    m_dlgProgress;
    CMemorySectionPtr               m_pMemorySection;

    CSplitterWnd                    m_wndSplitter;
    CSplitterWnd                    m_wndSplitterSub;

public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSectionFrame)
	protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void PostNcDestroy();
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemSectionFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

// Generated message map functions
protected:
	//{{AFX_MSG(CMemSectionFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnCellviewFit();
	afx_msg void OnUpdateCellviewFit(CCmdUI* pCmdUI);
	afx_msg void OnCellviewOption();
	afx_msg void OnUpdateCellviewOption(CCmdUI* pCmdUI);
	afx_msg void OnCellviewZoom();
	afx_msg void OnUpdateCellviewZoom(CCmdUI* pCmdUI);
	afx_msg void OnDestroy();
	afx_msg void OnCellviewpadding16bytes();
	afx_msg void OnUpdateCellviewpadding16bytes(CCmdUI* pCmdUI);
	afx_msg void OnCellviewpadding32bytes();
	afx_msg void OnUpdateCellviewpadding32bytes(CCmdUI* pCmdUI);
	afx_msg void OnCellviewpaddingCustom();
	afx_msg void OnUpdateCellviewpaddingCustom(CCmdUI* pCmdUI);
	afx_msg void OnCellviewpadding0bytes();
	afx_msg void OnUpdateCellviewpadding0bytes(CCmdUI* pCmdUI);
	afx_msg void OnCellviewPadding();
	afx_msg void OnUpdateCellviewPadding(CCmdUI* pCmdUI);
	afx_msg void OnCellviewpadding64bytes();
	afx_msg void OnUpdateCellviewpadding64bytes(CCmdUI* pCmdUI);
	afx_msg void OnCellviewpadding128bytes();
	afx_msg void OnUpdateCellviewpadding128bytes(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSECTIONFRAME_H__B91ADC82_B72B_4A1E_B824_90098FB744C5__INCLUDED_)

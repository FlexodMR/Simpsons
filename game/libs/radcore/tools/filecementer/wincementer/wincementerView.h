// wincementerView.h : interface of the CWincementerView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_WINCEMENTERVIEW_H__F7AA9D74_875E_4FE0_BC93_22CCBAF0945D__INCLUDED_)
#define AFX_WINCEMENTERVIEW_H__F7AA9D74_875E_4FE0_BC93_22CCBAF0945D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "EncoderWrapperView.h"

class CWincementerView : public CListView                     
{
protected: // create from serialization only
	CWincementerView();
	DECLARE_DYNCREATE(CWincementerView)

// Attributes
public:
	CWincementerDoc* GetDocument();

    // The encoder wrapper that recieves callbacks for this view
    friend CEncoderWrapperView;
    CEncoderWrapperView* m_pEncoderWrapperView;

// Operations
public:
    //
    // IRadRCFEncoderFileUpdateCallback
    //
    virtual void OnRCFEncoderFileUpdate
    (
        bool dataChangeOnly,
        void* pUserData
    );

    //
    // IRadRCFErrorCallback
    //
    virtual void OnRCFEncoderError
    (
        void* pUserData,
        RCFErrorCode code,
        const char* message
    );

    //
    // IRadRCFActivityProcessingCallback
    //
    virtual void OnActivityProcess
    (
        IRadRCFActivity* pActivity,
        void* pUserData
    );


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWincementerView)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual void OnInitialUpdate(); // called first time after construct
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnPrint(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CWincementerView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CWincementerView)
	afx_msg void OnFileOpen();
	afx_msg void OnRcfInfo();
	afx_msg void OnFileNew();
	afx_msg void OnUpdateRcfInfo(CCmdUI* pCmdUI);
	afx_msg void OnUpdateFileSave(CCmdUI* pCmdUI);
	afx_msg void OnFileSave();
	afx_msg void OnRcfProperties();
	afx_msg void OnUpdateRcfProperties(CCmdUI* pCmdUI);
	afx_msg void OnUpdateFilePrintPreview(CCmdUI* pCmdUI);
	afx_msg void OnUpdateFilePrintSetup(CCmdUI* pCmdUI);
	afx_msg void OnUpdateFilePrint(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in wincementerView.cpp
inline CWincementerDoc* CWincementerView::GetDocument()
   { return (CWincementerDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINCEMENTERVIEW_H__F7AA9D74_875E_4FE0_BC93_22CCBAF0945D__INCLUDED_)

#if !defined(AFX_FILETREECTRL_H__594989AA_4D20_4AD3_A1CC_7031AAADB1BE__INCLUDED_)
#define AFX_FILETREECTRL_H__594989AA_4D20_4AD3_A1CC_7031AAADB1BE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// FileTreeCtrl.h : header file
//
#include <list>
using namespace std;
#include "..\baseclass\MltiTree.h"

class CScriptDoc;
class CScriptObject;
class CScriptMethod;
class CWorkSpaceDoc;
/////////////////////////////////////////////////////////////////////////////
// CFileTreeCtrl window

class CFileTreeCtrl : public CMultiTree
{
	DECLARE_DYNAMIC(CFileTreeCtrl)
// Construction
public:
    CFileTreeCtrl();

// Attributes
public:
    enum
    {
        IDB_CLASS,
            IDB_FILE,
            IDB_FUNCTION,
            IDB_PARAMETER,
            IDB_PROJECT,
            IDB_INVALID,
            IDB_PROPERTY,
    };

// Operations
public:
    int PopulateFileView(CWorkSpaceDoc* pWorkSpaceDoc);
    void UpdateFileView( );

    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFileTreeCtrl)
	public:
	virtual BOOL OnChildNotify(UINT message, WPARAM wParam, LPARAM lParam, LRESULT* pLResult);
	virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);
	protected:
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CFileTreeCtrl();

    virtual void PopulateDoc(HTREEITEM hDocItem, CScriptDoc* pDoc);
    virtual void PopulateObject(HTREEITEM hObjItem, CScriptObject* pObj);

    virtual void UpdateDocItem( HTREEITEM hDoc );
    virtual void UpdateObjItem( HTREEITEM hObj );
    virtual void UpdateMetItem( HTREEITEM hMet );

    virtual HTREEITEM AddItemDoc(HTREEITEM hParentItem, CScriptDoc* pDoc, HTREEITEM hAfter = TVI_LAST);
    virtual HTREEITEM AddItemObject(HTREEITEM hParentItem, CScriptObject* pObj, HTREEITEM hAfter = TVI_LAST);
    virtual HTREEITEM AddItemMethod(HTREEITEM hParentItem, CScriptMethod* pMet, HTREEITEM hAfter = TVI_LAST);

    virtual void DelItemDoc(const CScriptDoc* pDoc);
    virtual void DelItemObject(const CScriptObject* pObj);
    virtual void DelItemMethod(const CScriptMethod* pMet);

    virtual void DeleteAllChildItem(HTREEITEM hParentItem);

    static unsigned int GetDynamicMenuItemResourceIDBeg() { ASSERT( 0x8100 == ID_SCRIPTOBJECT_CALL); return(0x8100); };
    static unsigned int GetDynamicMenuItemResourceIDEnd() { return(ID_SCRIPTOBJECT_CALL + 0xff); };

    virtual BOOL IsDropSource(HTREEITEM hItem);
    virtual BOOL IsDropTarget(HTREEITEM hItem);
    
    virtual BOOL IsPasteTarget( HTREEITEM hItem );

    virtual CScriptDoc* GetScriptDocPtr( HTREEITEM hDoc );

    virtual CScriptObject* GetScriptObjectPtr( HTREEITEM hObj );

    virtual CScriptMethod* GetScriptMethodPtr( HTREEITEM hMet );

    virtual HTREEITEM FindItemDocByName( const CString & strDocName );

    virtual HTREEITEM FindItemObjectByName( const HTREEITEM hDocItem, const CString & strObjName );

    virtual HTREEITEM FindItemObjectByName( const CString & strDocName, const CString & strObjName )
    {
        return FindItemObjectByName( FindItemDocByName( strDocName ), strObjName );
    }

    virtual HTREEITEM FindItemMethodByName( const CString & strDocName, const CString & strObjName, const CString & strMethodName, const long nMetIdx )
    {
        return FindItemMethodByName( FindItemObjectByName( strDocName, strObjName ), strMethodName, nMetIdx );
    }
    
    virtual HTREEITEM FindItemMethodByName( const HTREEITEM hObjItem, const CString & strMethodName, const long nMetIdx );

    virtual void Copy();
	virtual bool CanEditCopy();
	virtual void Paste();
	virtual bool CanEditPaste();

protected:

    BOOL _IsItemInTree( const HTREEITEM hItem, const HTREEITEM hParentItem = TVI_ROOT ) const;
    
    HTREEITEM _FindItemMatchData(const DWORD dwData, const HTREEITEM hParentItem = TVI_ROOT) const;
    CScriptMethod *_GetCurSelMet();
    CScriptObject *_GetCurSelObj();
    CScriptDoc *_GetCurSelDoc();

    void _ShowDragCursor();

    CImageList      m_imgImageList;

    CPoint          m_ptLastMousePos;

    bool            m_IsDragging;
    list< HTREEITEM >      m_aryDraggingItems;
    list< HTREEITEM >      m_aryCopyingItems;
    HTREEITEM       m_hTargetItem;

    // Generated message map functions
protected:
    //{{AFX_MSG(CFileTreeCtrl)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
    afx_msg void OnBegindrag(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnMouseMove(UINT nFlags, CPoint point);
    afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnRclick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnScriptDelete();
	afx_msg void OnUpdateScriptDelete(CCmdUI* pCmdUI);
	afx_msg void OnScriptDuplicate();
	afx_msg void OnUpdateScriptDuplicate(CCmdUI* pCmdUI);
	afx_msg void OnScriptNew();
	afx_msg void OnUpdateScriptNew(CCmdUI* pCmdUI);
	afx_msg void OnScriptProperties();
	afx_msg void OnUpdateScriptProperties(CCmdUI* pCmdUI);
	afx_msg void OnScriptdocSaveSelectedScript();
	afx_msg void OnUpdateScriptdocSaveSelectedScript(CCmdUI* pCmdUI);
	afx_msg void OnScriptmethodInvokeMethod();
	afx_msg void OnUpdateScriptmethodInvokeMethod(CCmdUI* pCmdUI);
	afx_msg void OnScriptobjectCall();
	afx_msg void OnUpdateScriptobjectCall(CCmdUI* pCmdUI);
	afx_msg void OnScriptobjectShow();
	afx_msg void OnUpdateScriptobjectShow(CCmdUI* pCmdUI);
	afx_msg void OnScriptObjectResetAndInvokeAll();
	afx_msg void OnUpdateScriptObjectResetAndInvokeAll(CCmdUI* pCmdUI);
	//}}AFX_MSG

    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILETREECTRL_H__594989AA_4D20_4AD3_A1CC_7031AAADB1BE__INCLUDED_)

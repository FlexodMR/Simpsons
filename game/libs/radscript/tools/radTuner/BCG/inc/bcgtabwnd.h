//*******************************************************************************
// COPYRIGHT NOTES
// ---------------
// This is a part of the BCGControlBar Library
// Copyright (C) 1998-2000 BCGSoft Ltd.
// All rights reserved.
//
// This source code can be used, distributed or modified
// only under terms and conditions 
// of the accompanying license agreement.
//*******************************************************************************

#if !defined(AFX_BCGTABWND_H__10E15955_436E_11D2_8BEB_00A0C9B05590__INCLUDED_)
#define AFX_BCGTABWND_H__10E15955_436E_11D2_8BEB_00A0C9B05590__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// bcgtabwnd.h : header file
//

#ifndef BCG_NO_TABCTRL

#include "bcgcontrolbar.h"

/////////////////////////////////////////////////////////////////////////////
// CBCGTabWnd window

class CBCGTabInfo;

class BCGCONTROLBARDLLEXPORT CBCGTabWnd : public CWnd
{
	friend class CBCGMainClientAreaWnd;

	DECLARE_DYNCREATE(CBCGTabWnd)

// Construction
public:
	CBCGTabWnd();

	enum Style
	{
		STYLE_3D = 0,
		STYLE_FLAT = 1,
		STYLE_FLAT_SHARED_HORZ_SCROLL = 2,
	};

	enum Location
	{
		LOCATION_BOTTOM = 0,
		LOCATION_TOP = 1
	};

// Operations
public:
	// Create methods:
	BOOL Create (Style style, const RECT& rect, CWnd* pParentWnd, UINT nID,
				Location location = LOCATION_BOTTOM);
	BOOL SetImageList (UINT uiID, int cx = 15, 
		COLORREF clrTransp = RGB (255, 0, 255));
	BOOL SetImageList (HIMAGELIST hImageList);

	void RecalcLayout ();

	// Tab access methods:
	void AddTab (CWnd* pTabWnd, LPCTSTR lpszTabLabel, UINT uiImageId = (UINT)-1);
	void AddTab (CWnd* pTabWnd, UINT uiResTabLabel, UINT uiImageId = (UINT)-1);

	void InsertTab (CWnd* pNewWnd, LPCTSTR lpszTabLabel, int nInsertAt, UINT uiImageId = (UINT)-1);
	void InsertTab (CWnd* pNewWnd, UINT uiResTabLabel, int nInsertAt, UINT uiImageId = (UINT)-1);

	int GetTabsNum () const
	{
		return m_iTabsNum;
	}

	BOOL RemoveTab (int iTab);
	void RemoveAllTabs ();

	// Tab properties:
	CWnd* GetTabWnd (int iTab) const;
	BOOL GetTabRect (int iTab, CRect& rect) const;

	BOOL GetTabLabel (int iTab, CString& strLabel) const;
	BOOL SetTabLabel (int iTab, const CString& strLabel);

	UINT GetTabIcon (int iTab) const;
	BOOL SetTabIcon (int iTab, UINT uiIcon);

	// Tab activation:
	int GetActiveTab () const
	{
		return m_iActiveTab;
	}

	CWnd* GetActiveWnd () const;
	BOOL SetActiveTab (int iTab);

	int GetTabFromPoint (CPoint& pt) const;
	int GetTabFromHwnd (HWND hwnd) const;

	BOOL EnsureVisible (int iTab);

	// Active tab color operations:
	void SetActiveTabColor (COLORREF clr);
	void SetActiveTabTextColor (COLORREF clr);

	COLORREF GetActiveTabColor () const
	{
		return m_clrActiveTabBk == (COLORREF) -1 ?
			::GetSysColor (COLOR_WINDOW) : m_clrActiveTabBk;
	}

	COLORREF GetActiveTabTextColor () const
	{
		return m_clrActiveTabFg == (COLORREF) -1 ?
			::GetSysColor (COLOR_WINDOWTEXT) : m_clrActiveTabFg;
	}

	// Scrolling methods:
	BOOL SynchronizeScrollBar (SCROLLINFO* pScrollInfo = NULL);
	CScrollBar* GetScrollBar ()
	{
		return m_bSharedScroll ? &m_wndScrollWnd : NULL;
	}

	void HideActiveWindowHorzScrollBar ();

protected:
	CWnd* FindTargetWnd (const CPoint& pt);

	void AdjustTabs ();
	void AdjustTabsScroll ();
	void AdjustWndScroll ();

	void RelayEvent(UINT message, WPARAM wParam, LPARAM lParam);
	void SetTabsHeight ();

// Attributes
public:
	void SetFlatFrame (BOOL bFlat = TRUE, BOOL bRepaint = TRUE)
	{
		if (m_bFlatFrame != bFlat)
		{
			m_bFlatFrame = bFlat;

			if (bRepaint && GetSafeHwnd () != NULL)
			{
				Invalidate ();
				UpdateWindow ();
			}
		}
	}

	BOOL IsFlatFrame () const
	{
		return m_bFlatFrame;
	}

	void SetTabBorderSize (int nTabBorderSize, BOOL bRepaint = TRUE)
	{
		if (m_nTabBorderSize != nTabBorderSize)
		{
			m_nTabBorderSize = nTabBorderSize;

			if (bRepaint && GetSafeHwnd () != NULL)
			{
				Invalidate ();
				UpdateWindow ();
			}
		}
	}

	int GetTabBorderSize () const
	{
		return m_nTabBorderSize;
	}

	void HideInactiveWindow (BOOL bHide = TRUE)
	{
		m_bHideInactiveWnd = bHide;
	}

	void AutoSizeWindow (BOOL bAutoSize = TRUE)
	{
		m_bAutoSizeWindow = bAutoSize;
	}

	void AutoDestroyWindow (BOOL bAutoDestroy = TRUE)
	{
		m_bAutoDestoyWindow = bAutoDestroy;
	}

	void GetWndArea (CRect& rect) const
	{
		rect = m_rectWndArea;
	}

	void GetTabsRect (CRect& rect) const
	{
		rect = m_rectTabsArea;
	}

	BOOL IsFlatTab () const
	{
		return m_bFlat;
	}

	BOOL IsSharedScroll () const
	{
		return m_bSharedScroll;
	}

	Location GetLocation () const
	{
		return m_location;
	}

	int GetTabsHeight () const
	{
		return m_nTabsHeight;
	}

	CSize GetImageSize () const
	{
		return m_sizeImage;
	}

	const CImageList* GetImageList () const
	{
		return (m_Images.GetSafeHandle () != NULL) ?
				&m_Images : 
				m_hImageList != NULL ? 
					CImageList::FromHandle (m_hImageList) : 
					NULL;
	}

protected:
	BOOL			m_bFlat;			// Is flat (Excell-like) mode
	BOOL			m_bSharedScroll;	// Have a scrollbar shared with active window
	Location		m_location;			// Tabs location

	CPtrArray		m_arTabs;			// Array of CBCGTabInfo objects
	int				m_iTabsNum;			// m_arTabs size
	int				m_iActiveTab;		// Active tab number

	int				m_nScrollBarRight;	// Scrollbar right side
	CRect			m_rectTabsArea;		// Tabs area
	CRect			m_rectWndArea;		// Child window area

	int				m_nTabsHeight;		// Tabs area height

	CImageList		m_Images;			// Tab images (for 3d tabs only)
	HIMAGELIST		m_hImageList;		// External tab images
	CSize			m_sizeImage;		// Tab image size

	CToolTipCtrl	m_ToolTip;			// Tab tooltip (for 3d tabs only)
	CScrollBar		m_wndScrollTabs;	// Tabs <-left, ritgh-> arrows
	CScrollBar		m_wndScrollWnd;		// Active window horizontal scroll bar

	int				m_nTabsHorzOffset;
	int				m_nTabsHorzOffsetMax;
	int				m_nTabsTotalWidth;

	int				m_nHorzScrollWidth;	// Shared scrollbar width
	CRect			m_rectTabSplitter;	// Splitter between tabs and scrollbar
	BOOL			m_bTrackSplitter;	// Is splitter tracked?

	COLORREF		m_clrActiveTabBk;	// Active tab backgound color
	COLORREF		m_clrActiveTabFg;	// Active tab foreground color

	CBrush			m_brActiveTab;		// Active tab background brush

	CFont			m_fntTabs;			// Tab font (flat tabs only)
	CFont			m_fntTabsBold;		// Active tab font (flat tabs only)

	BOOL			m_bFlatFrame;		// Is frame flat?
	int				m_nTabBorderSize;

	BOOL			m_bHideInactiveWnd;	// Is inactive window should be invisible?
	BOOL			m_bAutoSizeWindow;	// Auto-resize tab widnows
	BOOL			m_bAutoDestoyWindow;// Auto-destroy tab windows

	BOOL			m_bTransparent;
	BOOL			m_bTopEdge;

	int				m_iCurTab;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBCGTabWnd)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	//}}AFX_VIRTUAL
	virtual BOOL OnNotify(WPARAM, LPARAM lParam, LRESULT* pResult);
	
	virtual void Draw3DTab (CDC* pDC, CBCGTabInfo* pTab, BOOL bActive);
	virtual void DrawFlatTab (CDC* pDC, CBCGTabInfo* pTab, BOOL bActive);

// Implementation
public:
	virtual ~CBCGTabWnd();

	// Generated message map functions
protected:
	//{{AFX_MSG(CBCGTabWnd)
	afx_msg void OnDestroy();
	afx_msg void OnPaint();
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
	afx_msg void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
	afx_msg BOOL OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnCancelMode();
	afx_msg void OnSysColorChange();
	afx_msg void OnSettingChange(UINT uFlags, LPCTSTR lpszSection);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//////////////////////////////////////////////////////////////////////////////
// CBCGTabWnd notification messages:

extern BCGCONTROLBARDLLEXPORT UINT BCGM_CHANGE_ACTIVE_TAB;
extern BCGCONTROLBARDLLEXPORT UINT BCGM_ON_HSCROLL;

#endif // BCG_NO_TABCTRL

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BCGTABWND_H__10E15955_436E_11D2_8BEB_00A0C9B05590__INCLUDED_)

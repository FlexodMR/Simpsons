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

// BCGVisualManager.h: interface for the CBCGVisualManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BCGVISUALMANAGER_H__22769E42_AB66_11D4_95C7_00A0C9289F1B__INCLUDED_)
#define AFX_BCGVISUALMANAGER_H__22769E42_AB66_11D4_95C7_00A0C9289F1B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "bcgcontrolbar.h"

class CBCGPopupMenu;
class CBCGToolbarButton;
class CBCGToolbarMenuButton;
class CBCGSCBButton;
class CBCGTabWnd;

class BCGCONTROLBARDLLEXPORT CBCGVisualManager : public CObject
{
	DECLARE_DYNAMIC(CBCGVisualManager)

public:
	CBCGVisualManager();
	virtual ~CBCGVisualManager();

// Operations:
public:
	static void RedrawAll ();

// Overrides:
public:
	virtual void OnUpdateSystemColors () {};

	virtual void OnFillBarBackground (CDC* pDC, CControlBar* pBar,
									CRect rectClient, CRect rectClip,
									BOOL bNCArea = FALSE);
	virtual void OnDrawBarBorder (CDC* pDC, CControlBar* pBar, CRect& rect);
	virtual void OnDrawMenuBorder (CDC* pDC, CBCGPopupMenu* pMenu, CRect rect);
	virtual void OnDrawBarGripper (CDC* pDC, CRect rectGripper, BOOL bHorz, CControlBar* pBar);
	virtual void OnDrawSeparator (CDC* pDC, CControlBar* pBar, CRect rect, BOOL bIsHoriz);
	virtual void OnDrawCaptionButton (CDC* pDC, CBCGSCBButton* pButton, BOOL bHorz, BOOL bMaximized, BOOL bDisabled);

	enum BCGBUTTON_STATE
	{
		ButtonsIsRegular,
		ButtonsIsPressed,
		ButtonsIsHighlighted,
	};

	virtual void OnFillButtonInterior (CDC* pDC,
		CBCGToolbarButton* pButton, CRect rect, CBCGVisualManager::BCGBUTTON_STATE state);

	virtual void OnDrawButtonBorder (CDC* pDC,
		CBCGToolbarButton* pButton, CRect rect, CBCGVisualManager::BCGBUTTON_STATE state);

	virtual void OnHighlightMenuItem (CDC *pDC, CBCGToolbarMenuButton* pButton,
		CRect rect, COLORREF& clrText);

	// Tab overrides:
	virtual void OnEraseTabsArea (CDC* pDC, CRect rect, const CBCGTabWnd* pTabWnd);
	virtual void OnDrawTab (CDC* pDC, CRect rectTab,
							int iTab, BOOL bIsActive, const CBCGTabWnd* pTabWnd);

// Attributes:
public:

	void SetMenuShadowDepth (int nDepth)	// Pixels
	{
		m_nMenuShadowDepth = nDepth;
	}

	int GetMenuShadowDepth () const
	{
		return m_nMenuShadowDepth;
	}
	
	static CBCGVisualManager* GetInstance ()
	{
		if (m_pVisManager != NULL)
		{
			ASSERT_VALID (m_pVisManager);
			return m_pVisManager;
		}

		m_pVisManager = new CBCGVisualManager;
		m_pVisManager->m_bAutoDestroy = TRUE;

		return m_pVisManager;
	}

	BOOL IsLook2000 () const			{	return m_bLook2000; }
	void SetLook2000 (BOOL bLook2000 = TRUE);

	BOOL IsMenuFlatLook () const			{	return m_bMenuFlatLook; }
	void SetMenuFlatLook (BOOL bMenuFlatLook = TRUE)
	{
		m_bMenuFlatLook = bMenuFlatLook;
		RedrawAll ();
	}

	BOOL IsAutoDestroy () const
	{
		return m_bAutoDestroy;
	}

	void SetShadowHighlightedImage (BOOL bShadow = TRUE)
	{
		m_bShadowHighlightedImage = bShadow;
	}

	BOOL IsShadowHighlightedImage () const
	{
		return m_bShadowHighlightedImage;
	}

protected:
	static CBCGVisualManager* m_pVisManager;

	BOOL	m_bLook2000;				// Single grippers
	int		m_nMenuShadowDepth;
	BOOL	m_bMenuFlatLook;			// Menu item is always stil unpressed
	BOOL	m_bShadowHighlightedImage;

private:
	BOOL	m_bAutoDestroy;
};

#endif // !defined(AFX_BCGVISUALMANAGER_H__22769E42_AB66_11D4_95C7_00A0C9289F1B__INCLUDED_)

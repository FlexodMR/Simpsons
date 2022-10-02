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
// BCGDrawManager.h: interface for the CBCGDrawManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BCGDRAWMANAGER_H__56EC7162_B29E_11D4_95C8_00A0C9289F1B__INCLUDED_)
#define AFX_BCGDRAWMANAGER_H__56EC7162_B29E_11D4_95C8_00A0C9289F1B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "bcgcontrolbar.h"

class BCGCONTROLBARDLLEXPORT CBCGDrawManager : public CObject
{
public:
	CBCGDrawManager(CDC& dc);
	virtual ~CBCGDrawManager();

// Operatioins:
	BOOL DrawShadow (CRect rect,					// Shadow will be draw around this rect
					int nDepth,						// Shadow depth (pixels)
					int iMinBrightness = 100,		// Min. brighttness
					int iMaxBrightness = 50,		// Max. beightness
					CBitmap* pBmpSaveBottom = NULL,	// Bitmap may be saved in 
					CBitmap* pBmpSaveRight = NULL);	// two bitmaps

	BOOL HighlightRect (CRect rect,					// Rectangle to be highlighted
						int nPercentage = -1,		// < 100 - darker, > 100 - lighter, -1 - default light
						COLORREF clrTransparent =	// Don't change this color
							(COLORREF)-1);

	void FillGradient (CRect rect, COLORREF colorStart, COLORREF colorFinish, BOOL bHorz = TRUE);


// Helpers:
	static COLORREF PixelAlpha (COLORREF srcPixel, int percent);
	static COLORREF PixelAlpha (COLORREF srcPixel, double percentR, double percentG, double percentB);
	static COLORREF PixelAlpha (COLORREF srcPixel, COLORREF dstPixel, int percent);
	static void SetAlphaPixel (COLORREF* pBits, CRect rect, int x, int y, int percent, int iShadowSize);

// Attributes:
protected:
	CDC&	m_dc;
};

#endif // !defined(AFX_BCGDRAWMANAGER_H__56EC7162_B29E_11D4_95C8_00A0C9289F1B__INCLUDED_)

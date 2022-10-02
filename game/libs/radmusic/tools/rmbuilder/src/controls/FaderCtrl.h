#if !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
#define AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// FaderCtrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CFaderCtrl window

#define FDN_POSCHANGED 1

struct FADER_NMHDR {
  HWND hwndFrom; 
  UINT idFrom; 
  UINT code;
  float position;
};

enum FADERCOLOR { FC_WHITE, FC_YELLOW, FC_GREEN , FC_RED, FC_BLUE, FC_PURPLE };

class CFaderCtrl : public CWnd
{
// Construction
public:
	CFaderCtrl();
  BOOL Create(CString & name, CWnd * pParent, UINT id, CPoint & pos);

  void SetRange(float min, float max);
  void SetPos(float pos);
  float GetPos();
  void SetColor(FADERCOLOR fc);

private:
	void GetFaderRect(CRect * pRect);
  void CalculateUserPos();

	int m_position;
    FADER_NMHDR m_nmhdr;
    float m_userMax;
    float m_userMin; 
    CPoint m_prevPos;
    FADERCOLOR m_color;
    CString m_Name;
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFaderCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CFaderCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CFaderCtrl)
	afx_msg void OnPaint();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)

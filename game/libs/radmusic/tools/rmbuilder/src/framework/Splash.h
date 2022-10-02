#ifndef ATG_SPLASH_H
#define ATG_SPLASH_H

class CSplashWnd : public CWnd
{

public:
	static void EnableSplashScreen(BOOL bEnable = TRUE);
	static void ShowSplashScreen(CWnd* pParentWnd = NULL);
	static BOOL PreTranslateAppMessage(MSG* pMsg);
	~CSplashWnd();
	virtual void PostNcDestroy();	
	
protected:
	CSplashWnd();
	CBitmap m_bitmap;	

	BOOL Create(CWnd* pParentWnd = NULL);
	void HideSplashScreen();
	static BOOL c_bShowSplashWnd;
	static CSplashWnd* c_pSplashWnd;

    // messages
    
	int OnCreate(LPCREATESTRUCT lpCreateStruct);
	void OnPaint();
	void OnTimer(UINT nIDEvent);

	DECLARE_MESSAGE_MAP()
};


#endif

#ifndef ATG_LOGWND_H
#define ATG_LOGWND_H

#include <plugin/plugin.h>

class CLogWnd: public CWnd
{
    public:
	    CLogWnd( string_id id);
	    virtual ~CLogWnd();
	    void AddText( const char * pText );

    protected:

	    virtual BOOL PreCreateWindow(CREATESTRUCT& cs);

        int OnCreate(LPCREATESTRUCT lpCreateStruct);
        void OnSize(UINT nType, int cx, int cy);
        HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
        void OnDestroy( void );	

    private:
	    CEdit         m_wndEdit_Messages;
	    CBrush        m_BkgBrush;
        
	    DECLARE_MESSAGE_MAP()
	    
	    string_id id;
};

#endif
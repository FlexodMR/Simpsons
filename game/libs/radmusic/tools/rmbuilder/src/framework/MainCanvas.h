
#ifndef MAIN_CANVAS_HPP
#define MAIN_CNAVAS_HPP

class CMainCanvas : public CScrollView
{
    public:
        
        CMainCanvas( );
        virtual ~CMainCanvas( );
        
        BOOL OnCreate( LPCREATESTRUCT lpcs );
        void OnDestroy( );
        virtual void OnDraw( CDC * pCDC );
        
        DECLARE_MESSAGE_MAP()
        afx_msg BOOL OnEraseBkgnd(CDC* pDC);
        afx_msg void OnNcDestroy();
        virtual BOOL OnScroll(UINT nScrollCode, UINT nPos, BOOL bDoScroll = TRUE);
};

#endif
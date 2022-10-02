
#ifndef FILETREECTRL_HPP
#define FILETREECTRL_HPP

class CFileTreeCtrl : public CTreeCtrl
{
    public:
    
        DECLARE_DYNCREATE( CFileTreeCtrl );
        DECLARE_MESSAGE_MAP( );
                
        CFileTreeCtrl( ) { }
        virtual ~CFileTreeCtrl( ) { }
        
        BOOL Create(LPCTSTR lpszClassName,
	        LPCTSTR lpszWindowName, DWORD dwStyle,
	        const RECT& rect,
	        CWnd* pParentWnd, UINT nID,
	        CCreateContext* pContext);    

};

#endif
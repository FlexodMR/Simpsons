#ifndef FILELISTWND_HPP
#define FILELISTWND_HPP

class CFileListWnd : public CListCtrl
{
    public:
        
        CFileListWnd( void ) { }
        virtual ~CFileListWnd( void ) { }
        
        DECLARE_DYNCREATE( CFileListWnd );
        
        BOOL Create(LPCTSTR lpszClassName,
	        LPCTSTR lpszWindowName, DWORD dwStyle,
	        const RECT& rect,
	        CWnd* pParentWnd, UINT nID,
	        CCreateContext* pContext);          
};

#endif
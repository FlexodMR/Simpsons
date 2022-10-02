#ifndef FILESPLITTERWND_HPP
#define FILESPLITTERWND_HPP

class CFileSplitterWnd : public CSplitterWnd
{
    public:
    
        CFileSplitterWnd( ) { }
        virtual ~CFileSplitterWnd( ) { }
        virtual BOOL OnNotify( WPARAM wParam, LPARAM lParam, LRESULT* pResult );
};

#endif 
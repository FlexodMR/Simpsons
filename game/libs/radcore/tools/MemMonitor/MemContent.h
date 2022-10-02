#if !defined(AFX_MEMCONTENT_H__C27C54DB_2B45_49B1_9F21_B36E36D0B9BA__INCLUDED_)
#define AFX_MEMCONTENT_H__C27C54DB_2B45_49B1_9F21_B36E36D0B9BA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemContent.h : header file
//
class CMemContentData128
{
public:
    CMemContentData128( const char * pData )
    {
        m_pData = NULL;
        if ( pData != NULL )
        {
            m_pData = new char[ 128 ];
            memcpy( m_pData, pData, 128 );
        }
    }

    CMemContentData128( const CMemContentData128 & rhs )
    {
        m_pData = NULL;
        if ( rhs.m_pData != NULL )
        {
            m_pData = new char[ 128 ];
            memcpy( m_pData, rhs.m_pData, 128 );
        }
    }

    operator = ( const CMemContentData128 & rhs )
    {
        if ( m_pData != NULL )
        {
            delete m_pData;
            m_pData = NULL;
        }
        if ( rhs.m_pData != NULL )
        {
            m_pData = new char[ 128 ];
            memcpy( m_pData, rhs.m_pData, 128 );
        }
    }

    ~CMemContentData128( )
    {
        delete m_pData;
    }

    const char * GetData( ) const
    {
        return m_pData;
    }

    void SetData( const char * pData )
    {
        delete m_pData;
        m_pData = NULL;
        m_pData = new char[ 128 ];
        memcpy( m_pData, pData, 128 );
    }
private:
    char * m_pData;
};

/////////////////////////////////////////////////////////////////////////////
// CMemContent document
class CMemContent;
typedef TRef< CMemContent > CMemContentPtr;

class CMemContent :
    public CDocument,
    public CSubject,
    public CObserver,
    public CMFCRefCount
{

    DECLARE_DYNCREATE( CMemContent )

protected:

    CMemContent( );           // protected constructor used by dynamic creation
    virtual ~CMemContent( );

// Attributes
public:
    // upper 32 bits of __int64 is the MM_ClientMemorySpace, lower 32 bits are address
    typedef map< __int64, CMemContentData128 >  DataContentList;

    void Initialize( );

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    void RequestData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize );

    void AddData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize, const char * pData );

    bool GetByteData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, char * pData );

    void ClearData( );

#ifdef _DEBUG
    void AssertValid() const;
    void Dump(CDumpContext& dc) const;
#endif //_DEBUG

protected:

    bool ProcessMemRawData( const MM_DataPacketBlock & pData );

// Operations
private:

    DataContentList         m_aryDataContentList;
};

#endif // !defined(AFX_MEMCONTENT_H__C27C54DB_2B45_49B1_9F21_B36E36D0B9BA__INCLUDED_)

// Observer.h: interface for the CObserver class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_OBSERVER_H__FCEE91AE_2582_4644_BC51_50346C5588D9__INCLUDED_)
#define AFX_OBSERVER_H__FCEE91AE_2582_4644_BC51_50346C5588D9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <assert.h>

#include <set>
using namespace std;

class CObserver;
class CSubject;

enum SubjectObserverState
{
    SSC_GOLBAL_ATTACHED = 1,
    SSC_GOLBAL_DETACHED,

    SSC_GOLBAL_USER = 0x00001000,
};

//===========================================================================
//
// Description: Observer/Subject pattern provides lossly coupled object relation
//
// Constraints: 
//===========================================================================
class CSubject
{

protected:

    typedef set< CObserver * > ObserverArray;

    virtual ~CSubject() = 0 {};

public:

    void Attach( CObserver * pObserver );

    void Detach( CObserver * pObserver );

    bool Notify( int nState, int nHints = 0, void * pUserData = NULL ) const;

private:

    mutable ObserverArray        m_aryObserverPtr;  // weak link to the observer object
                                                    // this hack allow const modifier on Notify( )

};

//===========================================================================
//
// Description: Observer/Subject pattern provides lossly coupled object relation
//
// Constraints: 
//===========================================================================
class CObserver  
{

protected:

    virtual ~CObserver() = 0 {};

public:

    //
    // If subject state change message is processed by Observer, then return true,
    // other wise return false.
    //
    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL ) = 0
    {
        return false;
    }

};

//===========================================================================
// CSubject::Attach
//===========================================================================
inline void CSubject::Attach( CObserver * pObserver )
{
    assert( pObserver );
    m_aryObserverPtr.insert( pObserver );
}

//===========================================================================
// CSubject::Detach
//===========================================================================
inline void CSubject::Detach( CObserver * pObserver )
{
    assert( pObserver );
    m_aryObserverPtr.erase( pObserver );
}

//===========================================================================
// CSubject::Notify
//===========================================================================
inline bool CSubject::Notify( int nState, int nHints, void * pUserData ) const
{
    ObserverArray::iterator i;

    unsigned int nProcessCount = 0;

    for ( i = m_aryObserverPtr.begin( ); i != m_aryObserverPtr.end( ); i ++ )
    {
        assert( *i );

        nProcessCount += ( ( *i )->OnSubjectStateChange( nState, nHints, pUserData ) == true ) ? 1 : 0;
    }

    if ( ( m_aryObserverPtr.begin( ) != m_aryObserverPtr.end( ) ) && ( nProcessCount == 0 ) )
    {
        //::AfxTrace( "Notify( %d, %d, %d ) was not processed, it has [%d] observer.\n", nState, nHints, pUserData, m_aryObserverPtr.size( ) );
    }

    return  nProcessCount > 0;
}

#endif // !defined(AFX_OBSERVER_H__FCEE91AE_2582_4644_BC51_50346C5588D9__INCLUDED_)

// EncoderWrapperView.h: interface for the CEncoderWrapperView class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_ENCODERWRAPPERVIEW_H__B79DF2BF_1813_4B74_9942_23E202B9D0C4__INCLUDED_)
#define AFX_ENCODERWRAPPERVIEW_H__B79DF2BF_1813_4B74_9942_23E202B9D0C4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <raddebug.hpp>
#include <radobject.hpp>
#include <rcfEncoder.hpp>

// Prototypes
class CWincementerView;

//
// A class that receives callbacks from the encoder
// an passes them to the view
//
class CEncoderWrapperView : public IRadRCFEncoderFileUpdateCallback,
                            public IRadRCFErrorCallback,
                            public IRadRCFActivityProcessingCallback
{
public:
	CEncoderWrapperView();
	virtual ~CEncoderWrapperView();

    virtual void AddRef( );
    virtual void Release( );

    virtual void SetView( CWincementerView* pView );
    
    //
    // IRadRCFEncoderFileUpdateCallback
    //
    virtual void OnRCFEncoderFileUpdate
    (
        bool dataChangeOnly,
        void* pUserData
    );

    //
    // IRadRCFErrorCallback
    //
    virtual void OnRCFEncoderError
    (
        void* pUserData,
        RCFErrorCode code,
        const char* message
    );

    //
    // IRadRCFActivityProcessingCallback
    //
    virtual void OnActivityProcess
    (
        IRadRCFActivity* pActivity,
        void* pUserData
    );

private:
    unsigned int m_RefCount;
    CWincementerView* m_pView;
};

//
// Factory function
//
void CEncoderWrapperViewCreate
(
    CEncoderWrapperView** ppEncoderWrapper,
    radMemoryAllocator allocator
);

#endif // !defined(AFX_ENCODERWRAPPERVIEW_H__B79DF2BF_1813_4B74_9942_23E202B9D0C4__INCLUDED_)

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCMASYNCREQUEST_HPP
#define ADPCMASYNCREQUEST_HPP

class radSoundHalBufferAsyncRequestAdpcmPs2
	:
	public IRefCount
{
	public:

		static void Service( void );
        static bool RequestQueueEmpty( void ) { return s_pRequestHead == 0 ; }
        static void CancelAllRequests( IRefCount * pIRefCount_Owner);

        virtual void AddRef( void ) { m_RefCount++; }
        virtual void Release( void ) { m_RefCount--; if ( m_RefCount == 0 ) { delete this; } }

	protected:

		radSoundHalBufferAsyncRequestAdpcmPs2( IRefCount * pIRefCount_Parent );
		virtual ~radSoundHalBufferAsyncRequestAdpcmPs2( void );

		virtual void BeginRequest( void ) = 0;
		virtual bool ServiceRequest( void ) = 0;
		virtual void EndRequest( void ) = 0;

        virtual void CancelRequest( void ) = 0;

		void Initialize( void );

	private:

        //
        // Maintain a linked list of these objects to serialize processing of them. List 
        // is not reference counted.
        //

        static radSoundHalBufferAsyncRequestAdpcmPs2 * s_pRequestHead;
        radSoundHalBufferAsyncRequestAdpcmPs2 * m_pNext;

		ref< IRefCount > m_xIRefCount_Parent;
        int m_RefCount;	
};

#endif // ADPCMASYNCREQUEST_HPP
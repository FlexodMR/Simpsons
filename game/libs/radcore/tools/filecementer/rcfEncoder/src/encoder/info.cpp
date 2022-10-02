//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        info.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of general info
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 26, 2001    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <io.h>
#include <sys/stat.h> 

#include <radobject.hpp>
#include <radobjectlist.hpp>
#include <rcfEncoder.hpp>

#include "info.hpp"

//=============================================================================
// Local class definitions
//=============================================================================

//
// Activity info
//
class radRCFInfo : public IRadRCFInfo,
                   public radObject
{
public:
    IMPLEMENT_BASEOBJECT( "radRCFInfo" );

    // Constructor
    radRCFInfo( )
        :
        m_VerboseLevel( VerboseNormal )
    {
        ::radObjectListCreate( &m_xIOl_PendingActivities, GetThisAllocator( ) );

        ::radObjectListCreate( &m_xIRadObjectList_ActivityProcessing, GetThisAllocator( ) );
        ::radObjectListCreate( &m_xIRadObjectList_ErrorCallbacks, GetThisAllocator( ) );
    }

    // Destructor
    ~radRCFInfo( )
    {
        m_xIOl_PendingActivities = NULL;

        rAssert( m_xIRadObjectList_ActivityProcessing->GetSize( ) == 0 );
        m_xIRadObjectList_ActivityProcessing = NULL;

        rAssert( m_xIRadObjectList_ErrorCallbacks->GetSize( ) == 0 );
        m_xIRadObjectList_ErrorCallbacks = NULL;
    }
    
    //
    // Define the verbose level
    //
    virtual void SetVerboseLevel
    (
        VerboseLevel level
    )
    {
        m_VerboseLevel = level;
    }
    virtual VerboseLevel GetVerboseLevel( void )
    {
        return m_VerboseLevel;
    }
    
    //
    // Error handlers
    //
    virtual void RegisterErrorCallback
    (
        IRadRCFErrorCallback* pCallback,
        void* pUserData
    )
    {
        ::radWeakCallbackRegister
        (
            m_xIRadObjectList_ErrorCallbacks,
            GetThisAllocator( ),
            pCallback,
            pUserData
        );
    }

    virtual void UnregisterErrorCallback
    (
        IRadRCFErrorCallback* pCallback,
        void* pUserData
    )
    {
        ::radWeakCallbackUnregister
        (
            m_xIRadObjectList_ErrorCallbacks,
            pCallback,
            pUserData
        );
    }

    //
    // Invoke an error
    //
    virtual void InvokeMessage
    (
        RCFErrorCode err,
        const char* message,
        ...
    )
    {
        // Verify that we should display this message
        switch( m_VerboseLevel )
        {
        case VerboseWarning:
            if( err > RCF_WARNING )
            {
                return;
            }
        case VerboseQuiet:
            // Always to errors
        case VerboseError:
            if( err > RCF_ERROR )
            {
                return;
            }
        case VerboseNormal:
        default:
            break;
        }

        ref< IRadWeakCallbackWrapper > xIWcw;
        
        m_xIRadObjectList_ErrorCallbacks->Reset( );
        xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_ErrorCallbacks->GetNext( );
    
        while( xIWcw != NULL )
        {
            IRadRCFErrorCallback* pCallback =
                reinterpret_cast< IRadRCFErrorCallback* >
                (
                    xIWcw->GetWeakInterface()
                );

            rAssert( pCallback != NULL );

            va_list args;
            va_start( args, message );
            char buf[ 256 ];
            vsprintf( buf, message, args );

            pCallback->OnRCFEncoderError( xIWcw->GetUserData( ), err, buf );

            xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_ErrorCallbacks->GetNext( );
        }
    }

    //
    // Register an activity processing callback
    //
    virtual void RegisterActivityProcessingCallback
    (
        IRadRCFActivityProcessingCallback* pCallback,
        void* pUserData
    )
    {
        ::radWeakCallbackRegister
        (
            m_xIRadObjectList_ActivityProcessing,
            GetThisAllocator( ),
            pCallback,
            pUserData
        );
    }
    
    //
    // Unregister an activity processing callback
    //
    virtual void UnregisterActivityProcessingCallback
    (
        IRadRCFActivityProcessingCallback* pCallback,
        void* pUserData
    )
    {
        ::radWeakCallbackUnregister
        (
            m_xIRadObjectList_ActivityProcessing,
            pCallback,
            pUserData
        );
    }

    //
    // Append an activity to the activity list
    //
    virtual void AppendActivity
    (
        IRadRCFActivity* pActivity,
        bool front
    )
    {
        if( !front )
        {
            m_xIOl_PendingActivities->AddObject( pActivity );
        }
        else
        {
            IRadObjectList* pNewList = NULL;
            ::radObjectListCreate( &pNewList, GetThisAllocator( ) );

            pNewList->AddObject( pActivity );

            for
            (
                unsigned int i = 0;
                i < m_xIOl_PendingActivities->GetSize( );
                i++
            )
            {
                pNewList->AddObject( m_xIOl_PendingActivities->GetAt( i ) );
            }

            m_xIOl_PendingActivities = NULL;
            m_xIOl_PendingActivities = pNewList;

            pNewList->Release( );
        }
    }

    //
    // Get the number of activities
    //
    virtual unsigned int GetNumActivities( void )
    {
        return m_xIOl_PendingActivities->GetSize( );
    }

    //
    // Launch the activities
    //
    virtual void LaunchActivities( IRadRCFEncoder* pEncoder )
    {
        //
        // Run the activities
        //
        while( m_xIOl_PendingActivities->GetSize( ) > 0 )
        {
            //
            // Get an activity
            //
            IRadRCFActivity* pActivity = reinterpret_cast< IRadRCFActivity* >
            (
                m_xIOl_PendingActivities->GetAt( 0 )
            );
            pActivity->AddRef( );

            //
            // Call all activity callbacks
            //
            ref< IRadWeakCallbackWrapper > xIWcw;
    
            m_xIRadObjectList_ActivityProcessing->Reset( );
            xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_ActivityProcessing->GetNext( );

            while( xIWcw != NULL )
            {
                IRadRCFActivityProcessingCallback* pCallback =
                    reinterpret_cast< IRadRCFActivityProcessingCallback* >
                    (
                        xIWcw->GetWeakInterface()
                    );

                rAssert( pCallback != NULL );

                pCallback->OnActivityProcess( pActivity, xIWcw->GetUserData( ) );

                xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_ActivityProcessing->GetNext( );
            }

            //
            // Process the activity
            //
            pActivity->DoActivity( pEncoder );

            // Clean up
            m_xIOl_PendingActivities->RemoveObject( pActivity );
            pActivity->Release( );
        }

        // Update the file data
        pEncoder->UpdateFileData( NULL );
    }

private:

    VerboseLevel m_VerboseLevel;

    ref< IRadObjectList > m_xIOl_PendingActivities;

    ref< IRadObjectList > m_xIRadObjectList_ActivityProcessing;
    ref< IRadObjectList > m_xIRadObjectList_ErrorCallbacks;
};

//
// Define a singleton instance of the info class
//
static radRCFInfo* s_RadRCFInfo = NULL;


//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    DoAlign
//=============================================================================
// Description: Align the given position to the given alignment.
//`
// Parameters:  origPosition - this is the original position
//              alignValue - this is the alignment value
//
// Return:      The closest multiple of the alignment value that is greater
//              than the original position.
//------------------------------------------------------------------------------

unsigned int DoAlign( unsigned int origPosition, unsigned int alignValue )
{
    //
    // Align cannot be zero
    //
    if( alignValue == 0 )
    {
        alignValue = 1;
    }

    //
    // Do some fancy bit manipulation to align it
    //
    if( origPosition & ( alignValue - 1 ) )
    {
        // Not aligned
        return( ( origPosition & ~( alignValue - 1 ) ) + alignValue );
    }
    else
    {
        // Already aligned
        return origPosition;
    }
}

//=============================================================================
// Function:    radRCFCreateDirectory
//=============================================================================
// Description: Create the directory so that the desired file will exist.
//
// Parameters:  ppDesiredFile - the file we want to fit.
//
// Return:      True if the directory is created successfully
//------------------------------------------------------------------------------

bool radRCFCreateDirectory( char* pDesiredFile )
{
    //
    // Create the path to the exporting file
    //
    bool successful = true;
    char *str = pDesiredFile;
    while( successful && *str )
    {
        if( *str == '\\' || *str == '/' )
        {
            *str = '\0';

            // Check for existance
            int e = _access( pDesiredFile, 0 );
            if( e != -1 )
            {
                // It exists, make sure it is a directory
                struct _stat statBuffer;
                e = _stat( pDesiredFile, &statBuffer );
                if( e != 0 || !( statBuffer.st_mode & _S_IFDIR ) )
                {
                    // We have a problem
                    successful = false;
                }
            }
            else
            {
                if( str != pDesiredFile )
                {
                    // Create the directory
                    if( ::CreateDirectory( pDesiredFile, NULL ) != TRUE )
                    {
                        // We have a problem
                        successful = false;
                    }
                }
            }

            *str = '\\';
        }
        str++;
    }
    return successful;
}


//=============================================================================
// Function:    Endian Routines
//=============================================================================
// Description: Endian routines are stolen from PETLATL, which in turn
//              stole them from RADLIB (RLBA\SRC\ENDIAN.C)
//
// Parameters:  x - the thing to flip
//
//------------------------------------------------------------------------------

// Stop no return value warning.
#pragma warning( push )
#pragma warning(disable: 4035)

unsigned long __fastcall rFlip32(unsigned int a)
{
	__asm {
		mov		eax,ecx
		bswap	eax
	}
}

// Bring back warning
#pragma warning( pop )

void rMaybeFlip32( unsigned int *x, bool bigEndian )
{
	if( bigEndian )
    {
        *x = rFlip32( *x );
    }
}


//
// Initialize and terminate the encoder
//
void radRCFEncoderInitialize
(
    radMemoryAllocator allocator
)
{
    s_RadRCFInfo = new( allocator ) radRCFInfo( );
}
void radRCFEncoderTerminate
(
    void
)
{
    delete s_RadRCFInfo;
}

//=============================================================================
// Function:    radRCFInfoGet
//=============================================================================
// Description: Get the info singleton class
//
//------------------------------------------------------------------------------

IRadRCFInfo* radRCFInfoGet
(
    void
)
{
    return s_RadRCFInfo;
}



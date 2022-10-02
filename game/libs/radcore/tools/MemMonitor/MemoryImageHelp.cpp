//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor host
//
// Description: This file contains the implementation of the 
//              MemoryImage.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemMonitor.h"
#include "MemoryImage.h"
#include "MemoryBlock.h"
#include "MemRawDataQueue.h"
#include "MemErrorMsg.h"

bool CMemoryImage::ProcessMemRawData( const MM_DataPacketBlock & Data )
{
    switch( Data.commandPacket.header )
    {
        case DeclarePlatformType:
        {
            DeclarePlatform( Data.declarePlatform.eventID,
                             Data.declarePlatform.platform,
                             Data.declarePlatform.userData );
            return true;
        }
        break;

        case DeclareSpaceDataType:
        {
            DeclareSpace( Data.declareSpaceData.eventID, 
                          Data.declareSpaceData.memorySpace,
                          Data.declareSpaceData.addrStart,
                          Data.declareSpaceData.size );
            return true;
        }
        break;

        case DeclareSectionType:
        {
            DeclareSection( Data.declareSectionData.eventID,
                            Data.declareSectionData.memorySpace,
                            Data.declareSectionData.sectionType,
                            Data.declareSectionData.address,
                            Data.declareSectionData.size );
            return true;
        }
        break;

        case RescindSectionType:
        {
            RescindSection( Data.rescindSectionData.eventID,
                            Data.rescindSectionData.memorySpace,
                            Data.rescindSectionData.address );
            return true;
        }
        break;

        case IdentifySectionType:
        {
            IdentifySection( Data.identifySectionData.eventID,
                             Data.identifySectionData.memorySpace,
                             Data.identifySectionData.address,
                             Data.identifySectionData.name );
            return true;
        }
        break;

        case DeclareAllocationType:
        {
            DeclareAllocation( Data.declareAllocationData.eventID,
                               Data.declareAllocationData.memorySpace,
                               Data.declareAllocationData.address,
                               Data.declareAllocationData.size,
                               Data.declareAllocationData.callStackDepth,
                               Data.declareAllocationData.callStack );
            return true;
        }
        break;

        case RescindAllocationType:
        {
            RescindAllocation( Data.rescindAllocationData.eventID,
                               Data.rescindAllocationData.memorySpace,
                               Data.rescindAllocationData.address );
            return true;
        }
        break;

        case IdentifyAllocationType:
        {
            IdentifyAllocation( Data.identifyAllocationData.eventID,
                                 Data.identifyAllocationData.memorySpace,
                                 Data.identifyAllocationData.address,
                                 Data.identifyAllocationData.group,
                                 Data.identifyAllocationData.name,
                                 Data.identifyAllocationData.referenceCount,
                                 Data.identifyAllocationData.referenceCountPtr );
            return true;
        }
        break;

        case ReportAddRefType:
        {
            ReportAddRef( Data.reportAddRefData.eventID,
                          Data.reportAddRefData.memorySpaceObject,
                          Data.reportAddRefData.object,
                          Data.reportAddRefData.memorySpaceRefObject,
                          Data.reportAddRefData.refObject,
                          Data.reportAddRefData.callStack,
                          Data.reportAddRefData.callStackDepth
                          );
            return true;
        }
        break;

        case ReportReleaseType:
        {
            ReportRelease( Data.reportReleaseData.eventID,
                           Data.reportReleaseData.memorySpaceObject,
                           Data.reportReleaseData.object,
                           Data.reportReleaseData.memorySpaceRefObject,
                           Data.reportReleaseData.refObject,
                           Data.reportReleaseData.callStack,
                           Data.reportReleaseData.callStackDepth
                           );
            return true;
        }
        break;
        
        case IssueFlagType:
        {
            IssueFlag( Data.issueFlagData.eventID, Data.issueFlagData.timeStamp, Data.issueFlagData.name );
            return true;
        }
        break;
    }
    return false;
}

bool CMemoryImage::DeclarePlatform(
                unsigned int uRecordID,
                MM_ClientPlatform ePlatform,
                unsigned int uUserData
                    )
{
    if ( m_ePlatform == MM_Platform_Unknown )
    {
        m_ePlatform = ePlatform;
        //
        // check if setting has pdb files specified for this platform
        //
        CMemSessionDataManager * pDataManager = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( );
        CString strPlatformExe = pDataManager->GetMemConfigurationPtr( )->GetPlatformExecutablePath( m_ePlatform );

        if ( strPlatformExe.GetLength( ) == 0 )
        {
            //
            // send message that symbol file is not specified loaded
            //
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError;
            strError.Format( "Symbol File for platform [%s] is not specified.", (LPCTSTR)MMGetPlatformString( m_ePlatform ) );
            pError->Initialize( CMemErrorMsg::Error, strError, NULL );

            Notify( SSC_MEM_ERROR_MSG, 0, pError );
        }
    }
    else if ( m_ePlatform != ePlatform )
    {
        //
        // send warning message if changing platform in middle of running
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "Re-DeclarePlatform : from [%s] to [%s].",
                         (LPCTSTR)MMGetPlatformString( m_ePlatform ), 
                         (LPCTSTR)MMGetPlatformString( ePlatform ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
    }

    if ( m_ePlatform == MM_Platform_XBOX )
    {
        ::radPEAddr2LineSetXBoxMainAddress( uUserData );
    }

    SetModifiedFlag( TRUE );

    return true;
}

bool CMemoryImage::DeclareSpace(
                unsigned int uRecordID,
                MM_ClientMemorySpace eMemorySpace,
                unsigned int uAddrStart,
                unsigned int uSize
                 )
{
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        pMemorySpace = static_cast< CMemorySpace * >( RUNTIME_CLASS( CMemorySpace )->CreateObject( ) );
        pMemorySpace->Initialize( eMemorySpace, IRadMemoryMonitor::MemorySectionType_DynamicData, uAddrStart, uSize, m_aryMemoryFlag.back( ) );
        pMemorySpace->IdentifyAs( MMGetMemorySpaceString( eMemorySpace ) );
        AddMemorySpace( pMemorySpace );
    }
    SetModifiedFlag( TRUE );
    return true;
}


//=============================================================================
// Function:    CMemoryImage::DeclareSection
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::DeclareSection(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    IRadMemoryMonitor::MemorySectionType eSectionType,
                    unsigned int uAddress,
                    unsigned int uSize
                                 )
{
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "DeclareSection : MemorySpace specified [%s] cannot be found, possible wrong platform. Detail: Type [%s], MemorySpace [%s], Address [0x%x], Size [%u].",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySectionString( eSectionType ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         uSize );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemorySectionPtr pSection = static_cast< CMemorySection * >( RUNTIME_CLASS( CMemorySection )->CreateObject( ) );
    ASSERT( pSection != NULL );
    pSection->Initialize( eMemorySpace, eSectionType, uAddress, uSize, m_aryMemoryFlag.back( ) );

    if ( ! pMemorySpace->InsertSection( pSection ) )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "DeclareSection : cannot insert into MemorySpace [%s]. Detail: Type [%s], MemorySpace [%s], Address [0x%x], Size [%u].",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySectionString( eSectionType ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         uSize );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    UpdateRecordID( uRecordID );

    SetModifiedFlag( TRUE );
    return true;
}

//=============================================================================
// Function:    CMemoryImage::RescindSection
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::RescindSection( 
                                   unsigned int uRecordID,
                                   MM_ClientMemorySpace eMemorySpace,
                                   unsigned int uAddress
                                 )
{
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "RescindSection : MemorySpace [%s] cannot be found. Detail: MemorySpace [%s], Address [0x%x].",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemorySectionPtr pSection = pMemorySpace->FindMemorySectionByAddr( uAddress );
    if ( pSection == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "RescindSection : MemorySection cannot be found under address [x%x]. Detail: MemorySpace [%s], Address [0x%x].",
                         uAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    if ( ! pMemorySpace->RemoveSection( pSection ) )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "RescindSection : MemorySection [%s] cannot be removed. Detail: MemorySpace [%s], Address [0x%x].",
                         (LPCTSTR)MMGetMemorySectionString( pSection->GetSectionType( ) ),
                         uAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    UpdateRecordID( uRecordID );
    SetModifiedFlag( TRUE );
    return true;
}

bool CMemoryImage::IdentifySection( 
                                    unsigned int uRecordID,
                                    MM_ClientMemorySpace eMemorySpace,
                                    unsigned int uAddress,
                                    const char * szName
                                  )
{
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "IdentifySection : MemorySpace [%s] cannot be found. Section Detail: MemorySpace [%s], Address [0x%x], Name [%s]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         szName );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemorySectionPtr pSection = pMemorySpace->FindMemorySectionByAddr( uAddress );

    if ( pSection == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "IdentifySection : Memory Section cannot be found. Section Detail: MemorySpace [%s], Address [0x%x], Name [%s]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         szName );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    pSection->IdentifyAs( szName );

    return true;
}


//=============================================================================
// Function:    CMemoryImage::DeclareAllocation
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::DeclareAllocation(
                                      unsigned int uRecordID,
                                      MM_ClientMemorySpace eMemorySpace,
                                      unsigned int uAddress,
                                      unsigned int uSize,
                                      unsigned int uCallStackDepth,
                                      const unsigned int * pCallStacks
                                    )
{
    //
    // minor NULL check, those are memory space where NULL is invalid allocation
    //
    if ( ( eMemorySpace == MM_PS2_EE ) ||
         ( eMemorySpace == MM_GCN_MAIN ) || 
         ( eMemorySpace == MM_WIN_MAIN ) )
    {
        if ( uAddress == 0 )
        {
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError;
            strError.Format( "DeclareAllocation : Allocation return NULL. Space [%s], Addr[0x%x], Size[%u].",
                             (LPCTSTR)::MMGetMemorySpaceString( eMemorySpace ),
                             uAddress,
                             uSize );
            pError->Initialize( CMemErrorMsg::Error, strError, NULL );
            ASSERT( uCallStackDepth <= MM_MAX_CALLSTACK_DEPTH );
            pError->SetSubTextEntry( ReadStackTrace( pCallStacks, uCallStackDepth ) );
            Notify( SSC_MEM_ERROR_MSG, 0, pError );
            return false;
        }
    }

    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "DeclareAllocation : MemorySpace [%s] cannot be found. Detail: MemorySpace [%s], Address [0x%x], Size [%u]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         uSize );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        pError->SetSubTextEntry( ReadStackTrace( pCallStacks, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemoryBlockPtr pBlock = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
    ASSERT( pBlock != NULL );
    pBlock->Initialize( eMemorySpace,
                       uAddress,
                       uSize,
                       pCallStacks,
                       uCallStackDepth,
                       m_aryMemoryFlag.back( ) );

    if ( ! pMemorySpace->InsertAllocation( pBlock ) )
    {
        return false;
    }

    UpdateRecordID( uRecordID );

    SetModifiedFlag( TRUE );
    return true;
}

//=============================================================================
// Function:    CMemoryImage::RescindAllocation
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::RescindAllocation(
                unsigned int uRecordID,
                MM_ClientMemorySpace eMemorySpace,
                unsigned int uAddress
                      )
{
    bool bRet = true;
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "RescindAllocation : MemorySpace [%s] cannot be found. Detail: MemorySpace [%s], Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );

        bRet = false;
    }
    else
    {
        CMemoryBlockPtr pMemoryBlock = pMemorySpace->FindMemoryBlockByAddr( uAddress );

        if ( pMemoryBlock == NULL )
        {
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError;
            strError.Format( "RescindAllocation : Memory Block cannot be found. Detail: MemorySpace [%s], Address [0x%x]",
                             (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                             uAddress );
            pError->Initialize( CMemErrorMsg::Error, strError, NULL );

            Notify( SSC_MEM_ERROR_MSG, 0, pError );
            bRet = false;
        }
        else
        {
            if ( ! pMemorySpace->RemoveAllocation( pMemoryBlock ) )
            {
                //
                // remove a free memory block???
                //
                CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                CString strError;
                strError.Format( "RescindAllocation : cannot remove allocation. Allocation Detail : Memory Space [%s], Addr[0x%x].",
                                 (LPCTSTR)::MMGetMemorySpaceString( eMemorySpace ),
                                 uAddress );
                pError->Initialize( CMemErrorMsg::Error, strError, NULL );
                Notify( SSC_MEM_ERROR_MSG, 0, pError );
                bRet = false;
            }
            else
            {
                bRet = true;
            }
        }
    }

    UpdateRecordID( uRecordID );

    SetModifiedFlag( TRUE );
	return bRet;
}

//=============================================================================
// Function:    CMemoryImage::IdentifyAllocation
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::IdentifyAllocation(
                unsigned int uRecordID,
                MM_ClientMemorySpace eMemorySpace,
                unsigned int uAddress,
                const char * szGroup,
                const char * szName,
                unsigned int uObjRefCount,
                unsigned int uObjRefCountPtr )
{
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "IdentifyAllocation : MemorySpace [%s] cannot be found. Detail: MemorySpace [%s], Address [0x%x], Group ID [%s], Name [%s]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         szGroup,
                         szName );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );

        return false;
    }

    CMemoryBlockPtr pMemoryBlock = pMemorySpace->FindMemoryBlockWithInAddr( uAddress );

    if ( pMemoryBlock == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "IdentifyAllocation : Memory Block cannot be found. Detail: MemorySpace [%s], Address [0x%x], Group ID [%s], Name [%s]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         szGroup,
                         szName );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    if ( ! pMemoryBlock->IdenitfyAs( szGroup, szName, uObjRefCount, uObjRefCountPtr ) )
    {
        //
        // this error message is temp removed so error will not show up for object allocated in stack or code section.
        //
    /*
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "IdentifyAllocation : Memory Block cannot be identified. Detail: MemorySpace [%s], Address [0x%x], Group ID [%s], Name [%s]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uAddress,
                         szGroup,
                         szName );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
    */
        return false;
    }

    return true;
}

//=============================================================================
// Function:    CMemoryImage::IssueFlag
//=============================================================================
// Description: 
//              
// Returns:     bool
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::IssueFlag( 
                unsigned int uRecordID,
                unsigned int uTimeStamp,
                const char * pName
                )
{
    //
    // add to the flag list.
    //

    CMemoryFlagPtr pFlag = static_cast< CMemoryFlag * >( RUNTIME_CLASS( CMemoryFlag )->CreateObject( ) );

    pFlag->Initialize( uRecordID, uTimeStamp, pName );

    m_aryMemoryFlag.push_back( pFlag );

    return true;
}


//=============================================================================
// Function:    CMemoryImage::ReportAddRef
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::ReportAddRef(
                unsigned int uRecordID,
                MM_ClientMemorySpace eMemorySpaceObject,
                unsigned int uObjectAddress,
                MM_ClientMemorySpace eMemorySpaceRef,
                unsigned int uRefAddress,
                const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ],
                unsigned int uCallStackDepth
                 )
{
    //
    // 1) find where the object is
    //
    CMemorySpacePtr pMemorySpaceObject = FindMemorySpaceByType( eMemorySpaceObject);

    if ( pMemorySpaceObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportAddRef : MemorySpace [%s] cannot be found. Detail: Object MemorySpace [%s], Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemoryBlockPtr pObject = pMemorySpaceObject->FindMemoryBlockWithInAddr( uObjectAddress );

    if ( pObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportAddRef : Memory object cannot be found. Detail: Object MemorySpace [%s], Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    //
    // 2) find where the ref object is
    //
    CMemorySpacePtr pMemorySpaceRef = FindMemorySpaceByType( eMemorySpaceRef );

    if ( pMemorySpaceObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportAddRef : MemorySpace [%s] cannot be found. Detail: Object MemorySpace [%s], Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemoryBlockPtr pObjectRef = pMemorySpaceObject->FindMemoryBlockWithInAddr( uRefAddress );

    if ( pObjectRef == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportAddRef : Memory object referenced object cannot be found. Detail: Object MemorySpace [%s], Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    //
    // 3) records the memory reference
    //
    if ( ! pObject->ReportAddRef( pObjectRef ) )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportAddRef : Failed to report AddRef Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
 
        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    UpdateRecordID( uRecordID );

    SetModifiedFlag( TRUE );
    return true;
}

//=============================================================================
// Function:    CMemoryImage::ReportRelease
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryImage::ReportRelease(
                unsigned int uRecordID,
                MM_ClientMemorySpace eMemorySpaceObject,
                unsigned int uObjectAddress,
                MM_ClientMemorySpace eMemorySpaceRef,
                unsigned int uRefAddress,
                const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ],
                unsigned int uCallStackDepth
                  )
{
    //
    // 1) find where the object is
    //
    CMemorySpacePtr pMemorySpaceObject = FindMemorySpaceByType( eMemorySpaceObject);

    if ( pMemorySpaceObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportRelease : MemorySpace [%s] cannot be found. Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemoryBlockPtr pObject = pMemorySpaceObject->FindMemoryBlockWithInAddr( uObjectAddress );

    if ( pObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportRelease : Memory object cannot be found. Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    //
    // 2) find where the ref object is
    //
    CMemorySpacePtr pMemorySpaceRef = FindMemorySpaceByType( eMemorySpaceRef );

    if ( pMemorySpaceObject == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportRelease : Memory object referenced object cannot be found. Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemoryBlockPtr pObjectRef = pMemorySpaceObject->FindMemoryBlockWithInAddr( uRefAddress );

    if ( pObjectRef == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportRelease : Memory object referenced object cannot be found. Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    //
    // 3) records the memory reference
    //
    if ( ! pObject->ReportRelease( pObjectRef ) )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportRelease : Failed report Release Detail: Object MemorySpace [%s] Object Address [0x%x], RefObject MemorySpace[%s], RefObject Address [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceObject ),
                         uObjectAddress,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpaceRef ),
                         uRefAddress );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        pError->SetSubTextEntry( ReadStackTrace( uStackTrace, uCallStackDepth ) );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    UpdateRecordID( uRecordID );

    SetModifiedFlag( TRUE );
    return true;
}

bool CMemoryImage::ReportStackUsage(
                MM_ClientMemorySpace eMemorySpace,
                unsigned int uStackSectionStartPos,
                unsigned int uHighWaterMark
                     )
{
    //
    // 1) find where the stack section is
    //
    CMemorySpacePtr pMemorySpace = FindMemorySpaceByType( eMemorySpace);

    if ( pMemorySpace == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportStackUsage : MemorySpace [%s] cannot be found. Detail: Memory Space [%s] Stack Section Start Pos [0x%x], High Water Mark [0x%x]",
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uStackSectionStartPos,
                         uHighWaterMark );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    CMemorySectionPtr pMemorySection = pMemorySpace->FindMemorySectionByAddr( uStackSectionStartPos );

    if ( pMemorySection == NULL )
    {
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "ReportStackUsage : Section at address [0x%x] cannot be found. Detail: Memory Space [%s] Stack Section Start Pos [0x%x], High Water Mark [0x%x]",
                         uStackSectionStartPos,
                         (LPCTSTR)MMGetMemorySpaceString( eMemorySpace ),
                         uStackSectionStartPos,
                         uHighWaterMark );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );

        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }
    return true;
}

//=============================================================================
// Function:    CMemoryImage::UpdateRecordID
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryImage::UpdateRecordID( unsigned int uRecordID )
{
    // initial condition, where we don't know what is the first RecordID
    if ( m_uFirstRecordID == 0 )
    {
        m_uFirstRecordID = uRecordID;
    }

    if ( m_uLastRecordID == 0 )
    {
        m_uLastRecordID = uRecordID;
    }

    // update the last record as we increment
    if ( m_uLastRecordID < uRecordID )
    {
        m_uLastRecordID = uRecordID;
    }
}

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        activity.hpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the definition of the activity class
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 25, 2001    Creation
//
//=============================================================================

#ifndef	ACTIVITY_HPP
#define ACTIVITY_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <rcfEncoder.hpp>

#include "..\encoder\cementlibrarywrap\cementlibrarywrap.hpp"

//=============================================================================
// Class name:  radRCFActivityExportFile
//=============================================================================

class radRCFActivity : public IRadRCFActivity,
                       public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFActivity" )

    radRCFActivity( );
    virtual ~radRCFActivity( );

    //=============================================================================
    // IRadRCFActivity functions
    //=============================================================================

    virtual void SetDescription( const char* description );
    virtual const char* GetDescription( void );

protected:

    char                m_Description[ 256 ];
};

//=============================================================================
// Class name:  radRCFActivitySetFileSize
//=============================================================================
// Description: This activity sets the files size
//
//-----------------------------------------------------------------------------

class radRCFActivitySetFileSize : public radRCFActivity
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFActivitySetFileSize" )

    radRCFActivitySetFileSize( unsigned int size );
    virtual ~radRCFActivitySetFileSize( );

    virtual void DoActivity( IRadRCFEncoder* pEncoder );

protected:
private:

    unsigned int        m_FileSize;
};

//=============================================================================
// Class name:  radRCFActivityransferFile
//=============================================================================
// Description: This activity transfers a file into the cement library
//
//-----------------------------------------------------------------------------

class radRCFActivityTransferFile : public radRCFActivity
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFActivityTransferFile" )

    radRCFActivityTransferFile
    (
        radRCFFileWrap* pFile,
        unsigned int newoffset
    );
    virtual ~radRCFActivityTransferFile( );

    virtual void DoActivity( IRadRCFEncoder* pEncoder );

protected:
private:

    radRCFFileWrap*     m_pFile;
    unsigned int        m_NewOffset;
};

//=============================================================================
// Class name:  radRCFActivityDone
//=============================================================================
// Description: This activity transfers a file into the cement library
//
//-----------------------------------------------------------------------------

class radRCFActivityDone : public radRCFActivity
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFActivityDone" )

    radRCFActivityDone( );
    virtual ~radRCFActivityDone( );

    virtual void DoActivity( IRadRCFEncoder* pEncoder );

protected:
private:
};

//=============================================================================
// Class name:  radRCFActivityRemoveFile
//=============================================================================
// Description: This activity removes a file from the disk
//
//-----------------------------------------------------------------------------

class radRCFActivityRemoveFile : public radRCFActivity
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFActivityRemoveFile" )

    radRCFActivityRemoveFile
    (
        const char* filename
    );
    virtual ~radRCFActivityRemoveFile( );

    virtual void DoActivity( IRadRCFEncoder* pEncoder );

protected:
private:

    char                m_Filename[ radFileFilenameMax ];
};

#endif //ACTIVITY_HPP


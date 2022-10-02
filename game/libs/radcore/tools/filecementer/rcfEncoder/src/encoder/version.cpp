//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        version.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains version info for the rcf encoder
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 26, 2001    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <rcfEncoder.hpp>

//=============================================================================
// Constants
//=============================================================================

const int RcfEncoderVersion_Major   = 1;
const int RcfEncoderVersion_Minor   = 0;

//=============================================================================
// Public functions
//=============================================================================

//
// Get the version number of this encoder
//
void GetRcfEncoderVersion
(
    int* major,
    int* minor
)
{
    if( major != NULL )
    {
        *major = RcfEncoderVersion_Major;
    }
    if( minor != NULL )
    {
        *minor = RcfEncoderVersion_Minor;
    }
}

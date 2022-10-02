//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _EXPORT_FUNCTIONS_HPP
#define _EXPORT_FUNCTIONS_HPP

#include "traversalcontroller.hpp"
#include "exporteroptions.hpp"
#include "tlInventory.hpp"
#include "mayaProgress.hpp"
#include "exportLog.h"

#ifdef WIN32
#define DLLEXPORT __declspec( dllexport )
#define CDEC     __cdecl
#else
#define DLLEXPORT
#define CDEC
#endif

DLLEXPORT tlInventory*   ExtractInventoryFromScene( bool bToFile, MStatus* pStatus = NULL );
DLLEXPORT bool           OutputInventoryChunksToP3DFile(const char* fname, tlDataChunk* invChunk);
DLLEXPORT void*          OutputInventoryChunksToMem(unsigned long& mem_length, tlDataChunk* invChunk);
DLLEXPORT tlDataChunk    *MakeExportInfo(void);

DLLEXPORT void           StartExport( void );
DLLEXPORT int            StopExport( void );

extern "C"
{
    DLLEXPORT void*      CDEC P3dExportToMem(unsigned long &mem_length);
    DLLEXPORT void       CDEC P3dExportToFile(const char* fname, MStatus* pStatus = NULL );
    DLLEXPORT bool       CDEC IsExportingCanceled(  );
    DLLEXPORT void       CDEC UpdateExportProgress( int prgnum, const char* annotation = NULL );
}

//===========================================================================
// STATIC GLOBAL for the Maya Progress object.
// Controls Maya's global progressBar control and wraps
// an MComputation object to provide user-abort detection.
//
// **** Include this header file ("exportFunctions.hpp") within implementation
// **** files that will use the global Maya Progress object.

static CMayaProgress                    gProgress;

//===========================================================================

//===========================================================================
// The global Exporter Log.
//
// **** Include this header file ("exportFunctions.hpp") within implementation
// **** files that will add items to the Exporter log.

extern CExportLog               gExportLog;
static int               gExportWithoutCrashes = 0;
static int               gExportCrashes = 0;

//===========================================================================

#endif


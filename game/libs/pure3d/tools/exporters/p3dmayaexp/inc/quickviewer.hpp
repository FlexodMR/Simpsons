//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _QUICKVIEWER_HPP
#define _QUICKVIEWER_HPP

#include <maya/MPxCommand.h>
#include <maya/MArgList.h>

//********************************************************************************
//Class declaration : quickViewerCmd
//********************************************************************************
class quickViewerCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();

private:
    static MString              mTarget;
};

bool IsPotentiallyP3dViewExe( char* p3dViewPath );
bool FindQuickViewerApp();
bool SetupQuickViewer();
void DestroyQuickViewer();

#endif


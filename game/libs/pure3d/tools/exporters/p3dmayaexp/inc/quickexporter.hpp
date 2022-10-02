//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _QUICKEXPORTER_HPP
#define _QUICKEXPORTER_HPP

#include <maya/MPxCommand.h>
#include <maya/MArgList.h>

//********************************************************************************
//Class declaration : quickViewerCmd
//********************************************************************************
class quickExporterCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

#endif

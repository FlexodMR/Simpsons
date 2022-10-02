//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "quickexporter.hpp"

#include <maya/MGlobal.h>
#include <maya/MString.h>
 
#include "animnode.hpp"
#include "deformerExpression.hpp"
#include "exportFunctions.hpp"
#include "exporteroptions.hpp"

#include <rule/inc/ruleParser.hpp>  // Just so I can access static ::Clear() to enforce memory cleanup

#include <bewert_debug.h>

//********************************************************************************
//Class implementation : quickViewerCmd
//********************************************************************************
void* quickExporterCmd::creator() 
{
    return new quickExporterCmd;
}

MStatus quickExporterCmd::doIt(const MArgList& args)
{  
    MStatus                             status = MS::kSuccess;

#ifdef DEBUG_MEMORY_TRACK

    MemoryTrackReset();

#endif
    
    ExporterOptions options;

    float red = 0.0f;
    float green = 0.0f;
    float blue = 0.0f;

    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-background") == args.asString(i))
        {
            red = (float)args.asDouble(++i);
            green = (float)args.asDouble(++i);
            blue = (float)args.asDouble(++i);
        }

        if (MString("-selection") == args.asString(i))
        {
            options.SetExportSelection(true);
        }
    }

    // *** TODO: The following Clear() is currently in THREE different places:
    //              p3dmayaexp.cpp
    //              quickexporter.cpp
    //              quickviewer.cpp
    //     Find someway to centralize it!

    // Clear cached Animation nodes and AnimRanges.
    AnimNode::Reset();
    // Clear previously cached Textures.
    TextureAnimNode::Clear();
    // Clear cached Expression animations and mixers.
    DeformerExpression::Clear();

    MString optionsStr;
    MGlobal::executeCommand(MString("P3DGetExportOptions()"),optionsStr);
    options.Initialize(optionsStr);      

    P3dExportToFile( options.Filename(), &status );

    options.Clear();

// ------------  MEMORY TRACK  ------------------

#ifdef DEBUG_MEMORY_TRACK

    AnimNode::Reset();
    // Clear previously cached Textures.
    TextureAnimNode::Clear();
    // Clear cached Expression animations and mixers.
    DeformerExpression::Clear();

    CLog::CleanUp();
    CRuleParser::Clear();

    DumpUnfreed();
    std::clog << gMemoryTrackLog << std::endl;
    gMemoryTrackLog.Clear();

#endif

    return status;
}


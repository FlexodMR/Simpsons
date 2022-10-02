//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MItDag.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnDependencyNode.h>

#include <maya/MItDependencyGraph.h>
#include <maya/MFnLambertShader.h>

#include <maya/MGlobal.h>
#include <maya/MDistance.h>
#include <maya/MStringArray.h>
#include "animatedObjectConstants.hpp"
#include "animatedObjectUtility.hpp"

namespace P3DAnimatedObject
{

bool GetShapeNodeFn(MDagPath dagPath, MFnDagNode &shapeNodeFn)
{
    MStatus status;
    status = dagPath.extendToShape();
    if (status!=MS::kSuccess)
        return false;
    status = shapeNodeFn.setObject(dagPath);
    if (status!=MS::kSuccess)
        return false;
    else
        return true;
}

void* getShapeNodeCmd::creator() 
{
    return new getShapeNodeCmd;
}

MStatus getShapeNodeCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status == MS::kSuccess)
            {
                MDagPath dagPath;
                MObject component;
                MFnDagNode dagNodeFn;
                slist.getDagPath(0,dagPath,component);
                if (GetShapeNodeFn(dagPath,dagNodeFn))
                    appendToResult(dagNodeFn.name());
            }
            break;
        }
    }
    return MS::kSuccess;
}

bool GetTransformNodeFn(MDagPath dagPath, MFnDagNode &transformNodeFn)
{
    MStatus status;
    status = transformNodeFn.setObject(dagPath.transform());
    if (status!=MS::kSuccess)
        return false;
    else
        return true;
}

void* getTransformNodeCmd::creator() 
{
    return new getTransformNodeCmd;
}

MStatus getTransformNodeCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status == MS::kSuccess)
            {
                MDagPath dagPath;
                MObject component;
                MFnDagNode dagNodeFn;
                slist.getDagPath(0,dagPath,component);
                if (GetTransformNodeFn(dagPath,dagNodeFn))
                    appendToResult(dagNodeFn.name());
            }
            break;
        }
    }
    return MS::kSuccess;
}

bool IsType(const MDagPath &dagPath, unsigned type)
{
    MFnDagNode dagNodeFn;
    if (!GetShapeNodeFn(dagPath,dagNodeFn))
        return false;

    MTypeId typeId = dagNodeFn.typeId();
    if (typeId.id()==type)
        return true;
    else
        return false;
}

bool IsType(const MObject &obj, unsigned type)
{
    MStatus status;
    
    MFnDependencyNode dependNodeFn(obj);
    MTypeId typeId = dependNodeFn.typeId();
    if (typeId.id()==type)
        return true;

    MFnDagNode dagNodeFn(obj);
    MDagPath dagPath;
    status = dagNodeFn.getPath(dagPath);
    if (status!=MS::kSuccess)
        return false;
    return IsType(dagPath, type);
}

} //namespace P3DAnimatedObject


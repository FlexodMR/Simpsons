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
#include "particleConstants.hpp"
#include "particleUtility.hpp"

namespace P3DParticleSystem
{

void* getCurrentUnitsCmd::creator() 
{
    return new getCurrentUnitsCmd;
}

MStatus getCurrentUnitsCmd::doIt(const MArgList& args)
{
    setResult(MDistance::uiToInternal(1.0));
    return MS::kSuccess;
}

void* getSurfaceShaderCmd::creator() 
{
    return new getSurfaceShaderCmd;
}

MStatus getSurfaceShaderCmd::doIt(const MArgList& args)
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
                //find the dag path to the object
                MDagPath dagPath;
                MObject component;
                slist.getDagPath(0,dagPath,component);
                CHECKRESULT_FAILURE(status,"Error creating dag path");

                //extend the dag path to the shape if it specified object is a transform
                dagPath.extendToShape();
                MObject dependNode = dagPath.node();

                //get the plugs to find the shading group associated with specified object
                MFnDependencyNode dependNodeFn(dependNode, &status);
                CHECKRESULT_FAILURE(status,"Error creating dependency node");
                MPlug inConnectPlug = dependNodeFn.findPlug("instObjGroups", &status);
                CHECKRESULT_FAILURE(status,"Error retrieving input connections");
                MPlug elemPlug = inConnectPlug.elementByLogicalIndex(0, &status);
                CHECKRESULT_FAILURE(status,"Error retrieving element plug");
                MPlugArray plugArray;
                elemPlug.connectedTo(plugArray,false,true,&status);
                CHECKRESULT_FAILURE(status,"Error getting connected to plugs");
                if (plugArray.length()==0)
                    break;
                MPlug shaderPlug = plugArray[0];
                MObject shaderNode = shaderPlug.node();
                MFnDependencyNode shaderNodeFn (shaderNode, &status);
                CHECKRESULT_FAILURE(status,"Error creating shader node function");

                //get the plugs to get to the first surface shader node associate with above shading group            
                MPlug surfacePlug = shaderNodeFn.findPlug("surfaceShader",&status);
                if (!surfacePlug.isNull()) 
                {
                    MPlugArray connectedPlugs;
                    bool asSrc = false;
                    bool asDst = true;
                    surfacePlug.connectedTo( connectedPlugs, asDst, asSrc );
                    if (connectedPlugs.length() == 1) 
                    {
                        MObject surfaceNode = connectedPlugs[0].node();
                        MFnDependencyNode surfaceNodeFn (surfaceNode, &status);
                        CHECKRESULT_FAILURE(status,"Error creating surface shader node function");
                        appendToResult(surfaceNodeFn.name());
                    }
                }
            }
            break;
        }
    }
    return MS::kSuccess;
}

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

void* isParticleSystemCmd::creator() 
{
    return new isParticleSystemCmd;
}

MStatus isParticleSystemCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    bool result;

    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status != MS::kSuccess)
                result=false;
            else 
            {
                MDagPath dagPath;
                MObject component;
                slist.getDagPath(0,dagPath,component);
                result = IsType(dagPath, P3D_PARTICLE_SYSTEM_ID);
            }
            appendToResult(result);
        }
    }
    return MS::kSuccess;
}

void* isParticleEmitterCmd::creator() 
{
    return new isParticleEmitterCmd;
}

MStatus isParticleEmitterCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    bool result;

    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status != MS::kSuccess)
                result=false;
            else 
            {
                MDagPath dagPath;
                MObject component;
                slist.getDagPath(0,dagPath,component);
                result = IsType(dagPath, P3D_EMITTER_ID);
            }
            appendToResult(result);
        }
    }
    return MS::kSuccess;
}

void* getParticleSystemListCmd::creator() 
{
    return new getParticleSystemListCmd;
}

MStatus getParticleSystemListCmd::doIt(const MArgList& args)
{
    MStatus status;

    MItDag allNodes(MItDag::kDepthFirst, MFn::kInvalid, &status);
    if (status!=MS::kSuccess)
        return MS::kFailure;
    
    clearResult();
    while (!allNodes.isDone())
    {
        MObject current = allNodes.item(&status);        
        MFnDagNode dagNodeFn(current);
    
        if (dagNodeFn.typeId().id()==P3D_PARTICLE_SYSTEM_ID)
        {
            MDagPath parentPath;
            dagNodeFn.getPath (parentPath);
            MFnDagNode parentNodeFn (parentPath.transform(), &status);
            if (status == MS::kSuccess)
                appendToResult(parentNodeFn.name());
        }
            
        allNodes.next();
    }
    return MS::kSuccess;
}

bool getParentParticleSystem(MDagPath emitterDagPath,MDagPath &partSysDagPath)
{
    while (emitterDagPath.length()>1)
    {
        emitterDagPath.pop();
        if (IsType(emitterDagPath,P3D_PARTICLE_SYSTEM_ID))
        {
            partSysDagPath = emitterDagPath;
            return true;
        }
    }
    return false;
}

void* getParentParticleSystemCmd::creator() 
{
    return new getParentParticleSystemCmd;
}

MStatus getParentParticleSystemCmd::doIt(const MArgList& args)
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
                slist.getDagPath(0,dagPath,component);
                if (IsType(dagPath, P3D_PARTICLE_SYSTEM_ID))
                {
                    appendToResult(dependNodeName);
                }
                else if (IsType(dagPath, P3D_EMITTER_ID))
                {
                    MDagPath partSysDagPath;
                    if (getParentParticleSystem(dagPath,partSysDagPath))
                    {
                        MFnDagNode dagNodeFn(partSysDagPath);
                        appendToResult(dagNodeFn.name());
                    }
                }
            }
            break;
        }
    }
    return MS::kSuccess;
}

void* getSelectedParticleSystemCmd::creator() 
{
    return new getSelectedParticleSystemCmd;
}

MStatus getSelectedParticleSystemCmd::doIt(const MArgList& args)
{
    MStatus status;

    MSelectionList slist;

    status = MGlobal::getActiveSelectionList( slist );

    MStringArray sStrings;
    slist.getSelectionStrings( sStrings );

    MDagPath dagPath;
    MObject component;

    clearResult();
    for (unsigned i=0; i<slist.length(); i++)
    {
        slist.getDagPath(i,dagPath,component);
        if (IsType(dagPath, P3D_PARTICLE_SYSTEM_ID))
        {
            appendToResult(sStrings[i]);
        }
        else if (IsType(dagPath, P3D_EMITTER_ID))
        {
            MDagPath partSysDagPath;
            if (getParentParticleSystem(dagPath,partSysDagPath))
            {
                MFnDagNode dagNodeFn(partSysDagPath);
                appendToResult(dagNodeFn.name());
            } 
        }      
    }
    
    return MS::kSuccess;
}

void* getSelectedParticleEmitterCmd::creator() 
{
    return new getSelectedParticleEmitterCmd;
}

MStatus getSelectedParticleEmitterCmd::doIt(const MArgList& args)
{
    MStatus status;

    MSelectionList slist;

    status = MGlobal::getActiveSelectionList( slist );

    MStringArray sStrings;
    slist.getSelectionStrings( sStrings );

    MObject dependNode;

    clearResult();
    for (unsigned i=0; i<slist.length(); i++)
    {
        slist.getDependNode(i,dependNode);
        if (IsType(dependNode, P3D_EMITTER_ID))
        {
            appendToResult(sStrings[i]);
        }
        else if (IsType(dependNode, P3D_EMITTER_BLEND_STATE_NODE_ID))
        {
            MPlugArray plugArray;
            do {
                MFnDependencyNode dependNodeFn(dependNode);
                MPlug particleTypePlug = dependNodeFn.findPlug("particleType", &status);
                if (status!=MS::kSuccess) break;
                particleTypePlug.connectedTo(plugArray, true, false, &status);
                if (status!=MS::kSuccess) break;
                dependNode = plugArray[0].node();
            } while ((!IsType(dependNode, P3D_EMITTER_ID))&&(plugArray.length()>0));

            if (IsType(dependNode, P3D_EMITTER_ID))
            {
                MFnDependencyNode dependNodeFn(dependNode);
                appendToResult(dependNodeFn.name());
            }
        }      
    }
    
    return MS::kSuccess;
}

} //namespace P3DParticleSystem


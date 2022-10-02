/*===========================================================================
    p3dDeformer/utility.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MDagPath.h>
#include <maya/MDistance.h>
#include <maya/MFloatArray.h>
#include <maya/MFnMesh.h>
#include <maya/MFnIntArrayData.h>
#include <maya/MFnTransform.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MIntArray.h>
#include <maya/MItDag.h>
#include <maya/MItDependencyGraph.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MItGeometry.h>
#include <maya/MGlobal.h>
#include <maya/MVectorArray.h>

#include <math.h>
#include <fstream.h>

#include "common.hpp"
#include "utility.hpp"

bool  P3D_DEBUG_MODE = false;

MStatus p3dDeformFindDependencyNode(const MString& depName, MObject& depNode)
{
    //first we try to find a DagNode with depName
    //if we can't, then we try to find a dependency node.
    MStatus status;
    // BUG FIX: 28 Jun 2002
    //  If we're only interested in DAG nodes, then restrict
    //  the iterator to MFn::kDagNode.  Else initializing
    //  with MFnDagNode below bombs out without trying 
    //  the Dependency Node scan.
    MItDag itor( MItDag::kDepthFirst, MFn::kDagNode );
    while (!itor.isDone())
    {
        MObject node = itor.item(&status);
        P3D_DEFORM_STATUS(status);

        MFnDagNode nodeFn(node, &status);
        P3D_DEFORM_STATUS(status);

        if (nodeFn.fullPathName() == depName)
        {
            depNode = node;
            return MS::kSuccess;
        }

        itor.next();
    }

    MItDependencyNodes itord;
    while (!itord.isDone())
    {
        MObject node = itord.item(&status);
        P3D_DEFORM_STATUS(status);

        MFnDependencyNode nodeFn(node, &status);
        P3D_DEFORM_STATUS(status);

        if (nodeFn.name() == depName)
        {
            depNode = node;
            return MS::kSuccess;
        }

        itord.next();
    }

    return MS::kFailure; 
}


static MStatus p3dDeformFindInHistoryInternal(const MObject& root,
                                                             const MString& typeName,
                                                             bool upstream,
                                                             MObject& object)
{
    MStatus status;

    MItDependencyGraph::Direction direction;
    if (upstream)
    {
        direction = MItDependencyGraph::kUpstream;
    }
    else
    {
        direction = MItDependencyGraph::kDownstream;
    }

    MObject tmpObject = root;
    MItDependencyGraph itor(tmpObject,
                                    MFn::kInvalid,
                                    direction,
                                    MItDependencyGraph::kBreadthFirst,
                                    MItDependencyGraph::kNodeLevel,
                                    &status);
    P3D_DEFORM_STATUS(status);

    while (!itor.isDone())
    {
        object = itor.thisNode(&status);
        if (status)
        {
            MFnDependencyNode thisNode(object, &status);
            if (status)
            {
                MString tmp = thisNode.typeName(&status);
                if (status)
                {
                    if (tmp == typeName)
                    {
                        return MS::kSuccess;
                    }
                }
            }
        }

        status = itor.next();
        P3D_DEFORM_STATUS(status);
    }

    object = MObject::kNullObj;
    return MS::kFailure;
}


MStatus p3dDeformFindInHistory(const MObject& root,
                                         const MString& typeName,
                                         bool upstream,
                                         MObject& object)
{
    MStatus status;

    MFnDependencyNode rootNode(root, &status);
    P3D_DEFORM_STATUS(status);

    // short circuit search if passed node is of type typeName
    MString tmp = rootNode.typeName(&status);
    P3D_DEFORM_STATUS(status);
    if (tmp == typeName)
    {
        object = root;
        return MS::kSuccess;
    }

    // search passed node's history
    status = p3dDeformFindInHistoryInternal(root, typeName, upstream, object);

    if (!status)
    {
        MStatus localStatus;

        // if it's a transform node, check its first-level children,
        // if they themselves aren't transform nodes
        MFnTransform transformFn(root, &localStatus);
        if (!localStatus)
            return status;

        unsigned childCount = transformFn.childCount(&localStatus);
        P3D_DEFORM_STATUS(localStatus);

        for (unsigned i = 0; i < childCount; ++i)
        {
            MObject child = transformFn.child(i, &localStatus);
            P3D_DEFORM_STATUS(localStatus);

            MFnTransform childFn(child, &localStatus);
            if (!localStatus)
            {
                // child isn't a transform, so search its history
                status = p3dDeformFindInHistoryInternal(child, typeName, upstream, object);
                if (status)
                    break;
            }
        }
    }

    return status;
}



MStatus p3dDeformFindKeyIndex(const MPlug& keyIndxPlug, float keyVal, int& index)
{
    unsigned i;
    index = -1;
    MFloatArray keyIndexArray;
    MStatus status;

    for (i=0; i < keyIndxPlug.numElements(); i++)
    {
        float curKey;
    
        MPlug elementPlug = keyIndxPlug.elementByLogicalIndex(i, &status);
    
        P3D_DEFORM_STATUS(status);
        status = elementPlug.getValue(curKey);
        P3D_DEFORM_STATUS(status);
        keyIndexArray.append(curKey);
    }
    //now we search that key array
    for (i=0; i < keyIndexArray.length(); i++)      //find which array we're dealing with
    {
        float curKey = keyIndexArray[i];
        if (fabs(curKey - keyVal) < 0.001)
        {
            index = i;
            break;
        }

    }

    //because of the low precision that we store the keys at, sometimes there's roundoff error
    //and we can "lose" our keys
    if (index == -1)  //we didn't find it: either it's not there or there's some numerical error
    {
        for (i=0; i < keyIndexArray.length(); i++)
        {
            float curKey = keyIndexArray[i];
            //this is a less accurate test but will catch some (seemingly unavoidable) roundoff errors
            //in the way numbers are stored by the slider internally versus their GUI representation
            //my feeling is this is ok because keys right next to each other shouldn't vary widely.

            if ((fabs((curKey-0.001) - keyVal) < 0.001) || (fabs((curKey+0.001) - keyVal) < 0.001))
                                                                                                                            
            {
                index = i;
                break;
            }

        }

        if (index == -1)
        {
            MGlobal::displayError("didn\'t find the key index.");
            return MStatus::kFailure;
        }
    }

    return MStatus::kSuccess;
}


MStatus p3dDeformGetPlugData(const MPlug& inPlug, MIntArray& out, int index)
{
    MStatus status;
    MPlug tmpElPlug = inPlug.elementByLogicalIndex(index, &status);
    P3D_DEFORM_STATUS(status);
    MObject tmpPlugObj;
    status = tmpElPlug.getValue(tmpPlugObj);
    P3D_DEFORM_STATUS(status);
    MFnIntArrayData tmpIAD(tmpPlugObj, &status);
    P3D_DEFORM_STATUS(status);
    status = tmpIAD.copyTo(out);
    P3D_DEFORM_STATUS(status);
    return status;

}

MStatus p3dDeformGetPlugData(const MPlug& inPlug, MVectorArray& out, int index)
{
    MStatus status;
    MPlug tmpElPlug = inPlug.elementByLogicalIndex(index, &status);
    P3D_DEFORM_STATUS(status);
    MObject tmpPlugObj;
    status = tmpElPlug.getValue(tmpPlugObj);
    P3D_DEFORM_STATUS(status);
    MFnVectorArrayData tmpAD(tmpPlugObj, &status);
    P3D_DEFORM_STATUS(status);
    status = tmpAD.copyTo(out);
    P3D_DEFORM_STATUS(status);
    return status;
}

MStatus p3dDeformGetPlugData(const MPlug& inPlug, MVectorArray& out)
{
    MStatus status;
    MObject tmpPlugObj;
    status = inPlug.getValue(tmpPlugObj);
    P3D_DEFORM_STATUS(status);
    MFnVectorArrayData tmpAD(tmpPlugObj,&status);
    P3D_DEFORM_STATUS(status);
    status = tmpAD.copyTo(out);
    P3D_DEFORM_STATUS(status);
    return status;
}

MStatus p3dDeformGetPlugData(const MPlug& inPlug, MIntArray& out)
{
    MStatus status;
    MObject tmpPlugObj;
    status = inPlug.getValue(tmpPlugObj);
    P3D_DEFORM_STATUS(status);
    MFnIntArrayData tmpAD(tmpPlugObj,&status);
    P3D_DEFORM_STATUS(status);
    status = tmpAD.copyTo(out);
    P3D_DEFORM_STATUS(status);
    return status;
}

MStatus p3dDeformSetPlugData(MPlug& outPlug, const MIntArray& in, int index)
{
    MStatus status;
    MPlug tmpElPlug = outPlug.elementByLogicalIndex(index, &status);
    P3D_DEFORM_STATUS(status);
    MObject dataObj;
    status = tmpElPlug.getValue(dataObj);
    P3D_DEFORM_STATUS(status);
    MFnIntArrayData tmpIAD(dataObj, &status);
    P3D_DEFORM_STATUS(status);
    status = tmpIAD.set(in);
    P3D_DEFORM_STATUS(status);
    status = tmpElPlug.setValue(tmpIAD.object() );
    P3D_DEFORM_STATUS(status);
    return status;
}


MStatus p3dDeformSetPlugData(MPlug& outPlug, const MVectorArray& in, int index)
{
    MStatus status;
    MPlug tmpElPlug = outPlug.elementByLogicalIndex(index, &status);
    P3D_DEFORM_STATUS(status);
    MObject dataObj;
    status = tmpElPlug.getValue(dataObj);
    P3D_DEFORM_STATUS(status);
    MFnVectorArrayData tmpIAD(dataObj, &status);
    P3D_DEFORM_STATUS(status);
    status = tmpIAD.set(in);
    P3D_DEFORM_STATUS(status);
    status = tmpElPlug.setValue(tmpIAD.object() );
    P3D_DEFORM_STATUS(status);
    return status;
}

MStatus p3dDeformBuildContiguousSelectionSet(MString& selCmd, const MString& meshName, const MIntArray& allIndices)
{
    //NOTE: this requires that allIndices be sorted
    selCmd = "select -add ";
    MString mshTmp =meshName;
    mshTmp+=".vtx[";
    unsigned i;
    bool contig =false;  //a flag to indicate whether or not we're in a contiguous group of indices
    //this is so that we can select e.g. mesh.vtx[1:100]
    //so we build a string like:
    //select mesh.vtx[0:50] mesh.vtx[101] mesh.vtx[103:109] etc.

    //vIndices is an array of indices that we can sort to help find contiguous groups

    int* vIndices = new int[allIndices.length()];
    allIndices.get(vIndices);
    qsort(vIndices, allIndices.length(), sizeof(int), intCompare);
    for (i=0;i < allIndices.length() - 1; i++)
    {
        if (contig == false)    //we're starting a new selection set
        {
            selCmd+=mshTmp;
        }
        if (vIndices[i+1] - vIndices[i] != 1)  //not a contiguous group
        {
            contig = false;
            selCmd+=vIndices[i];
        }
        else
        {
            if (contig == false)    //starting a new contiguous group
            {
                selCmd+=vIndices[i];
                selCmd+=":";
            }
            contig = true;
            continue;
        }
        selCmd+="] ";     //close off the selection set
    }
        //at the last index
    if (!contig)
        selCmd+=mshTmp;
    selCmd+=vIndices[i];
    selCmd+="] ";
    delete[] vIndices;

    return MStatus::kSuccess;
}



//helper function for qsort used below
int intCompare( const void *arg1, const void *arg2 )
{
    int a1 = *(int*)arg1;
    int a2 = *(int*)arg2;
    if (a1 < a2)
        return -1;
    else if (a1 > a2)
        return 1;
    else return 0;
    
}

bool keyEquals(float key1, float key2)
{
    if (fabsf(key1-key2) < P3D_DEFORM_KEY_EPSILON)
        return true;
    else return false;

}

MStatus p3dDeformGetActiveTweaks(const MObject& meshNode, MIntArray& indices, MVectorArray& offsets, const float tolerance)
{
    MFnMesh meshFn(meshNode);
    MStatus status;
    MObject tweakNode;
    status = p3dDeformFindInHistory(meshNode, "tweak", true, tweakNode);
    P3D_DEFORM_STATUS(status);


    MFnDependencyNode tweakFn(tweakNode);
    MPlug vlistPlug = tweakFn.findPlug("vlist", &status);
    P3D_DEFORM_STATUS(status);

    MPlug vlistElPlug = vlistPlug.elementByLogicalIndex(0, &status);
    P3D_DEFORM_STATUS(status);

    MPlug vertexPlug = vlistElPlug.child(0, &status);      

    MVector curVtx;
    unsigned long numVerts = meshFn.numVertices();

    //this gets all the vertices in the mesh
    //and sees if it's been tweaked

    for (unsigned i=0; i < numVerts; i++)
    {
        MPlug curVtxPlug = vertexPlug.elementByLogicalIndex(i, &status);
        curVtxPlug.child(0).getValue(curVtx.x);
        curVtxPlug.child(1).getValue(curVtx.y);
        curVtxPlug.child(2).getValue(curVtx.z);
        curVtx.x = MDistance::internalToUI(curVtx.x);
        curVtx.y = MDistance::internalToUI(curVtx.y);
        curVtx.z = MDistance::internalToUI(curVtx.z);

        if (curVtx.length() > tolerance)
        {
            indices.append(i);
            offsets.append(curVtx);
        }
    }
    return status;
}

MStatus p3dDeformGetTweaksByIndex(const MObject& meshNode, const MIntArray& indices, MVectorArray& offsets)
{
    MStatus status;
    MObject tweakNode;
    status = p3dDeformFindInHistory(meshNode, "tweak", true, tweakNode);
    P3D_DEFORM_STATUS(status);


    MFnDependencyNode tweakFn(tweakNode);
    MPlug vlistPlug = tweakFn.findPlug("vlist", &status);
    P3D_DEFORM_STATUS(status);

    MPlug vlistElPlug = vlistPlug.elementByLogicalIndex(0, &status);
    P3D_DEFORM_STATUS(status);

    MPlug vertexPlug = vlistElPlug.child(0, &status);      

    MVector curVtx;
    //this gets all the vertices in the mesh
    //and sees if it's been tweaked

    for (unsigned i=0; i < indices.length(); i++)
    {
        MPlug curVtxPlug = vertexPlug.elementByLogicalIndex(indices[i], &status);
        curVtxPlug.child(0).getValue(curVtx.x);
        curVtxPlug.child(1).getValue(curVtx.y);
        curVtxPlug.child(2).getValue(curVtx.z);
        curVtx.x = MDistance::internalToUI(curVtx.x);
        curVtx.y = MDistance::internalToUI(curVtx.y);
        curVtx.z = MDistance::internalToUI(curVtx.z);
    }
    return status;
}

MStatus p3dDeformSetTweaks(const MObject& meshNode, const MVectorArray& offsets)
{
    MStatus status;
    MFnMesh meshFn(meshNode);
    MObject tweakNode;
    status = p3dDeformFindInHistory(meshNode, "tweak", true, tweakNode);
    P3D_DEFORM_STATUS(status);

    MFnDependencyNode tweakFn(tweakNode);
    MPlug vlistPlug = tweakFn.findPlug("vlist", &status);
    P3D_DEFORM_STATUS(status);

    MPlug vlistElPlug = vlistPlug.elementByLogicalIndex(0, &status);
    P3D_DEFORM_STATUS(status);

    MPlug vertexPlug = vlistElPlug.child(0, &status);      

    MVector curVtx;
    MPlug curVtxPlug;
    for (int t = 0; t < meshFn.numVertices(); t++)
    {
        curVtx = offsets[t];
        curVtxPlug = vertexPlug.elementByLogicalIndex(t, &status);
        curVtxPlug.child(0).setValue(MDistance::uiToInternal(curVtx.x));
        curVtxPlug.child(1).setValue(MDistance::uiToInternal(curVtx.y));
        curVtxPlug.child(2).setValue(MDistance::uiToInternal(curVtx.z));
    }
    return status;
}


MStatus p3dDeformSetTweaksByIndex(const MObject& meshNode, const MIntArray& indices, const MVectorArray& offsets)
{
    MStatus status;
    MObject tweakNode;
    status = p3dDeformFindInHistory(meshNode, "tweak", true, tweakNode);
    P3D_DEFORM_STATUS(status);

    MFnDependencyNode tweakFn(tweakNode);
    MPlug vlistPlug = tweakFn.findPlug("vlist", &status);
    P3D_DEFORM_STATUS(status);

    MPlug vlistElPlug = vlistPlug.elementByLogicalIndex(0, &status);
    P3D_DEFORM_STATUS(status);

    MPlug vertexPlug = vlistElPlug.child(0, &status);      

    MVector curVtx;
    MPlug curVtxPlug;
    for (unsigned t = 0; t < indices.length(); t++)
    {
        curVtx = offsets[t];
        int curIdx = indices[t];
        curVtxPlug = vertexPlug.elementByLogicalIndex(curIdx, &status);
        P3D_DEFORM_STATUS(status);
        curVtxPlug.child(0).setValue(MDistance::uiToInternal(curVtx.x));
        curVtxPlug.child(1).setValue(MDistance::uiToInternal(curVtx.y));
        curVtxPlug.child(2).setValue(MDistance::uiToInternal(curVtx.z));
    }

    return status;
}
void p3dDeformDebugFloat(MString description, float val)
{
    if(!P3D_DEBUG_MODE) return;
    description += " ";
    description += val;
    MGlobal::displayInfo(description);
}

void p3dDeformDebugInt(MString description, int val)
{
    if(!P3D_DEBUG_MODE) return;
    description += " ";
    description += val;
    MGlobal::displayInfo(description);
}

void p3dDeformDebugBool(MString description, bool val)
{
    if(!P3D_DEBUG_MODE) return;
    description += " ";
    if(val == true)
        description += "TRUE";
    else description += "FALSE";
    MGlobal::displayInfo(description);
}

void p3dDeformDebugTrace(MString description)
{
    if(!P3D_DEBUG_MODE) return;
    MGlobal::displayInfo(description);
}

void p3dDeformDebugString(MString description, const char* str)
{
    if(!P3D_DEBUG_MODE) return;
    description += " ";
    description += str;
    MGlobal::displayInfo(description);
}



void p3dDeformDebugNumArray(MString description, MIntArray array)
{
    if(!P3D_DEBUG_MODE) return;
    for(unsigned i = 0; i < array.length(); i++)
    {
        description += " ";
        description += array[i];
        description += ", ";
    }
    MGlobal::displayInfo(description);
}

void p3dDeformDebugNumArray(MString description, MFloatArray array)
{
    if(!P3D_DEBUG_MODE) return;
    for(unsigned i = 0; i < array.length(); i++)
    {
        description += " ";
        description += array[i];
        description += ", ";
    }
    MGlobal::displayInfo(description);
}

void p3dDeformDebugNumArray(MString description, MVectorArray array)
{
    if(!P3D_DEBUG_MODE) return;
    for(unsigned i = 0; i < array.length(); i++)
    {
        description += " ";
        description += "<";
        description += array[i].x;
        description += ",";
        description += array[i].y;
        description += ",";
        description += array[i].z;
        description += ",";
        description += ">";
        description += ", ";
    }
    MGlobal::displayInfo(description);
}

void p3dDeformDebugVector(MString description, MVector vect)
{
     if(!P3D_DEBUG_MODE) return;
     description += " ";
     description += "<";
     description += vect.x;
     description += ",";
     description += vect.y;
     description += ",";
     description += vect.z;
     description += ",";
     description += ">";
     MGlobal::displayInfo(description);
}

void p3dDeformDebugNumArray(MString description, MDoubleArray dArray, char* filename)
{
     if(!P3D_DEBUG_MODE) return;
     MGlobal::displayInfo(description);
     ofstream file (filename);
     file << dArray;
     file.close();
}

void p3dDeformDebugNumArray(MString description, MVectorArray vArray, char* filename)
{
     if(!P3D_DEBUG_MODE) return;
     MGlobal::displayInfo(description);
     ofstream file (filename);
     file << vArray;
     file.close();
}

void p3dDeformDebugP3dOffsets(MString description, p3dOffset* offsetArray, int length)
{
    if(!P3D_DEBUG_MODE) return;
    for(int i = 0; i < length; i++)
    {
        description += " ";
        description += "<";
        description += offsetArray[i].index;
        description += ",";
        description += offsetArray[i].x;
        description += ",";
        description += offsetArray[i].y;
        description += ",";
        description += offsetArray[i].z;
        description += ">";
        description += ", ";
    }
    MGlobal::displayInfo(description);
    MGlobal::displayInfo(description);

}


// End of file.



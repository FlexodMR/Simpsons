/*===========================================================================
    p3dDeformer/utility.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_UTILITY_HPP
#define P3D_DEFORM_UTILITY_HPP



#define P3D_DEFORM_STATUS(status) \
    if (!(status)) \
    { \
        MString pre_msg = "ERROR "; \
        pre_msg += __FILE__; \
        pre_msg += "("; \
        pre_msg += __LINE__; \
        pre_msg += ")"; \
        (status).perror(pre_msg); \
        return (status); \
    }


class MString;
class MDagPath;
class MObject;
class MVectorArray;
class MIntArray;
class MPlug;


// Finds first instance of a geometry with the given name
// - retrieves its dagpath in meshPath
//
extern MStatus p3dDeformFindDependencyNode(const MString& depName,
                                                         MObject& depNode);


// Retrieves the first instance of a dependency node of the given
// type (nodeType) in the history (past or future) of the passed node
//
extern MStatus p3dDeformFindInHistory(const MObject& node,
                                                  const MString& nodeType,
                                                  bool future,
                                                  MObject& object);

MStatus p3dDeformFindKeyIndex(const MPlug&, float, int&);
MStatus p3dDeformGetPlugData(const MPlug&, MIntArray&, int);
MStatus p3dDeformGetPlugData(const MPlug&, MVectorArray&, int);
MStatus p3dDeformGetPlugData(const MPlug&, MIntArray&);
MStatus p3dDeformGetPlugData(const MPlug&, MVectorArray&);
MStatus p3dDeformSetPlugData(MPlug&, const MIntArray&, int);
MStatus p3dDeformSetPlugData(MPlug&, const MVectorArray&, int);
MStatus p3dDeformBuildContiguousSelectionSet(MString&, const MString&, const MIntArray&);
int intCompare( const void *, const void *);
bool keyEquals(float, float);
MStatus p3dDeformGetActiveTweaks(const MObject&, MIntArray&, MVectorArray&, const float);
MStatus p3dDeformSetTweaks(const MObject&, const MVectorArray& offsets);
MStatus p3dDeformSetTweaksByIndex(const MObject&, const MIntArray&, const MVectorArray&);
MStatus p3dDeformGetTweaksByIndex(const MObject&, const MIntArray&, MVectorArray&);

//debug utils: prints to script editor window
void p3dDeformDebugFloat(MString description, float val);
void p3dDeformDebugInt(MString description, int val);
void p3dDeformDebugBool(MString description, bool val);
void p3dDeformDebugTrace(MString description);
void p3dDeformDebugVector(MString description, MVector vect);
void p3dDeformDebugNumArray(MString description, MIntArray array);
void p3dDeformDebugNumArray(MString description, MVectorArray array);
void p3dDeformDebugNumArray(MString description, MVectorArray array, char* filename);
void p3dDeformDebugNumArray(MString description, MFloatArray array);
void p3dDeformDebugNumArray(MString description, MDoubleArray dArray, char* filename);
void p3dDeformDebugString(MString description, const char* str);
void p3dDeformDebugP3dOffsets(MString description, p3dOffset* offsetArray, int length);


#endif


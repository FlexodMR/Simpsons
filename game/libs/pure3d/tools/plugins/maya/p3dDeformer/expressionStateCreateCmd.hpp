/*===========================================================================
    p3dDeformer/expressionStateCreateCmd.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_EXPRESSIONSTATECREATECMD_HPP
#define P3D_DEFORM_EXPRESSIONSTATECREATECMD_HPP


#include <maya/MPxCommand.h>
#include <maya/MDGModifier.h>
#include "expressionState.hpp"

class MArgList;

class p3dDeformExpressionStateCreateCmd: public MPxCommand
{
public:

    p3dDeformExpressionStateCreateCmd();
    virtual ~p3dDeformExpressionStateCreateCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, MString stateName);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

    static MString INVALID_STATE;

private:

    MObject state;
    MDGModifier dgModifier;
};

/*
This class provides a command to move the mesh into the configuration corresponding
to a certain key pose.  It gets called when the user clicks on a key value in the key list box.
*/
class p3dDeformExpressionStateSetPoseCmd : public MPxCommand
{
public:

    p3dDeformExpressionStateSetPoseCmd();
    virtual ~p3dDeformExpressionStateSetPoseCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, float);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:

    
    MDGModifier dgModifier;
};

/*
This class extracts the tweak information from the mesh and fills in the offset and indices
attributes.
*/
class p3dDeformExpressionStateSetKeyCmd : public MPxCommand
{
public:

    p3dDeformExpressionStateSetKeyCmd();
    virtual ~p3dDeformExpressionStateSetKeyCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, float);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:

    
    MDGModifier dgModifier;
};

/*
This class provides a command that solves the following problem:
When you've set a key pose at time t, with vertices 1-20, say, and
then you set another key pose at time u, with vertices 21-30, then key u
knows nothing about vertices 1-20 and does not interpolate them properly.
This function does an exhaustive search of all the vertex offset arrays
every time a new bunch of vertices are added, and keys all of the new ones at zero
to make sure that every key pose interpolates all the vertices in the expression properly.  
This means, then, every key pose has max(vertices) in it, even though some of them may be 0.

*/
class p3dDeformExpressionStateAddExtraKeysCmd : public MPxCommand
{
public:

    p3dDeformExpressionStateAddExtraKeysCmd();
    virtual ~p3dDeformExpressionStateAddExtraKeysCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, float);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:

    
    MDGModifier dgModifier;
};

class p3dDeformUpdateExpressionCmd : public MPxCommand
{
public:

    p3dDeformUpdateExpressionCmd();
    virtual ~p3dDeformUpdateExpressionCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, float, int);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:

    
    MDGModifier dgModifier;
    
};

class p3dDeformPruneExpressionCmd : public MPxCommand
{
public:

    p3dDeformPruneExpressionCmd();
    virtual ~p3dDeformPruneExpressionCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, float);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:
    MDGModifier dgModifier;
};

class p3dDeformTestStateCmd : public MPxCommand
{
public:
    p3dDeformTestStateCmd();
    virtual ~p3dDeformTestStateCmd();

    static void* creator();
    MStatus doIt(const MObject& depNode, float);
    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    
private:
    MDGModifier dgModifier;
    int getKeys(int key_count, MPlug& key_indices_array,
                    MFloatArray& keys, bool positive);
    void findBoundingKeys(MFloatArray& keys, float weight_value,
                                MFloatArray& boundingKeys);
    bool validKeysExist(MPlug& keyIndicesPlug, int numKeys);

    p3dOffsetArray highP3dOffsets;
    p3dOffsetArray lowP3dOffsets;
};

#endif





/*===========================================================================
    p3dDeformer/expressionGroupCreateCmd.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_EXPRESSIONGROUPCREATECMD_HPP
#define P3D_DEFORM_EXPRESSIONGROUPCREATECMD_HPP


#include <maya/MPxCommand.h>
#include <maya/MDGModifier.h>


class MArgList;


class p3dDeformExpressionGroupCreateCmd: public MPxCommand
{
public:

    p3dDeformExpressionGroupCreateCmd();
    virtual ~p3dDeformExpressionGroupCreateCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, MString);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

private:

    MDGModifier dgModifier;
};

class p3dDeformExpressionGroupResetPoseCmd : public MPxCommand
{
public:

    p3dDeformExpressionGroupResetPoseCmd();
    virtual ~p3dDeformExpressionGroupResetPoseCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode,int suppress = 0);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

private:

    MDGModifier dgModifier;
};

class p3dDeformExpressionGroupSaveCmd : public MPxCommand
{
public:

    p3dDeformExpressionGroupSaveCmd();
    virtual ~p3dDeformExpressionGroupSaveCmd();

    static void* creator();

    MStatus doIt(const MObject& depNode, MString fileName);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

private:

    MDGModifier dgModifier;
};


class p3dDeformExpressionGroupReadCmd : public MPxCommand
{
public:

    p3dDeformExpressionGroupReadCmd();
    virtual ~p3dDeformExpressionGroupReadCmd();

    static void* creator();

    MStatus doIt(const MObject& meshNode, const MString fileName);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

private:

    MDGModifier dgModifier;
};

#endif


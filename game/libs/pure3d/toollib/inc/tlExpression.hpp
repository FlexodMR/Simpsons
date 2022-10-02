/*===========================================================================
    File:: tlExpression.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLEXPRESSION_HPP
#define _TLEXPRESSION_HPP

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlDataChunk;
class tlInventory;
class tlSkin;

enum p3dExpressionStage
{
    EXPRESSION_STAGE_1,
    EXPRESSION_STAGE_2,
    EXPRESSION_STAGE_3
};

enum p3dExpressionMixerType 
{ 
    UNDEFINED, 
    POSE, 
    HSPLINE_OFFSET, 
    VERTEX_OFFSET 
};

//*****************************************************************************
// tlExpression
//*****************************************************************************
class tlExpression
{
public:
    tlExpression();
    tlExpression(const tlExpression& expr);
    tlExpression(tlDataChunk* chunk);
    virtual ~tlExpression();

    void SetName(const char* n);
    const char* GetName() const                     { return name; }

    void LoadFromChunk(tlDataChunk* chunk);
    void LoadFromChunk16(tlDataChunk* chunk);
    tlDataChunk* Chunk();

    int  GetNumKeys() const                         { return numKeys; }
    void SetNumKeys(int numKeys);
    
    void  AppendKey(unsigned long index, float key);
    void  SetKey(int i, unsigned long index, float key);
    float GetKey(int i) const;
    unsigned long GetIndex(int i) const;
    void  SortKeys();

private:
    char*           name;
    int             numKeys;
    int             maxKeys;   
    float*          keys;
    unsigned long*  indices;
};

//*****************************************************************************
// tlExpressionGroup
//*****************************************************************************
class tlExpressionGroup : public tlEntity
{
public:
    tlExpressionGroup();
    tlExpressionGroup(const tlExpressionGroup& group);
    tlExpressionGroup(tlDataChunk* ch);
    ~tlExpressionGroup();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16()                          { assert(0); return NULL;}

    void SetTargetName(const char* tgtName);
    const char* GetTargetName() const               { return targetName; }

    void SetNumExpressions(int nExpr);
    int GetNumExpressions() const                   { return numExpr; }

    int AppendExpression(const tlExpression& expr, p3dExpressionStage stage);
    void SetExpression(int i, const tlExpression& expr);
    void SetExpressionStage(int i, p3dExpressionStage stage);
    tlExpression* GetExpression(int i) const;
    p3dExpressionStage GetExpressionStage(int i) const;

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

private:
    char*               targetName;
    int                 numExpr;
    int                 maxExpr;
    p3dExpressionStage* stages;
    tlExpression**      expressions;

    tlSkin*             targetPtr;
};

//*****************************************************************************
// tlExpressionMixer
//*****************************************************************************
class tlExpressionMixer : public tlEntity
{
public:
    tlExpressionMixer();
    tlExpressionMixer(const tlExpressionMixer& mixer);
    tlExpressionMixer(tlDataChunk *ch);
    ~tlExpressionMixer();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16()                          { assert(0); return NULL;}

    void SetType(p3dExpressionMixerType t)          { mixerType = t; }
    p3dExpressionMixerType Type(void) const         { return mixerType; }

    void SetTargetName(const char *new_target);
    const char* TargetName(void) const              { return targetName; }

    void SetExpressionGroupName(const char *new_eg);
    const char* ExpressionGroupName(void) const     { return groupName; }

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

private:
    p3dExpressionMixerType  mixerType;
    char*                   targetName;
    char*                   groupName;

    tlSkin*                 targetPtr;
};

//*****************************************************************************
// tlExpressionLoader
//*****************************************************************************
class tlExpressionGroupLoader : public tlEntityLoader
{
public:
    tlExpressionGroupLoader();

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk);
};

//*****************************************************************************
// tlExpressionMixer
//*****************************************************************************
class tlExpressionMixerLoader : public tlEntityLoader
{
public:
    tlExpressionMixerLoader();

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

/*===========================================================================
    File:: tlExpression.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlExpression.hpp"
#include "tlExpressionChunk.hpp"
#include "tlVertexOffsetExpressionChunk16.hpp"
#include "tlExpressionAnimChunk16.hpp"
#include "tlSkin.hpp"

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"
#include <memory.h>

static const unsigned EXPRESSION_VERSION = 0;
static const unsigned EXPRESSION_GROUP_VERSION = 0;
static const unsigned EXPRESSION_MIXER_VERSION = 0;

//*****************************************************************************
// tlExpression
//*****************************************************************************
tlExpression::tlExpression():
    name(NULL),
    numKeys(0),
    maxKeys(0),
    keys(NULL),
    indices(NULL)
{
}

tlExpression::tlExpression(const tlExpression& expr):
    name(NULL),
    numKeys(0),
    maxKeys(0),
    keys(NULL),
    indices(NULL)
{
    SetName(expr.GetName());
    SetNumKeys(expr.GetNumKeys());   

    numKeys = maxKeys;
    memcpy(keys, expr.keys, sizeof(float) * numKeys);
    memcpy(indices, expr.indices, sizeof(unsigned long) * numKeys);
}

tlExpression::tlExpression(tlDataChunk* chunk):
    name(NULL),
    numKeys(0),
    maxKeys(0),
    keys(NULL),
    indices(NULL)
{
    switch (chunk->ID())
    {
        case Pure3D::Expression::VERTEX_EXPRESSION:
        {
            LoadFromChunk(chunk);
            break;
        }
        case P3D_VERTEX_OFFSET_EXPRESSION:
        {
            LoadFromChunk16(chunk);
            break;
        }
    }
}

tlExpression::~tlExpression()
{
    delete [] keys;
    delete [] indices;
}

void 
tlExpression::SetName(const char* n)
{
    strdelete(name);
    name = strnew(n);
}

void 
tlExpression::LoadFromChunk(tlDataChunk* chunk)
{
    tlExpressionChunk* pChunk = dynamic_cast<tlExpressionChunk*>(chunk);
    assert(pChunk);
    assert(pChunk->Version() == EXPRESSION_VERSION);

    SetName(pChunk->GetName());
    SetNumKeys(pChunk->GetNumKeys());

    numKeys = maxKeys;
    memcpy(keys, pChunk->GetKeys(), sizeof(float) * numKeys);
    memcpy(indices, pChunk->GetIndices(), sizeof(unsigned long) * numKeys);
}
    
void 
tlExpression::LoadFromChunk16(tlDataChunk* chunk)
{
    tlVertexOffsetExpressionChunk16* pChunk = dynamic_cast<tlVertexOffsetExpressionChunk16*>(chunk);
    assert(pChunk);

    SetName(pChunk->GetName());
    SetNumKeys(pChunk->GetNumKeys());

    numKeys = maxKeys;
    memcpy(keys, pChunk->GetKeys(), sizeof(float) * numKeys);
    memcpy(indices, pChunk->GetIndices(), sizeof(unsigned long) * numKeys);
}

tlDataChunk* 
tlExpression::Chunk()
{
    tlExpressionChunk* pChunk = new tlExpressionChunk;
    
    pChunk->SetVersion(EXPRESSION_VERSION);
    pChunk->SetName(GetName());
    pChunk->SetNumKeys(numKeys);
    pChunk->SetKeys(keys, numKeys);
    pChunk->SetIndices(indices, numKeys);
    
    return pChunk;
}

void 
tlExpression::SetNumKeys(int nKeys)
{
    if (nKeys<=0)
    {
        numKeys = 0;
        maxKeys = 0;
        delete [] keys;
        keys = NULL;
        delete [] indices;
        indices = NULL;
    }
    else if (numKeys != nKeys)
    {
        float* newKeys = new float[nKeys];
        unsigned long* newIndices = new unsigned long[nKeys];
        memset(newKeys,0,sizeof(float)*nKeys);
        memset(newIndices,0,sizeof(unsigned long)*nKeys);
          
        if (numKeys > nKeys)
        {
            numKeys = nKeys;
            memcpy(newKeys,keys,sizeof(float)*nKeys);
            memcpy(newIndices,indices,sizeof(unsigned long)*nKeys);
        }
        else if (numKeys > 0)
        {
            memcpy(newKeys,keys,sizeof(float)*numKeys);
            memcpy(newIndices,indices,sizeof(unsigned long)*numKeys);     
        }
        delete [] keys;
        delete [] indices;
        maxKeys = nKeys;
        keys = newKeys;
        indices = newIndices;
    }
}

void 
tlExpression::AppendKey(unsigned long index, float key)
{   
    if (numKeys==maxKeys)
    {
        // Double number of keys.
        // If there are no keys, start with 2.
        SetNumKeys( ( numKeys > 0 ) ? ( numKeys * 2 ) : 2 );
    }

    keys[numKeys] = key;
    indices[numKeys] = index;    
    ++numKeys;    
}

void 
tlExpression::SetKey(int i, unsigned long index, float key)
{   
    assert((i<numKeys)&&(i>=0));
    keys[i] = key;
    indices[i] = index;
}

float 
tlExpression::GetKey(int i) const
{
    assert((i<numKeys)&&(i>=0));
    return keys[i];
}

unsigned long 
tlExpression::GetIndex(int i) const
{
    assert((i<numKeys)&&(i>=0));
    return indices[i];
}

void 
tlExpression::SortKeys()
{
    int i, j;
    //bubble sort of keys and keyIndices
    for (i = 0; i < numKeys; i++)
    {
        for (j=0; j < numKeys; j++)
        {
            if (keys[j] > keys[i])
            {
                float temp = keys[j];
                keys[j] = keys[i];
                keys[i] = temp;
                int tempIdx = indices[j];
                indices[j] = indices[i];
                indices[i] = tempIdx;
            }
        }
    }
}

//*****************************************************************************
// tlExpressionGroup
//*****************************************************************************
tlExpressionGroup::tlExpressionGroup():
    tlEntity(),
    targetName(NULL),
    numExpr(0),
    maxExpr(0),
    stages(NULL),
    expressions(NULL),
    targetPtr(NULL)
{
}

tlExpressionGroup::tlExpressionGroup(const tlExpressionGroup& group):
    tlEntity(),
    targetName(NULL),
    numExpr(0),
    maxExpr(0),
    stages(NULL),
    expressions(NULL),
    targetPtr(NULL)
{
    SetName(group.GetName());
    SetTargetName(group.GetTargetName());
    SetNumExpressions(group.GetNumExpressions());

    for (int i = 0; i < maxExpr; i++)
    {
        AppendExpression(*group.GetExpression(i),group.GetExpressionStage(i));
    }

    targetPtr = group.targetPtr;
}

tlExpressionGroup::tlExpressionGroup(tlDataChunk* ch):
    tlEntity(),
    targetName(0),
    numExpr(0),
    maxExpr(0),
    stages(NULL),
    expressions(NULL),
    targetPtr(NULL)
{
    switch (ch->ID())
    {
        case Pure3D::Expression::VERTEX_EXPRESSION_GROUP:
        {
            LoadFromChunk(ch);
            break;
        }
        case P3D_EXPRESSION_GROUP:
        {
            LoadFromChunk16(ch);
            break;
        }
    }
}

tlExpressionGroup::~tlExpressionGroup()
{
    strdelete(targetName);

    delete [] stages;
    stages = NULL;

    for (int i = 0; i < numExpr; i++)
    {
        delete expressions[i];
        expressions[i] = NULL;
    }
    delete [] expressions;
}

void 
tlExpressionGroup::LoadFromChunk(tlDataChunk* ch)
{
    tlExpressionGroupChunk* eg = dynamic_cast<tlExpressionGroupChunk*>(ch);
    assert(eg != NULL);
    assert(eg->GetVersion() == EXPRESSION_GROUP_VERSION);

    SetName(eg->GetName());
    SetTargetName(eg->GetTargetName());
    SetNumExpressions(eg->GetNumExpressions());

    numExpr = maxExpr;

    unsigned long* tempStages = eg->GetStages();

    int i;
    for (i = 0; i < numExpr; i++)
    {
        stages[i] = (p3dExpressionStage)tempStages[i];
    }

    int exprIndex = 0;
    for (i = 0; i < eg->SubChunkCount(); ++i)
    {
        tlDataChunk* subch = eg->GetSubChunk(i);

        switch (subch->ID())
        {
            case Pure3D::Expression::VERTEX_EXPRESSION:
            {                
                assert(exprIndex < numExpr);
                expressions[exprIndex] = new tlExpression(subch);
                ++exprIndex;
                break;
            }
            default:
                break;
        }
    }
    assert(exprIndex == numExpr);
}

void 
tlExpressionGroup::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_EXPRESSION_GROUP);

    tlExpressionGroupChunk16* eg = dynamic_cast<tlExpressionGroupChunk16*>(ch);
    assert(eg != NULL);

    SetName(eg->GetName());    
    SetTargetName(eg->GetTargetName());
    SetNumExpressions(eg->GetNumExpression());

    numExpr = maxExpr;

    unsigned long* tempStages = eg->GetStages();

    int i;
    for (i = 0; i < numExpr; i++)
    {
        stages[i] = (p3dExpressionStage)tempStages[i];
    }

    int exprIndex = 0;
    for (i = 0; i < eg->SubChunkCount(); ++i)
    {
        tlDataChunk* subch = eg->GetSubChunk(i);

        switch (subch->ID())
        {
            case P3D_VERTEX_OFFSET_EXPRESSION:
            {
                assert(exprIndex < numExpr);
                expressions[exprIndex] = new tlExpression(subch);
                ++exprIndex;
                break;
            }
            default:
                break;
        }
    }
    assert(exprIndex == numExpr);
}

tlDataChunk* 
tlExpressionGroup::Chunk()
{
    tlExpressionGroupChunk* chunk = new tlExpressionGroupChunk;

    chunk->SetVersion(EXPRESSION_GROUP_VERSION);
    chunk->SetName(GetName());
    chunk->SetTargetName(targetName);
    chunk->SetNumExpressions(numExpr);    

    unsigned long* tempStages = new unsigned long[numExpr];

    int i;
    for (i = 0; i < numExpr; i++)
    {
        tempStages[i] = (unsigned long)stages[i];
    }
    
    chunk->SetStages(tempStages, numExpr);
    delete [] tempStages;

    int exprCount = 0;
    for (i = 0; i < numExpr; ++i)
    {
        if(expressions[i])
        {
            chunk->AppendSubChunk(expressions[i]->Chunk());
            ++exprCount;
        }
    }

    assert(exprCount == numExpr);
    return chunk;
}

void 
tlExpressionGroup::SetTargetName(const char* tgtName)
{
    strdelete(targetName);
    targetName = strnew(tgtName);
}

void 
tlExpressionGroup::SetNumExpressions(int nExpr)
{
    if (nExpr<=0)
    {
        delete [] stages;
        stages = NULL;
        for (int i = 0; i < numExpr; i++)
        {
            delete expressions[i];
        }
        delete [] expressions;
        expressions = NULL;
        numExpr = 0;
        maxExpr = 0;
    }
    else if (numExpr != nExpr)
    {
        p3dExpressionStage* newStages = new p3dExpressionStage[nExpr];
        tlExpression** newExpressions = new tlExpression*[nExpr];
        memset(newStages,0,sizeof(p3dExpressionStage)*nExpr);
        memset(newExpressions,0,sizeof(tlExpression*)*nExpr);
          
        if (numExpr > nExpr)
        {
            memcpy(newStages,stages,sizeof(p3dExpressionStage)*nExpr);
            memcpy(newExpressions,expressions,sizeof(tlExpression*)*nExpr);

            for (int i = nExpr; i < numExpr; i++)
            {
                delete expressions[i];
                expressions[i] = NULL;
            }
            numExpr = nExpr;
        }
        else if (numExpr > 0)
        {
            memcpy(newStages,stages,sizeof(p3dExpressionStage)*numExpr);
            memcpy(newExpressions,expressions,sizeof(tlExpression*)*numExpr);     
        }
        delete [] stages;
        delete [] expressions;
        maxExpr = nExpr;
        stages = newStages;
        expressions = newExpressions;
    }
}

int
tlExpressionGroup::AppendExpression(const tlExpression& expr, p3dExpressionStage stage)
{   
    if (numExpr==maxExpr)
    {
        // Double number of expressions.
        // If there are no expressions, start with 2.
        SetNumExpressions( ( numExpr > 0 ) ? ( numExpr * 2 ) : 2 );
    }

    stages[numExpr] = stage;
    expressions[numExpr] = new tlExpression(expr);
    ++numExpr;    

    return numExpr-1;
}

void 
tlExpressionGroup::SetExpression(int i, const tlExpression& expr)
{
    assert((i<numExpr)&&(i>=0));
    delete expressions[i];
    expressions[i] = new tlExpression(expr);
}

void 
tlExpressionGroup::SetExpressionStage(int i, p3dExpressionStage stage)
{
    assert((i<numExpr)&&(i>=0));
    stages[i] = stage;
}

tlExpression* 
tlExpressionGroup::GetExpression(int i) const
{
    assert((i<numExpr)&&(i>=0));
    return expressions[i];
}

p3dExpressionStage
tlExpressionGroup::GetExpressionStage(int i) const
{
    assert((i<numExpr)&&(i>=0));
    return stages[i];
}

void 
tlExpressionGroup::ResolveReferences(tlInventory* inv)
{
    targetPtr = toollib_find<tlSkin>(inv, targetName);
}

void 
tlExpressionGroup::MarkReferences(int m)
{
    if(targetPtr)
    {
        targetPtr->Mark(m);
        targetPtr->MarkReferences(m);
    }
}

bool 
tlExpressionGroup::FindReferenceMark(int m)
{
    bool ret = false;
    if(GetMark() == m)
    {
        ret = true;
    }
    if(targetPtr)
    {
        ret = ret || targetPtr->FindReferenceMark(m);
    }
    return ret;
}

//*****************************************************************************
// tlExpressionMixer
//*****************************************************************************
tlExpressionMixer::tlExpressionMixer() :
    mixerType(UNDEFINED), 
    targetName(NULL),
    groupName(NULL),
    targetPtr(NULL)
{
}

tlExpressionMixer::tlExpressionMixer(const tlExpressionMixer& mixer) :
    mixerType(UNDEFINED), 
    targetName(NULL),
    groupName(NULL),
    targetPtr(NULL)
{
    // private to tlEntity, so must do indirectly
    SetName( mixer.GetName() ); 

    SetType(mixer.Type());
    SetTargetName(mixer.TargetName());
    SetExpressionGroupName(mixer.ExpressionGroupName());
    targetPtr = mixer.targetPtr;
}

tlExpressionMixer::tlExpressionMixer(tlDataChunk *ch) :
    mixerType(UNDEFINED),
    targetName(NULL),
    groupName(NULL),
    targetPtr(NULL)
{
    switch (ch->ID())
    {
        case Pure3D::Expression::VERTEX_EXPRESSION_MIXER:
        {
            LoadFromChunk(ch);
            break;
        }
        case P3D_EXPRESSION_MIXER:
        {
            LoadFromChunk16(ch);
            break;
        }
    }
}

tlExpressionMixer::~tlExpressionMixer()
{
    strdelete(targetName);
    strdelete(groupName);
}

void
tlExpressionMixer::LoadFromChunk(tlDataChunk *ch)
{
    tlExpressionMixerChunk *ec = dynamic_cast<tlExpressionMixerChunk*>(ch);
    assert(ec != NULL);
    assert(ec->GetVersion() == EXPRESSION_MIXER_VERSION);

    SetName(ec->Name());
    SetType((p3dExpressionMixerType)ec->Type());
    SetTargetName(ec->TargetName());
    SetExpressionGroupName(ec->ExpressionGroupName());
}

void
tlExpressionMixer::LoadFromChunk16(tlDataChunk *ch)
{
    tlExpressionMixerChunk16 *ec = dynamic_cast<tlExpressionMixerChunk16 *>(ch);
    assert(ec != NULL);

    SetName(ec->Name());
    SetType((p3dExpressionMixerType)ec->Type());
    SetTargetName(ec->TargetName());
    SetExpressionGroupName(ec->ExpressionGroupName());
}

tlDataChunk*
tlExpressionMixer::Chunk()
{
    tlExpressionMixerChunk *ch = new tlExpressionMixerChunk;

    ch->SetVersion(EXPRESSION_MIXER_VERSION);
    ch->SetName(GetName());
    ch->SetType((int)mixerType);
    ch->SetTargetName(targetName);
    ch->SetExpressionGroupName(groupName);
    return ch;
}

void 
tlExpressionMixer::SetTargetName(const char *new_target)
{
    strdelete(targetName);
    targetName = strnew(new_target);
}

void 
tlExpressionMixer::SetExpressionGroupName(const char *new_eg)
{
    strdelete(groupName);
    groupName = strnew(new_eg);
}

void 
tlExpressionMixer::ResolveReferences(tlInventory* inv)
{
    targetPtr = toollib_find<tlSkin>(inv, targetName);
}

void 
tlExpressionMixer::MarkReferences(int m)
{
    if(targetPtr)
    {
        targetPtr->Mark(m);
        targetPtr->MarkReferences(m);
    }
}

bool 
tlExpressionMixer::FindReferenceMark(int m)
{
    bool ret = false;
    if(GetMark() == m)
    {
        ret = true;
    }
    if(targetPtr)
    {
        ret = ret || targetPtr->FindReferenceMark(m);
    }
    return ret;
}

//*****************************************************************************
// tlExpressionGroupLoader
//*****************************************************************************
tlExpressionGroupLoader::tlExpressionGroupLoader() : 
    tlEntityLoader(0)
{
}

bool
tlExpressionGroupLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case P3D_EXPRESSION_GROUP:
        case Pure3D::Expression::VERTEX_EXPRESSION_GROUP:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }    
}

tlEntity*
tlExpressionGroupLoader::Load(tlDataChunk* chunk)
{
    return new tlExpressionGroup(chunk);
}

//*****************************************************************************
// tlExpressionMixerLoader
//*****************************************************************************
tlExpressionMixerLoader::tlExpressionMixerLoader() : 
    tlEntityLoader(0)
{
}

bool
tlExpressionMixerLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case P3D_EXPRESSION_MIXER:
        case Pure3D::Expression::VERTEX_EXPRESSION_MIXER:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }    
}

tlEntity*
tlExpressionMixerLoader::Load(tlDataChunk* chunk)
{
    return new tlExpressionMixer(chunk);
}

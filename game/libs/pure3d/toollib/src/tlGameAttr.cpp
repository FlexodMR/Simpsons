//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlGameAttr.hpp"

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlGameAttrChunk.hpp"
#include "tlString.hpp"
#include <stdlib.h>
#include <assert.h>

#ifdef WIN32
#pragma warning(disable:4786)
#endif

//*****************************************************************************
// tlGameAttr
//*****************************************************************************
tlGameAttr::tlGameAttr() : 
    IntParams(),
    FloatParams(),
    ColourParams(),
    VectorParams(),
    MatrixParams()       
{  
}

tlGameAttr::~tlGameAttr()
{ 
}

tlGameAttr::tlGameAttr(tlDataChunk* ch)
{
    LoadFromChunk(ch);
}

tlGameAttr::tlGameAttr(const tlGameAttr& sh) :
    IntParams(),
    FloatParams(),
    ColourParams(),
    VectorParams(),
    MatrixParams()
{
    IntParams = sh.IntParams;
    FloatParams = sh.FloatParams;
    ColourParams = sh.ColourParams;
    VectorParams = sh.VectorParams;
    MatrixParams = sh.MatrixParams;
}   

void 
tlGameAttr::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::GameAttr::GAME_ATTR);
    tlGameAttrChunk* chunk = dynamic_cast<tlGameAttrChunk*>(ch);
    assert(chunk);
    SetName(chunk->GetName());
    
    int subChunkCount = chunk->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = chunk->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::GameAttr::INT_PARAM :
            {
                tlGameAttrIntParamChunk* intChunk = dynamic_cast <tlGameAttrIntParamChunk*> (subChunk);
                assert( intChunk );
                SetIntParam(intChunk->GetParamName(),intChunk->GetValue());
                break;
            }
            case Pure3D::GameAttr::FLOAT_PARAM :
            {
                tlGameAttrFloatParamChunk* floatChunk = dynamic_cast <tlGameAttrFloatParamChunk*> (subChunk);
                assert( floatChunk );
                SetFloatParam(floatChunk->GetParamName(),floatChunk->GetValue());
                break;
            }
            case Pure3D::GameAttr::COLOUR_PARAM :
            {
                tlGameAttrColourParamChunk* colourChunk = dynamic_cast <tlGameAttrColourParamChunk*> (subChunk);
                assert( colourChunk );
                SetFloatParam(colourChunk->GetParamName(), (float)colourChunk->GetValue());
                break;
            }
            case Pure3D::GameAttr::VECTOR_PARAM :
            {
                tlGameAttrVectorParamChunk* vectorChunk = dynamic_cast <tlGameAttrVectorParamChunk*> (subChunk);
                assert( vectorChunk );
                SetVectorParam(vectorChunk->GetParamName(),vectorChunk->GetValue());
                break;
            }
            case Pure3D::GameAttr::MATRIX_PARAM :
            {
                tlGameAttrMatrixParamChunk* matrixChunk = dynamic_cast <tlGameAttrMatrixParamChunk*> (subChunk);
                assert( matrixChunk );
                SetMatrixParam(matrixChunk->GetParamName(),matrixChunk->GetValue());
                break;
            }
            default:
            {
                break;
            }
        }
    }
}

tlDataChunk*
tlGameAttr::Chunk()
{
    tlGameAttrChunk* result = new tlGameAttrChunk;

    
    result->SetName(GetName());
    result->SetVersion(0);

    int params = 0;

    
    for(std::map<std::string,unsigned long>::const_iterator i = IntParams.begin() ; i != IntParams.end(); ++i)
    {
        result->AppendSubChunk(MakeIntParamChunk(i->first, i->second));
        params++;
    }

    for(std::map<std::string,float>::const_iterator f = FloatParams.begin() ; f != FloatParams.end(); ++f)
    {
        result->AppendSubChunk(MakeFloatParamChunk(f->first, f->second));
        params++;
    }

    for(std::map<std::string,tlColour>::const_iterator c = ColourParams.begin() ; c != ColourParams.end(); ++c)
    {
        result->AppendSubChunk(MakeColourParamChunk(c->first, c->second));
        params++;
    }

    for(std::map<std::string,tlPoint>::const_iterator v = VectorParams.begin() ; v != VectorParams.end(); ++v)
    {
        result->AppendSubChunk(MakeVectorParamChunk(v->first, v->second));
        params++;
    }

    for(std::map<std::string,tlMatrix>::const_iterator m = MatrixParams.begin() ; m != MatrixParams.end(); ++m)
    {
        result->AppendSubChunk(MakeMatrixParamChunk(m->first, m->second));
        params++;
    }

    result->SetNumParams(params);

    return result;
}


void
tlGameAttr::SetIntParam(std::string code, unsigned int value)
{
    IntParams[code] = value;
}

unsigned int
tlGameAttr::GetIntParam(std::string code)
{
    return IntParams[code];
}

void
tlGameAttr::DeleteIntParam(std::string code)
{
    IntParams.erase(code);
}

// float

void
tlGameAttr::SetFloatParam(std::string code, float value)
{
    FloatParams[code] = value;
}

float
tlGameAttr::GetFloatParam(std::string code)
{
    return FloatParams[code];
}

void
tlGameAttr::DeleteFloatParam(std::string code)
{
    FloatParams.erase(code);
}

// colour

void
tlGameAttr::SetColourParam(std::string code, const tlColour& value)
{
    ColourParams[code] = value;
}

const tlColour&
tlGameAttr::GetColourParam(std::string code)
{
    return ColourParams[code];
}

void
tlGameAttr::DeleteColourParam(std::string code)
{
    ColourParams.erase(code);
}

// vector

void
tlGameAttr::SetVectorParam(std::string code, const tlPoint& value)
{
    VectorParams[code] = value;
}

const tlPoint&
tlGameAttr::GetVectorParam(std::string code)
{
    return VectorParams[code];
}

void
tlGameAttr::DeleteVectorParam(std::string code)
{
    VectorParams.erase(code);
}

// matrix

void
tlGameAttr::SetMatrixParam(std::string code, const tlMatrix& value)
{
    MatrixParams[code] = value;
}

const tlMatrix&
tlGameAttr::GetMatrixParam(std::string code)
{
    return MatrixParams[code];
}

void
tlGameAttr::DeleteMatrixParam(std::string code)
{
    MatrixParams.erase(code);
}


tlDataChunk*
tlGameAttr::MakeIntParamChunk(std::string code, const int value)
{
    tlGameAttrIntParamChunk* result = new tlGameAttrIntParamChunk();
    result->SetParamName(code.c_str());
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlGameAttr::MakeFloatParamChunk(std::string code, const float value)
{
    tlGameAttrFloatParamChunk* result = new tlGameAttrFloatParamChunk();
    result->SetParamName(code.c_str());
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlGameAttr::MakeColourParamChunk(std::string code, const tlColour& value)
{
    tlGameAttrColourParamChunk* result = new tlGameAttrColourParamChunk();
    result->SetParamName(code.c_str());
    result->SetValue(value.ULong());
    return result;
}

tlDataChunk*
tlGameAttr::MakeVectorParamChunk(std::string code, const tlPoint& value)
{
    tlGameAttrVectorParamChunk* result = new tlGameAttrVectorParamChunk();
    result->SetParamName(code.c_str());
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlGameAttr::MakeMatrixParamChunk(std::string code, const tlMatrix& value)
{
    tlGameAttrMatrixParamChunk* result = new tlGameAttrMatrixParamChunk();
    result->SetParamName(code.c_str());
    result->SetValue(value);
    return result;
}

//*****************************************************************************
// tlGameAttrLoader
//*****************************************************************************
tlGameAttrLoader::tlGameAttrLoader() : 
    tlEntityLoader(Pure3D::GameAttr::GAME_ATTR)
{
}

tlEntity*
tlGameAttrLoader::Load(tlDataChunk* chunk)
{
    return new tlGameAttr(chunk);
}

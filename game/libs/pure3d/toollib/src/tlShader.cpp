//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifdef WIN32
    #pragma warning(disable:4786)
#endif

#include "tlShader.hpp"
#include "tlFourCC.hpp"
#include "tlShaderChunk.hpp"
#include "tlString.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "pddi/pddienum.hpp"

#include <stdlib.h>
#include <assert.h>


//*****************************************************************************
// tlShaderLoader
//*****************************************************************************
tlShader::tlShader() : 
        pddiShaderName(NULL),
        dx8ShaderName(NULL),
        dx8ShaderDefinition(NULL),
        vertexShader(NULL),
        vertexNeeds(0L),
        vertexMask(~0L),
        IntParams(),
        FloatParams(),
        ColourParams(),
        VectorParams(),
        MatrixParams(),
        TextureParams(),
        TexturePtrParams(),
        isTranslucent(false)
{
}

tlShader::~tlShader()
{
    strdelete(pddiShaderName);
    strdelete(dx8ShaderName);
    strdelete(dx8ShaderDefinition);
    strdelete(vertexShader);
    
    // free the contents of the texture array
    for(std::map<tlFourCC, char*>::const_iterator p = TextureParams.begin() ; p!= TextureParams.end(); ++p)
    {
        strdelete(p->second);
    }
}

tlShader::tlShader(tlDataChunk* ch) :
        pddiShaderName(NULL),
        dx8ShaderName(NULL),
        dx8ShaderDefinition(NULL),
        vertexShader(NULL),
        vertexNeeds(0L),
        vertexMask(~0L),
        IntParams(),
        FloatParams(),
        ColourParams(),
        VectorParams(),
        MatrixParams(),
        TextureParams(),
        TexturePtrParams(),
        isTranslucent(false)
{
    LoadFromChunk(ch);
}

tlShader::tlShader(const tlShader& sh) :
        pddiShaderName(NULL),
        dx8ShaderName(NULL),
        dx8ShaderDefinition(NULL),
        vertexShader(NULL),
        vertexNeeds(sh.vertexNeeds),
        vertexMask(sh.vertexMask),
        IntParams(),
        FloatParams(),
        ColourParams(),
        VectorParams(),
        MatrixParams(),
        TextureParams(),
        TexturePtrParams()
{
    SetName(sh.GetName());
    pddiShaderName = strnew(sh.pddiShaderName);
    dx8ShaderName = strnew(sh.dx8ShaderName);
    dx8ShaderDefinition = strnew(sh.dx8ShaderDefinition);
    vertexShader = strnew(sh.vertexShader);
    IntParams = sh.IntParams;
    FloatParams = sh.FloatParams;
    ColourParams = sh.ColourParams;
    VectorParams = sh.VectorParams;
    MatrixParams = sh.MatrixParams;
    for(std::map<tlFourCC,char*>::const_iterator t = sh.TextureParams.begin() ; t != sh.TextureParams.end(); ++t)
    {
        SetTextureParam(t->first, strnew(t->second));
    }
    TexturePtrParams = sh.TexturePtrParams;
}   

void 
tlShader::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Shader::SHADER);
    tlShaderChunk* chunk = dynamic_cast<tlShaderChunk*>(ch);
    assert(chunk);
    SetName(chunk->GetName());
    SetShaderType(chunk->GetPddiShaderName());
    isTranslucent = (chunk->HasTranslucency() != 0);
    vertexNeeds = chunk->VertexNeeds();
    vertexMask = chunk->VertexMask();
        
    int subChunkCount = chunk->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = chunk->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Shader::SHADER_DEFINITION :
            {
                tlShaderDefinitionChunk* defChunk = dynamic_cast <tlShaderDefinitionChunk*> (subChunk);
                assert( defChunk );
                SetDx8ShaderName(defChunk->GetName());
                SetDx8ShaderDefinition(defChunk->GetDefinition());
                break;
            }
            case Pure3D::Shader::TEXTURE_PARAM :
            {
                tlShaderTextureParamChunk* texChunk = dynamic_cast <tlShaderTextureParamChunk*> (subChunk);
                assert( texChunk );
                SetTextureParam(texChunk->GetParam(),texChunk->GetValue());
                break;
            }
            case Pure3D::Shader::INT_PARAM :
            {
                tlShaderIntParamChunk* intChunk = dynamic_cast <tlShaderIntParamChunk*> (subChunk);
                assert( intChunk );
                SetIntParam(intChunk->GetParam(),intChunk->GetValue());
                break;
            }
            case Pure3D::Shader::FLOAT_PARAM :
            {
                tlShaderFloatParamChunk* floatChunk = dynamic_cast <tlShaderFloatParamChunk*> (subChunk);
                assert( floatChunk );
                SetFloatParam(floatChunk->GetParam(),floatChunk->GetValue());
                break;
            }
            case Pure3D::Shader::COLOUR_PARAM :
            {
                tlShaderColourParamChunk* colourChunk = dynamic_cast <tlShaderColourParamChunk*> (subChunk);
                assert( colourChunk );
                SetColourParam(colourChunk->GetParam(),colourChunk->GetValue());
                break;
            }
            case Pure3D::Shader::VECTOR_PARAM :
            {
                tlShaderVectorParamChunk* vectorChunk = dynamic_cast <tlShaderVectorParamChunk*> (subChunk);
                assert( vectorChunk );
                SetVectorParam(vectorChunk->GetParam(),vectorChunk->GetValue());
                break;
            }
            case Pure3D::Shader::MATRIX_PARAM :
            {
                tlShaderMatrixParamChunk* matrixChunk = dynamic_cast <tlShaderMatrixParamChunk*> (subChunk);
                assert( matrixChunk );
                SetMatrixParam(matrixChunk->GetParam(),matrixChunk->GetValue());
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
tlShader::Chunk()
{
    tlShaderChunk* result = new tlShaderChunk();

    result->SetName(GetName());
    result->SetVersion(0);
    result->SetPddiShaderName(pddiShaderName);
    result->SetHasTranslucency(isTranslucent);
    result->SetVertexNeeds(vertexNeeds);
    result->SetVertexMask(vertexMask);
    if ((dx8ShaderName)&&(dx8ShaderDefinition))
    {
        result->AppendSubChunk(MakeShaderDefinitionChunk(dx8ShaderName,dx8ShaderDefinition));
    }

    int params = 0;

    
    for(std::map<tlFourCC,char*>::const_iterator t = TextureParams.begin() ; t != TextureParams.end(); ++t)
    {
        result->AppendSubChunk(MakeTextureParamChunk(t->first, t->second));
        params++;
    }

    for(std::map<tlFourCC,unsigned long>::const_iterator i = IntParams.begin() ; i != IntParams.end(); ++i)
    {
        result->AppendSubChunk(MakeIntParamChunk(i->first, i->second));
        params++;
    }

    for(std::map<tlFourCC,float>::const_iterator f = FloatParams.begin() ; f != FloatParams.end(); ++f)
    {
        result->AppendSubChunk(MakeFloatParamChunk(f->first, f->second));
        params++;
    }

    for(std::map<tlFourCC,tlColour>::const_iterator c = ColourParams.begin() ; c != ColourParams.end(); ++c)
    {
        result->AppendSubChunk(MakeColourParamChunk(c->first, c->second));
        params++;
    }

    for(std::map<tlFourCC,tlPoint>::const_iterator v = VectorParams.begin() ; v != VectorParams.end(); ++v)
    {
        result->AppendSubChunk(MakeVectorParamChunk(v->first, v->second));
        params++;
    }

    for(std::map<tlFourCC,tlMatrix>::const_iterator m = MatrixParams.begin() ; m != MatrixParams.end(); ++m)
    {
        result->AppendSubChunk(MakeMatrixParamChunk(m->first, m->second));
        params++;
    }

    result->SetNumParams(params);

    return result;
}


bool
tlShader::IsEquivalent(tlShader& shader) const
{
    if(pddiShaderName && shader.pddiShaderName)
        if(strcmp(pddiShaderName, shader.pddiShaderName) != 0) return false;

    if(dx8ShaderName && shader.dx8ShaderName)
        if(strcmp(dx8ShaderName, shader.dx8ShaderName) != 0) return false;

    if(vertexShader && shader.vertexShader)
        if(strcmp(vertexShader, shader.vertexShader) != 0) return false;

    if(vertexNeeds != shader.vertexNeeds) return false;
    if(vertexMask != shader.vertexMask) return false;

    std::map<tlFourCC,char*>::const_iterator t, u;
    for(t = TextureParams.begin() ; t != TextureParams.end(); ++t)
    {
        u = shader.TextureParams.find(t->first);
        if(u == shader.TextureParams.end()) return false;
        if(strcmp(t->second, u->second) != 0) return false;
    }

    if(IntParams != shader.IntParams) return false;
    if(FloatParams != shader.FloatParams) return false;
    if(ColourParams != shader.ColourParams) return false;
    if(VectorParams != shader.VectorParams) return false;
    if(MatrixParams != shader.MatrixParams) return false;

    return true;
}

// convert simple shaders to lightweight shaders if appropriate
// also remove unused ps2 parameters
// warning:  this removes things that might be needed on the Xbox, GC!
// someday, we should pass in a platform parameter and be a bit
// smarter about this.
bool
tlShader::Optimise()
{
    bool optimised = false;

    if(!strcmp(GetShaderType(), "simple"))
    {
        // these aren't used on the PS2
        DeleteIntParam(tlFourCC("MIPL"));
        DeleteFloatParam(tlFourCC("MIPK"));
        DeleteIntParam(tlFourCC("MMIN"));
        DeleteIntParam(tlFourCC("MMAX"));
        DeleteIntParam(tlFourCC("MMEX"));
        DeleteIntParam(tlFourCC("PLMD"));
        DeleteIntParam(tlFourCC("2SID"));

        if( GetIntParam(tlFourCC("LIT")) == 0 &&
            GetIntParam(tlFourCC("FIMD")) == PDDI_FILTER_BILINEAR &&
            GetIntParam(tlFourCC("UVMD")) == PDDI_UV_TILE &&
            GetIntParam(tlFourCC("BLMD")) == PDDI_BLEND_NONE &&
            GetIntParam(tlFourCC("ATST")) == 0 )
        { 
            optimised = true;
            SetShaderType("lightweight");
            DeleteIntParam(tlFourCC("LIT"));
            DeleteIntParam(tlFourCC("SHMD"));
            DeleteIntParam(tlFourCC("BLMD"));
            DeleteIntParam(tlFourCC("ATST"));
            DeleteIntParam(tlFourCC("ACMP"));
            DeleteIntParam(tlFourCC("FIMD"));
            DeleteIntParam(tlFourCC("UVMD"));
            DeleteFloatParam(tlFourCC("SHIN"));
            DeleteColourParam(tlFourCC("SPEC"));
            DeleteColourParam(tlFourCC("DIFF"));
            DeleteColourParam(tlFourCC("AMBI"));
            DeleteColourParam(tlFourCC("EMIS"));
        }
        else
        {
            // remove lighting related fields if lighting is disabled
            if( GetIntParam(tlFourCC("LIT")) == 0 )
            {
                DeleteIntParam(tlFourCC("LIT"));
                DeleteFloatParam(tlFourCC("SHIN"));
                DeleteColourParam(tlFourCC("SPEC"));
                DeleteColourParam(tlFourCC("DIFF"));
                DeleteColourParam(tlFourCC("AMBI"));
                DeleteColourParam(tlFourCC("EMIS"));
            }

            // remove other fields if they are set to default values
            if( GetIntParam(tlFourCC("SHMD")) == PDDI_SHADE_GOURAUD)
                DeleteIntParam(tlFourCC("SHMD"));
            if( GetIntParam(tlFourCC("BLMD")) == PDDI_BLEND_NONE)
                DeleteIntParam(tlFourCC("BLMD"));
            if( GetIntParam(tlFourCC("FIMD")) == PDDI_FILTER_BILINEAR)
                DeleteIntParam(tlFourCC("FIMD"));
            if( GetIntParam(tlFourCC("ATST")) == 0)
            {
                DeleteIntParam(tlFourCC("ATST"));
                DeleteIntParam(tlFourCC("ACMP"));
            }
            if( GetIntParam(tlFourCC("UVMD")) == PDDI_UV_TILE)
                DeleteIntParam(tlFourCC("UVMD"));
        }
    }

    return optimised;
}

void
tlShader::ResolveReferences(tlInventory* inv)
{
    for(std::map<tlFourCC, char*>::const_iterator p = TextureParams.begin() ; p!= TextureParams.end(); ++p)
    {
        TexturePtrParams[p->first] = toollib_find<tlTexture>(inv, p->second);
    }
}

void
tlShader::MarkReferences(int m)
{
    for(std::map<tlFourCC, char*>::const_iterator p = TextureParams.begin() ; p!= TextureParams.end(); ++p)
    {
        tlTexture* tex = GetTexturePtrParam(p->first);
        if(tex)
        {
            tex->Mark(m);
            tex->MarkReferences(m);
        }
    }
}

bool tlShader::FindMarkedTexture( int mark, int layerId ) const
{
    for(std::map<tlFourCC, char*>::const_iterator p = TextureParams.begin() ; p!= TextureParams.end(); ++p)
    {
        tlTexture* tex = GetTexturePtrParam(p->first);
        if(tex)
        {
            if(tex->FindReferenceMark(mark)){

                if( ( layerId == 0 ) && ( strcmp( "TEX", p->first.AsChar( ) ) == 0 ) )
                    return true;
                else if( ( layerId == 1 ) && ( strcmp( "TEX", p->first.AsChar( ) ) != 0 ) )
                    return true;
            }
        }
    }

    return false;
}

bool 
tlShader::FindReferenceMark(int m) const
{
    if(GetMark() == m)
    {
        return true;
    }

    for(std::map<tlFourCC, char*>::const_iterator p = TextureParams.begin() ; p!= TextureParams.end(); ++p)
    {
        tlTexture* tex = GetTexturePtrParam(p->first);
        if(tex)
        {
            if(tex->FindReferenceMark(m))
            {
                return true;
            }
        }
    }

    return false;
}


void
tlShader::SetShaderType(const char* name)
{
    strdelete(pddiShaderName);
    pddiShaderName = strnew(name);
}

void
tlShader::SetDx8ShaderName(const char* name)
{
    strdelete(dx8ShaderName);
    dx8ShaderName = strnew(name);
}

void
tlShader::SetDx8ShaderDefinition(const char* name)
{
    strdelete(dx8ShaderDefinition);
    dx8ShaderDefinition = strnew(name);
}

void
tlShader::SetVertexShader(const char* name)
{
    strdelete(vertexShader);
    vertexShader = strnew(name);
}

const char*
tlShader::GetTexture() const
{
    return GetTextureParam(tlFourCC("TEX")); 
}

tlTexture*
tlShader::GetTexturePtr() const
{
    return GetTexturePtrParam(tlFourCC("TEX")); 
}


// int

void
tlShader::SetIntParam(const tlFourCC& code, unsigned int value)
{
    IntParams[code] = value;
}

bool
tlShader::HasIntParam(const tlFourCC& code) const
{
    return (IntParams.find(code) != IntParams.end());
}

unsigned int
tlShader::GetIntParam(const tlFourCC& code) const
{
    std::map<tlFourCC, unsigned long>::const_iterator i = IntParams.find(code);

    if(i == IntParams.end())
    {
        return 0;
    }
    
    return i->second;
}

void
tlShader::DeleteIntParam(const tlFourCC& code)
{
    IntParams.erase(code);
}

// float

void
tlShader::SetFloatParam(const tlFourCC& code, float value)
{
    FloatParams[code] = value;
}

bool
tlShader::HasFloatParam(const tlFourCC& code) const
{
    return (FloatParams.find(code) != FloatParams.end());
}

float
tlShader::GetFloatParam(const tlFourCC& code) const
{
    std::map<tlFourCC, float>::const_iterator i = FloatParams.find(code);

    if(i == FloatParams.end())
    {
        return 0.0f;
    }

    return i->second;
}

void
tlShader::DeleteFloatParam(const tlFourCC& code)
{
    FloatParams.erase(code);
}

// colour

void
tlShader::SetColourParam(const tlFourCC& code, const tlColour& value)
{
    ColourParams[code] = value;
}

bool
tlShader::HasColourParam(const tlFourCC& code) const
{
    return (ColourParams.find(code) != ColourParams.end());
}

tlColour
tlShader::GetColourParam(const tlFourCC& code) const
{
    std::map<tlFourCC, tlColour>::const_iterator i = ColourParams.find(code);

    if(i == ColourParams.end())
    {
        return tlColour(0x00000000);
    }

    return i->second;
}

void
tlShader::DeleteColourParam(const tlFourCC& code)
{
    ColourParams.erase(code);
}

// vector

void
tlShader::SetVectorParam(const tlFourCC& code, const tlPoint& value)
{
    VectorParams[code] = value;
}

bool
tlShader::HasVectorParam(const tlFourCC& code) const
{
    return (VectorParams.find(code) != VectorParams.end());
}

tlPoint
tlShader::GetVectorParam(const tlFourCC& code) const
{
    std::map<tlFourCC, tlPoint>::const_iterator i = VectorParams.find(code);

    if(i == VectorParams.end())
    {
        return tlPoint(0.0f, 0.0f, 0.0f);
    }

    return i->second;
}

void
tlShader::DeleteVectorParam(const tlFourCC& code)
{
    VectorParams.erase(code);
}

// matrix

void
tlShader::SetMatrixParam(const tlFourCC& code, const tlMatrix& value)
{
    MatrixParams[code] = value;
}

bool
tlShader::HasMatrixParam(const tlFourCC& code) const
{
    return (MatrixParams.find(code) != MatrixParams.end());
}

tlMatrix
tlShader::GetMatrixParam(const tlFourCC& code) const
{
    std::map<tlFourCC, tlMatrix>::const_iterator i = MatrixParams.find(code);

    if(i == MatrixParams.end())
    {
        tlMatrix matrix;
        matrix.IdentityMatrix();
        return matrix;
    }

    return i->second;
}

void
tlShader::DeleteMatrixParam(const tlFourCC& code)
{
    MatrixParams.erase(code);
}

// Texture

void
tlShader::SetTextureParam(const tlFourCC& code, const char* value)
{
    strdelete(TextureParams[code]);
    TextureParams[code] = strnew(value);
    TexturePtrParams[code] = NULL;
}

bool
tlShader::HasTextureParam(const tlFourCC& code) const
{
    return (TextureParams.find(code) != TextureParams.end());
}

const char*
tlShader::GetTextureParam(const tlFourCC& code) const
{
    std::map<tlFourCC, char*>::const_iterator i = TextureParams.find(code);

    if(i == TextureParams.end())
    {
        return NULL;
    }

    return i->second;
}

void
tlShader::DeleteTextureParam(const tlFourCC& code)
{
    strdelete(TextureParams[code]);
    TextureParams.erase(code);
    TexturePtrParams.erase(code);
}


// Texture Pointer

void
tlShader::SetTexturePtrParam(const tlFourCC& code, tlTexture* value)
{
    TexturePtrParams[code] = value;
}

bool
tlShader::HasTexturePtrParam(const tlFourCC& code) const
{
    return (TexturePtrParams.find(code) != TexturePtrParams.end());
}

tlTexture*
tlShader::GetTexturePtrParam(const tlFourCC& code) const
{
    std::map<tlFourCC, tlTexture*>::const_iterator i = TexturePtrParams.find(code);

    if(i == TexturePtrParams.end())
    {
        return NULL;
    }

    return i->second;
}

void
tlShader::DeleteTexturePtrParam(const tlFourCC& code)
{
    TexturePtrParams.erase(code);
}


tlDataChunk*
tlShader::MakeTextureParamChunk(const unsigned long code, const char* value)
{
    tlShaderTextureParamChunk* result = new tlShaderTextureParamChunk();
    result->SetParam(code);
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlShader::MakeIntParamChunk(const unsigned long code, const int value)
{
    tlShaderIntParamChunk* result = new tlShaderIntParamChunk();
    result->SetParam(code);
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlShader::MakeFloatParamChunk(const unsigned long code, const float value)
{
    tlShaderFloatParamChunk* result = new tlShaderFloatParamChunk();
    result->SetParam(code);
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlShader::MakeColourParamChunk(const unsigned long code, const tlColour& value)
{
    tlShaderColourParamChunk* result = new tlShaderColourParamChunk();
    result->SetParam(code);
    result->SetValue(value.ULong());
    return result;
}

tlDataChunk*
tlShader::MakeVectorParamChunk(const unsigned long code, const tlPoint& value)
{
    tlShaderVectorParamChunk* result = new tlShaderVectorParamChunk();
    result->SetParam(code);
    result->SetValue(value);
    return result;
}

tlDataChunk*
tlShader::MakeMatrixParamChunk(const unsigned long code, const tlMatrix& value)
{
    tlShaderMatrixParamChunk* result = new tlShaderMatrixParamChunk();
    result->SetParam(code);
    result->SetValue(value);
    return result;
}

tlDataChunk* 
tlShader::MakeShaderDefinitionChunk(const char* name, const char* definition)
{
    tlShaderDefinitionChunk* result = new tlShaderDefinitionChunk();
    result->SetName(name);
    result->SetDefinition(definition);
    return result;
}

//*****************************************************************************
// tlShaderLoader
//*****************************************************************************
tlShaderLoader::tlShaderLoader() : 
    tlEntityLoader(Pure3D::Shader::SHADER)
{            
}

tlEntity*
tlShaderLoader::Load(tlDataChunk* chunk)
{
    return new tlShader(chunk);
}





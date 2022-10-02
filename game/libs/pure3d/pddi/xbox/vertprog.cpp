//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "vertprog.hpp"
#include "context.hpp"
#include "display.hpp"
#include "direct3d.hpp"
#include "../pddiext.hpp"
#include "util.hpp"
#include "../base/debug.hpp"

#ifdef _XBOX
#include "vsh/skin.h"
#include "vsh/skin_onebone.h"
#include "vsh/skin_csrp.h"
#include "vsh/skin_onebone_csrp.h"
#include "vsh/point_sprite.h"
#include "vsh/toon.h"
#include "vsh/toon2.h"
#include "vsh/refract.h"
#include "vsh/skin_toon.h"
#include "vsh/skin_refract.h"
#include "vsh/spheremap.h"
#include "vsh/bumpmap.h"
#endif

#define DEF_TEMPLATE(x,y) { templates[nTemplates].name = Hash(x); templates[nTemplates].tokens = y; templates[nTemplates ].nPrograms = 0; nTemplates++;}
#define ADD_DECL(x,y) decl[curDecl++] = x; stride += y;

// Hash() - a hashing function that uses the "hashpjw"
// algorithm.  Taken from Dragon book, p436
inline unsigned long Hash(const char *x)
{
    unsigned long h = 0;
    unsigned long g;

    while(*x != 0)
    {
        h = (h << 4) + *x++;
        if ((g = h & 0xf0000000) != 0)
        {
            h = (h ^ (g >> 24)) ^ g;
        }
    }
    return h;
}

d3dVertexProgramManager::d3dVertexProgramManager(d3dContext* c)
{
    context = c;
    nTemplates = 0;

    DEF_TEMPLATE("", 0);

#ifdef _XBOX
    DEF_TEMPLATE("skin", skinVertexShaderTokens);
    DEF_TEMPLATE("skin_onebone", skin_oneboneVertexShaderTokens);
    DEF_TEMPLATE("skin_csrp", skin_csrpVertexShaderTokens);
    DEF_TEMPLATE("skin_onebone_csrp", skin_onebone_csrpVertexShaderTokens);
    DEF_TEMPLATE("point_sprite", point_spriteVertexShaderTokens);    
    DEF_TEMPLATE("toon2", toon2VertexShaderTokens);
    DEF_TEMPLATE("toon", toonVertexShaderTokens);
    DEF_TEMPLATE("skin_toon", skin_toonVertexShaderTokens);
    DEF_TEMPLATE("refract", refractVertexShaderTokens);
    DEF_TEMPLATE("skin_refract", skin_refractVertexShaderTokens);
	DEF_TEMPLATE("spheremap", spheremapVertexShaderTokens );
	DEF_TEMPLATE("bumpmap", bumpmapVertexShaderTokens );
#endif

    PDDIASSERT(nTemplates <= maxTemplates);
}

d3dVertexProgramManager::~d3dVertexProgramManager()
{
    /*
        for(unsigned i = 0; i < nVertexShader; i++)
    {
        display->GetD3DDevice()->DeleteVertexShader(vertexShaders[i].shader->GetVS());
        delete vertexShaders[i].shader;
    }

    */
}

void d3dVertexProgramManager::Reset(void)
{
    for(unsigned i = 0; i < nTemplates; i++)
    {
        // TODO : should we delete teh allocated shaders ???
        templates[i].nPrograms = 0;
    }
}

d3dVertexProgram* d3dVertexProgramManager::GetVertexProgram(const char* name, pddiPrimType primType, unsigned vertexMask, unsigned aux)
{
    Template* base = &templates[0];
    unsigned id = Hash(name);
    bool compressed = (aux & pddiExtVertexProgram::COMPRESSED) != 0;

    for(unsigned i = 0; i < nTemplates; i++)
    {
        if(templates[i].name == id)
        {
            base = &templates[i];
            break;
        }
    }

    for(i = 0; i < (unsigned)base->nPrograms; i++)
    {
        if((primType == base->programs[i].GetPrimType()) && (vertexMask == base->programs[i].GetFormat()) && (aux == base->programs[i].GetAuxFormat()))
        {
            int tmp;
            if( i == 6 )
                tmp = 0;

            return &base->programs[i];
        }
    }

    PDDIASSERT(base->nPrograms < maxPrograms);
    d3dVertexProgram* program = &base->programs[base->nPrograms];
    base->nPrograms++;

    DWORD decl[64];
    unsigned curDecl = 0;
    unsigned stride = 0;

    ADD_DECL(D3DVSD_STREAM( 0 ), 0);
    ADD_DECL(D3DVSD_REG( D3DVSDE_POSITION,  D3DVSDT_FLOAT3 ), 12);

    unsigned uvCount = vertexMask & 0xf;

    if(vertexMask & PDDI_V_WEIGHTS)
    {
#ifdef _XBOX
        if(compressed)
        {
            ADD_DECL(D3DVSD_REG( D3DVSDE_BLENDWEIGHT,  D3DVSDT_NORMPACKED3 ), 4);
        }
        else
#endif
        {
            ADD_DECL(D3DVSD_REG( D3DVSDE_BLENDWEIGHT,  D3DVSDT_FLOAT3 ), 12);
        }
    }

#ifdef _XBOX
    if(vertexMask & PDDI_V_INDICES)
    {
        ADD_DECL(D3DVSD_REG( 15,  D3DVSDT_D3DCOLOR ), 4)
    }
#endif

    if(vertexMask & PDDI_V_NORMAL)
    {
#ifdef _XBOX
        if(compressed)
        {
            ADD_DECL(D3DVSD_REG( D3DVSDE_NORMAL,  D3DVSDT_NORMPACKED3 ), 4);
        }
        else
#endif
        {
            ADD_DECL(D3DVSD_REG( D3DVSDE_NORMAL,  D3DVSDT_FLOAT3 ), 12);
        }
    }

    if(vertexMask & PDDI_V_COLOUR)
    {
        ADD_DECL(D3DVSD_REG( D3DVSDE_DIFFUSE,  D3DVSDT_D3DCOLOR ), 4);
    }
    else if( vertexMask & PDDI_V_COLOUR2 )
    {
        ADD_DECL(D3DVSD_REG( D3DVSDE_DIFFUSE,  D3DVSDT_D3DCOLOR ), 4);
        ADD_DECL(D3DVSD_REG( D3DVSDE_SPECULAR,  D3DVSDT_D3DCOLOR ), 4);
    }

    if(vertexMask & PDDI_V_SPECULAR)
    {
        ADD_DECL(D3DVSD_REG( D3DVSDE_SPECULAR ,  D3DVSDT_D3DCOLOR ), 4)
    }

    for(i = 0; i < uvCount; i++)
    {
        ADD_DECL(D3DVSD_REG( D3DVSDE_TEXCOORD0 + i,  D3DVSDT_FLOAT2 ), 8);
    }

#ifdef _XBOX
    if(vertexMask & PDDI_V_SIZE)
    {
        ADD_DECL(D3DVSD_REG( 14,  D3DVSDT_FLOAT1 ), 4)
    }
    if(vertexMask & PDDI_V_W)
    {
        ADD_DECL(D3DVSD_REG( 13,  D3DVSDT_FLOAT1 ), 4)
    }
	if( vertexMask & PDDI_V_BINORMAL )
	{
        ADD_DECL(D3DVSD_REG( 6,  D3DVSDT_FLOAT3 ), 12);		//bi-normal to v6
    }
	if( vertexMask & PDDI_V_TANGENT )
	{
        ADD_DECL(D3DVSD_REG( 15,  D3DVSDT_FLOAT3 ), 12);	//tangent to v15
    }
#endif

    ADD_DECL(D3DVSD_END(), 0);

    unsigned long vs;
    DDVERIFY(context->GetDisplay()->GetD3DDevice()->CreateVertexShader(decl,  (unsigned long*)base->tokens, &vs, 0));
    program->SetData(primType, vertexMask, aux, stride, vs);
    return program;
}


void d3dVertexProgramManager::AddVertexProgram( const char* name, void* tokens )
{
    unsigned id = Hash( name );
    for(unsigned i = 0; i < nTemplates; i++)
    {
        if(templates[i].name == id)
        {
            // Program already added
            return;
        }
    }

    DEF_TEMPLATE( name, tokens );
}

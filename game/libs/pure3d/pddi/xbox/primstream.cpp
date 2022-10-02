/*===========================================================================
    prim.cpp
    02-Nov-00 Created by Neall

    Direct3D primitive rendering implementation

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "direct3d.hpp"
#include "prim.hpp"
#include "util.hpp"
#include "display.hpp"
#include "vertprog.hpp"
#include "../base/baseshader.hpp"
#include "shaders/shader.hpp"
#include "primstream.hpp"


// pddiPrimType
static D3DPRIMITIVETYPE primTable[] =
{
    D3DPT_TRIANGLELIST,
    D3DPT_TRIANGLESTRIP,
    D3DPT_LINELIST,
    D3DPT_LINESTRIP,
    D3DPT_POINTLIST,
};

// number of vertices that have to be copied into the next vertex
// buffer when a stripped primitive spans multiple buffers
static int dupTable[] =
{
    0, // D3DPT_TRIANGLELIST,
    2, // D3DPT_TRIANGLESTRIP,
    0, // D3DPT_LINELIST,
    1, // D3DPT_LINESTRIP,
    0, // D3DPT_POINTLIST
};

//----------------------------------------------------------------------

d3dPrimStream::d3dPrimStream(d3dContext* c) :
    d3d(0), context(c)
{
    d3d = context->GetDisplay()->GetD3DDevice();
    setVertexProgram = 0;
}

d3dPrimStream::~d3dPrimStream()
{
}

void d3dPrimStream::Begin(pddiPrimType type, unsigned vertexMask, pddiBaseShader* s, unsigned e, unsigned pass )
{
    static char dummy[] = "";
    static char skin[] = "skin";
    static char skinob[] = "skin_onebone";

    const char* name = dummy;

    expected = e;
    primType = type;

    if(vertexMask & PDDI_V_INDICES)
    {
        name = (vertexMask & PDDI_V_WEIGHTS) ? skin : skinob;
    }

    if(setVertexProgram)
    {
        vertexProgram = setVertexProgram;
    }
    else
    {
        vertexProgram = context->GetVertexProgram(name, type, vertexMask, 0);
    }

    PDDIASSERT(vertexProgram->GetFormat() == vertexMask);

    s->SetMaterial( pass ); // TODO : multipass

	d3dShader * shader = (d3dShader *) s;
	//now check if a shader is vertex shader or not, 
	//if yes, give the shader a chance to load the vertex shader constants
	//this will get rid of the risk that the constants are not loaded correctly
	//when a sinlge shader is cached for different geometry
	if( shader ->IsVertexShader( ) )
	{
		shader ->LoadVSConstants( );
	}

    if(vertexMask & PDDI_V_INDICES)
        context->LoadSkinConstants(s);

    d3d->SetVertexShader(vertexProgram->GetD3DVS());
    d3d->Begin(primTable[type]);

    count = 0;
}

void d3dPrimStream::End()
{
    PDDIASSERT(count == expected);
    d3d->End();

#ifdef PDDI_TRACK_STATS
    context->ADD_STAT(PDDI_STAT_STREAMED_PRIM_CALLS, 1);
    context->ADD_STAT(PDDI_STAT_STREAMED_PRIM, (float)VertsToPrims(primType, count));
#endif
}



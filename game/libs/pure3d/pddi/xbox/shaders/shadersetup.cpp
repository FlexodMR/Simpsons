//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "device.hpp"
#include "display.hpp"
#include "context.hpp"
#include "texture.hpp"
#include "prim.hpp"
#include "util.hpp"
#include "shadersetup.hpp"
#include "../base/baseshader.hpp"
#include "simpleshader.hpp"
#include "errorshader.hpp"
#include "lightmapshader.hpp"
#include "reflectshader.hpp"
#include "projectedtextureshader.hpp"
#include "pointspriteshader.hpp"
#include "layeredshader.hpp"
#include "layeredlmapshader.hpp"
#include "csrpshader.hpp"
#include "warpshader.hpp"
#include "toonvertexshader.hpp"
#include "toon2vertexshader.hpp"
#include "refractshader.hpp"
#include "spheremapshader.hpp"
#include "bumpmapvertexshader.hpp"

static pddiBaseShader* AllocErrorShader      ( pddiRenderContext* c, const char*, const char*)           { return new d3dErrorShader      ( (d3dContext*)c); }
static pddiBaseShader* AllocSimpleShader     ( pddiRenderContext* c, const char*, const char*)           { return new d3dSimpleShader     ( (d3dContext*)c); }
static pddiBaseShader* AllocLightmapShader   ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dLightMapShader   ( (d3dContext*)c); }
static pddiBaseShader* AllocReflShader       ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dReflShader       ( (d3dContext*)c); }
static pddiBaseShader* AllocProjectedTextureShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dProjectedTextureShader ( (d3dContext*)c); }
static pddiBaseShader* AllocPointSpriteShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dPointSpriteShader ( (d3dContext*)c); }
static pddiBaseShader* AllocLayeredShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dLayeredShader ( (d3dContext*)c); }
static pddiBaseShader* AllocLayeredLMapShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dLayeredLMapShader ( (d3dContext*)c); }
static pddiBaseShader* AllocCSRPShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dCSRPShader ( (d3dContext*)c, true); }
static pddiBaseShader* AllocCSRShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dCSRPShader ( (d3dContext*)c, false); }
static pddiBaseShader* AllocRefractShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dRefractVertexShader ( (d3dContext*)c ); }
static pddiBaseShader* AllocToon2VertexShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dToon2VertexShader ( (d3dContext*)c ); }
static pddiBaseShader* AllocToonVertexShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dToonVertexShader ( (d3dContext*)c ); }
static pddiBaseShader* AllocSpheremapShader       ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dSpheremapVertexShader       ( (d3dContext*)c); }
static pddiBaseShader* AllocBumpMapVertexShader       ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dBumpMapVertexShader       ( (d3dContext*)c); }
//static pddiBaseShader* AllocWarpShader ( pddiRenderContext* c, const char* name, const char* aux)  { return new d3dWarpShader ( (d3dContext*)c ); }


void d3dShaderSetup(void)
{
    pddiBaseShader::InstallShader("error",                 AllocErrorShader, NULL);
    pddiBaseShader::InstallShader("simple",                AllocSimpleShader, NULL);
    pddiBaseShader::InstallShader("lightweight",           AllocSimpleShader, NULL);
    pddiBaseShader::InstallShader("lightmap",              AllocLightmapShader, NULL);
    pddiBaseShader::InstallShader("environment",           AllocReflShader, NULL);    
    pddiBaseShader::InstallShader("projtex",               AllocProjectedTextureShader, NULL);
    pddiBaseShader::InstallShader("pointsprite",           AllocPointSpriteShader, NULL);
    pddiBaseShader::InstallShader("layered",               AllocLayeredShader, NULL);
    pddiBaseShader::InstallShader("layeredlmap",           AllocLayeredLMapShader, NULL);
#ifdef RAD_XBOX
    pddiBaseShader::InstallShader("csr",                   AllocCSRShader, NULL);
    pddiBaseShader::InstallShader("csrp",                  AllocCSRPShader, NULL);
//    pddiBaseShader::InstallShader("warp",                  AllocWarpShader, NULL);
    pddiBaseShader::InstallShader("toon2",                 AllocToon2VertexShader, NULL);
    pddiBaseShader::InstallShader("toon",                  AllocToonVertexShader, NULL);    
    pddiBaseShader::InstallShader("refract",               AllocRefractShader, NULL);
	pddiBaseShader::InstallShader("spheremap",             AllocSpheremapShader, NULL);
	pddiBaseShader::InstallShader("bumpmap",               AllocBumpMapVertexShader, NULL);
#endif
}

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlSimpleShader.hpp"

#include "pddi/pddienum.hpp"
#include "tlShaderChunk.hpp"
#include <stdlib.h>
#include <assert.h>

// the four character codes used by this shader:

static const unsigned long TEX  = tlFourCC("TEX");
static const unsigned long UVMD = tlFourCC("UVMD");
static const unsigned long FIMD = tlFourCC("FIMD");
static const unsigned long SHMD = tlFourCC("SHMD");
static const unsigned long LIT  = tlFourCC("LIT");
static const unsigned long AMBI = tlFourCC("AMBI");
static const unsigned long DIFF = tlFourCC("DIFF");
static const unsigned long EMIS = tlFourCC("EMIS");
static const unsigned long SPEC = tlFourCC("SPEC");
static const unsigned long SHIN = tlFourCC("SHIN");
static const unsigned long BLMD = tlFourCC("BLMD");
static const unsigned long ATST = tlFourCC("ATST");
static const unsigned long ACMP = tlFourCC("ACMP");
static const unsigned long ACTH = tlFourCC("ACTH");
static const unsigned long ZTST = tlFourCC("ZTST");
static const unsigned long ZWRT = tlFourCC("ZWRT");

tlSimpleShader::tlSimpleShader()
{
    SetShaderType("simple");

    SetTexture("");
    SetUVMode(PDDI_UV_CLAMP);
    SetFilterMode(PDDI_FILTER_BILINEAR);
    SetShadeMode(PDDI_SHADE_GOURAUD);
    SetIsLit(false);
    SetAmbient(tlColour(255,255,255));
    SetDiffuse(tlColour(0,0,0)); 
    SetEmissive(tlColour(0,0,0));
    SetSpecular(tlColour(0,0,0));
    SetShininess(0.0f);
    SetBlendMode(PDDI_BLEND_NONE);
    SetAlphaTest(false);
    SetAlphaCompare(PDDI_COMPARE_LESSEQUAL);
    SetAlphaCompareThreshold( 0.5f );
    SetZTest( 0 );  // Default -> Use current state
    SetZWrite( 0 );  // Default -> Use current state
}
 
tlSimpleShader::~tlSimpleShader()
{
}     

tlSimpleShader::tlSimpleShader(tlSimpleShader& shader)
{
    SetShaderType("simple");

    SetTexture(shader.GetTexture());
    SetUVMode(shader.GetUVMode());
    SetFilterMode(shader.GetFilterMode());
    SetShadeMode(shader.GetShadeMode());
    SetIsLit(shader.GetIsLit());
    SetAmbient(shader.GetAmbient());
    SetDiffuse (shader.GetDiffuse()); 
    SetEmissive(shader.GetEmissive());
    SetSpecular(shader.GetSpecular());
    SetShininess(shader.GetShininess());
    SetBlendMode(shader.GetBlendMode());
    SetAlphaTest(shader.GetAlphaTest());
    SetAlphaCompare(shader.GetAlphaCompare());
    SetAlphaCompareThreshold(shader.GetAlphaCompareThreshold());
    SetZTest( shader.GetZTest() );
    SetZWrite( shader.GetZWrite() );
    SetName(shader.GetName());
}

// Wrappers around the parameters

void            tlSimpleShader::SetTexture( const char* val) { SetTextureParam(TEX, val); }
const char*     tlSimpleShader::GetTexture(){ return GetTextureParam(TEX); }
void            tlSimpleShader::SetUVMode( const int val ) { SetIntParam(UVMD, val); }
int             tlSimpleShader::GetUVMode() { return GetIntParam(UVMD); }
void            tlSimpleShader::SetFilterMode( const int val ) { SetIntParam(FIMD, val); }
int             tlSimpleShader::GetFilterMode() { return GetIntParam(FIMD); }
void            tlSimpleShader::SetShadeMode( const int val ) { SetIntParam(SHMD, val); }
int             tlSimpleShader::GetShadeMode() { return GetIntParam(SHMD); }
void            tlSimpleShader::SetIsLit( const bool val ) { SetIntParam(LIT, val); }
bool            tlSimpleShader::GetIsLit() { return GetIntParam(LIT) ? true : false; }
void            tlSimpleShader::SetAmbient( const tlColour& val ) { SetColourParam(AMBI, val); }
tlColour        tlSimpleShader::GetAmbient() { return GetColourParam(AMBI); }
void            tlSimpleShader::SetDiffuse( const tlColour& val ) { SetColourParam(DIFF, val); }
tlColour        tlSimpleShader::GetDiffuse() { return GetColourParam(DIFF); }
void            tlSimpleShader::SetEmissive( const tlColour& val ) { SetColourParam(EMIS, val); }
tlColour        tlSimpleShader::GetEmissive() { return GetColourParam(EMIS); }
void            tlSimpleShader::SetSpecular( const tlColour& val ) { SetColourParam(SPEC, val); }
tlColour        tlSimpleShader::GetSpecular() { return GetColourParam(SPEC); }
void            tlSimpleShader::SetShininess( const float val ) { SetFloatParam(SHIN, val); }
float           tlSimpleShader::GetShininess() { return GetFloatParam(SHIN); }
void            tlSimpleShader::SetBlendMode( const int val ) { SetIntParam(BLMD, val); }
int             tlSimpleShader::GetBlendMode() { return GetIntParam(BLMD); }
void            tlSimpleShader::SetAlphaTest( const bool val ) { SetIntParam(ATST, val); }
bool            tlSimpleShader::GetAlphaTest() { return GetIntParam(ATST) ? true : false; }
void            tlSimpleShader::SetAlphaCompare( const int val ) { SetIntParam(ACMP, val); }
int             tlSimpleShader::GetAlphaCompare() { return GetIntParam(ACMP); }
void            tlSimpleShader::SetAlphaCompareThreshold( const float val ) { SetFloatParam(ACTH, val); }
float           tlSimpleShader::GetAlphaCompareThreshold() { return GetFloatParam(ACTH); }

// For Z-Test and Z-Write:
//   0 = Use default (whatever state is current)
//   1 = Force Off
//   2 = Force On  (not initially (30 Aug 2002) supported)
void            tlSimpleShader::SetZTest( const int val ) { SetIntParam(ZTST, val); }
int             tlSimpleShader::GetZTest() { return GetIntParam(ZTST); }
void            tlSimpleShader::SetZWrite( const int val ) { SetIntParam(ZWRT, val); }
int             tlSimpleShader::GetZWrite() { return GetIntParam(ZWRT); }

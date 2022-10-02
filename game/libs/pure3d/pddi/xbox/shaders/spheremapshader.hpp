//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SPHEREMAPVERTEXSHADER_HPP_
#define _SPHEREMAPVERTEXSHADER_HPP_

#include"..\pddi.hpp"
#include"shader.hpp"

class d3dContext;
class d3dTexture;

class d3dSpheremapVertexShader : public d3dShader
{
public:
     d3dSpheremapVertexShader(d3dContext* c);
     ~d3dSpheremapVertexShader();
    
     const char* GetType(void);
     int  GetPasses();

     void PreRender(void);
     void PostRender(void);

	 bool IsVertexShader( ){ return true; }
	 void LoadVSConstants( );
protected:
    //
    // methods
    //
    void SetPass(int pass = 0);

    // texture
    void SetTexture(pddiTexture* texture);
    void SetSphereMap(pddiTexture* texture);
    void SetEnvBlend(pddiColour c);
	void SetRotVect(const pddiVector & v);

    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];
	static pddiShadeVectorTable vectorTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeIntTable*     GetIntTable(void)     { return intTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable;}
	pddiShadeVectorTable*  GetVectorTable(void)  { return vectorTable;}


    // texturing
    d3dTexture*      texture;
    d3dTexture*      sphereMap;
    pddiColour       envBlend;
	pddiVector		 rotVect;
};

#endif

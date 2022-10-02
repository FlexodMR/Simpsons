//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TOONVERTEXSHADER_HPP_
#define _TOONVERTEXSHADER_HPP_

#include "..\pddi.hpp"
#include "shader.hpp"
#include "direct3d.hpp"

class d3dContext;
class d3dTexture;

class d3dToonVertexShader : public d3dShader
{
public:
    d3dToonVertexShader(d3dContext* c);
    ~d3dToonVertexShader();
    const char* GetType(void);
    virtual int  GetPasses();
    
    virtual void PreRender(void);
    virtual void PostRender(void);

	bool IsVertexShader( ){ return true; }
	void LoadVSConstants( );
protected:
    //
    // methods
    //
    virtual void SetPass(int pass = 0);
    
    void CreateShadeMap();

    void FillShadeMap( );
    
    pddiShadeIntTable*  GetIntTable(void) { return intTable;}
    pddiShadeColourTable*  GetColourTable(void) { return colourTable; }
    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}

    void SetToonStyle(int);

      
    void SetSilhoutte(pddiColour colour);
    void SetGradientLevel( int level );
    void SetTexture( pddiTexture *t );
    void SetLineWidth( float w );

    // alpha blending
    pddiBlendMode blendMode;
    pddiBlendFactor srcBlend;
    pddiBlendFactor destBlend;
    bool alphaTest;
    pddiCompareMode alphaCompare;
    
    static pddiShadeIntTable   intTable[];    
    static pddiShadeColourTable colourTable[];
    static pddiShadeFloatTable floatTable[];
    static pddiShadeTextureTable textureTable[];

    d3dTexture * shadeMap;    
    d3dTexture * baseTex;

    pddiColour  silhoutte;
    pddiMatrix matTrans;
    //hardware texture capabilities
    enum ToonStyle { TOON_DEFAULT, TOON_NO_SILHOUETTE, TOON_SILHOUETTE_ONLY };
    ToonStyle style; //0 = default, 1 = silhouette, 2 = depth

    int gradLevel;
    float lineWidth;
};

#endif

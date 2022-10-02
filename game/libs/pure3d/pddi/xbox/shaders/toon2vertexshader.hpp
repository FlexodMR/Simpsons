//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TOON2VERTEXSHADER_HPP_
#define _TOON2VERTEXSHADER_HPP_

#include "..\pddi.hpp"
#include "shader.hpp"
#include "direct3d.hpp"

class d3dContext;
class d3dTexture;

class d3dToon2VertexShader : public d3dShader
{
public:
    d3dToon2VertexShader(d3dContext* c);
    ~d3dToon2VertexShader();
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
    
    void CreateShadeMap();
    void CreateSilhoutteMap();

    void FillShadeMap( );
    void FillSilhoutteMap( );
    
    pddiShadeIntTable*  GetIntTable(void) { return intTable;}
    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeColourTable*  GetColourTable(void) { return colourTable; }
   
    pddiVector4  GetEyePos( );

    void SetToonStyle(int);
    void SetGradientLevel( int level );
    void SetEdgeDelta( float delta );
    void SetTexture( pddiTexture *t );
    
    static pddiShadeIntTable   intTable[];    
    static pddiShadeFloatTable   floatTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeColourTable colourTable[];

    d3dTexture * shadingMap;
    d3dTexture * silhoutteMap;

    d3dTexture *baseTex;

    pddiMatrix matTrans;
    //hardware texture capabilities
    enum ToonStyle { TOON_DEFAULT, TOON_SILHOUETTE, TOON_DEPTH};
    ToonStyle m_style; //0 = default, 1 = silhouette, 2 = depth

    float alphaThreshold;
    int gradLevel;
    int edgeDelta;
};

#endif

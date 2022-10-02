//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VERTEXANIMTEST_HPP
#define _VERTEXANIMTEST_HPP
#include "coverage.hpp"

class VertexAnimTest : public CoverageTest
{

public:
    VertexAnimTest(  );
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update( float deltaTime );    
    void BeginRender(const CoverAppRendering& appRender);
    virtual void Display();
    void EndRender(const CoverAppRendering& appRender);  
    virtual const char* GetName() = 0;
    void SetCamera( const char * name );
    void SetController( const char * name );    
    void SetFileName( const char * name );
    void SetDrawable( const char * name );
    
protected:
    char cameraName[ 128 ];
    char controllerName[ 128 ];    
    tFrameController *controller;
    char drawableName[ 128 ];
    char artFileName[ 512 ];
    tDrawable *drawable;
    tVectorCamera *camera;
    float scale;

};

class VertexAnimPosTest : public VertexAnimTest
{
public:
    VertexAnimPosTest( ){ scale = 1.f; };

    const char * GetName( ){ return "Vertex Position Animation"; }
    void Setup( );
};

class VertexAnimColourTest : public VertexAnimTest
{
public:
    VertexAnimColourTest( ){ scale = 300.f;};

    const char * GetName( ){ return "Vertex Colour Animation"; }
    void Setup( );
};

class VertexAnimUVTest : public VertexAnimTest
{
public:
    VertexAnimUVTest( ){scale = 300.f;};

    const char * GetName( ){ return "Vertex UV Animation"; }
    void Setup( );
};

class VertexAnimComboTest : public VertexAnimTest
{
public:
    VertexAnimComboTest( ){scale = 300.f;};

    const char * GetName( ){ return "Vertex Combo Animation"; }
    void Setup( );
};
#endif

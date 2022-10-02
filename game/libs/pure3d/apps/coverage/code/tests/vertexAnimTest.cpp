//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "vertexAnimTest.hpp"

VertexAnimTest::VertexAnimTest( )
:  controller( NULL ), drawable( NULL ), camera( NULL ), scale( 1 )
{

}

void VertexAnimTest::SetFileName( const char * name )
{
//    FillPath( name, artFileName );
     strcpy( artFileName, name );
}

void VertexAnimTest::SetCamera( const char * name )
{
    strcpy( cameraName, name );
}

void VertexAnimTest::SetDrawable( const char * name )
{
    strcpy( drawableName, name );
}

void VertexAnimTest::SetController( const char * name )
{
    strcpy( controllerName, name );
}

void VertexAnimTest::Setup( )
{
    SetupSection( );
    loadFlag = Load( artFileName );

    assert( loadFlag );
    
    camera = p3d::find<tVectorCamera>( cameraName );
    rmt::Vector v;

    if( camera ){
        camera->AddRef( );
        camera->GetPosition( &v );
        SetDefCameraPos( v );
    }


    controller = p3d::find<tFrameController>( controllerName );

    assert( controller );
    controller->AddRef( );

    drawable = p3d::find<tDrawable>( drawableName );    
    assert( drawable );
    drawable->AddRef( );
}

void VertexAnimTest::Update( float deltaTime )
{
    if( controller )
        controller->Advance( deltaTime );

    Display( );
}

void VertexAnimTest::Display( )
{
    p3d::stack->Push( );
    p3d::stack->Translate( 0, 10, 0 );
    p3d::stack->Scale( scale );
    
    if( drawable )
        drawable->Display( );
    p3d::stack->Pop( );
}

void VertexAnimTest::BeginRender(const CoverAppRendering& appRender)
{    

    CoverageTest::BeginRender( appRender );
}

void VertexAnimTest::EndRender(const CoverAppRendering& appRender)
{
    CoverageTest::EndRender( appRender );
}

void VertexAnimTest::Shutdown( )
{

    if( camera )
        camera->Release( );
    camera = NULL;

    if( drawable)
        drawable->Release( );
    drawable = NULL;

    if( controller )
        controller->Release( );
    controller = NULL;

}
        
///-------------------------Vertex Animation for Position-----------------------
void VertexAnimPosTest::Setup( )
{
    SetFileName( "vertexAnim/VertexAnimPos.p3d" );
    SetController( "MasterController" );
    SetDrawable( "Scene" );    

    scale = 20.f;
    VertexAnimTest::Setup( );
}

///-------------------------Vertex Animation for Colour-----------------------
void VertexAnimColourTest::Setup( )
{
    SetFileName( "vertexAnim/VertexAnimColour.p3d" );    
    SetController( "VRTX_pPlaneShape1" );
    SetDrawable( "pPlaneShape1" );

    VertexAnimTest::Setup( );
}

///-------------------------Vertex Animation for UV-----------------------
void VertexAnimUVTest::Setup( )
{
    SetFileName( "vertexAnim/VertexAnimUV.p3d" );    
    SetController( "VRTX_pPlaneShape1" );
    SetDrawable( "pPlaneShape1" );

    scale = 10;

    VertexAnimTest::Setup( );
}

///-------------------------Vertex Animation for UV-----------------------
void VertexAnimComboTest::Setup( )
{
    SetFileName( "vertexAnim/VertexAnimCombo.p3d" );    
    SetController( "VRTX_pPlaneShape1" );
    SetDrawable( "pPlaneShape1" );

    VertexAnimTest::Setup( );
}
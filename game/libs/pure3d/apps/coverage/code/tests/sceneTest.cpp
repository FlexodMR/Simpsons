//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/debugdraw.hpp>
#include "sceneTest.hpp"

using namespace RadicalMathLibrary;

//-------------------------------------------------------------------
// linear fog test
//-------------------------------------------------------------------
void LinearFogTest::Shutdown()
{
}

void LinearFogTest::Setup()
{
    SetupSection();
    Load("4LinearFog.p3d");
}

void LinearFogTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    p3d::pddi->PushState(PDDI_STATE_FOG);
    p3d::pddi->EnableFog(true);
    p3d::pddi->SetFog(tColour(255,255,255), 0.0f, 500.0f);
    
    tDrawable* draw = p3d::find<tDrawable>("ground");

    p3d::stack->Push();
    p3d::stack->Scale(10.0f);
    if(draw) draw->Display();
    p3d::stack->Pop();
    
    p3d::pddi->PopState(PDDI_STATE_FOG);
}

//-------------------------------------------------------------------
// debug draw test
//-------------------------------------------------------------------
DebugDrawTest::DebugDrawTest()
{
    SetFileName("debugDrawTest.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}

void DebugDrawTest::Display()
{
    ScenegraphTest::Display();

    tShader* shader = new tShader;
    if(!shader) return; // only return like this here!

    shader->AddRef();

    //
    // Draw Debug
    //
    Scenegraph::Scenegraph* scenegraph = dynamic_cast<Scenegraph::Scenegraph*>(draw);
    if(scenegraph)
    {
        
        Scenegraph::Drawable* dad = dynamic_cast<Scenegraph::Drawable*>(scenegraph->Find("dadShape"));
        if(dad)
        {
            tDrawable* drawable = dad->GetDrawable();
            if(drawable)
            {
                p3d::stack->Push();
                p3d::stack->Multiply(*(dad->GetWorldMatrix()));
                
                rmt::Box3D boundingBox;
                drawable->GetBoundingBox(&boundingBox);
                P3DDrawOrientedBox(boundingBox.low, boundingBox.high, *shader);
                p3d::stack->Pop();
            }
        }

        Scenegraph::Drawable* mom = dynamic_cast<Scenegraph::Drawable*>(scenegraph->Find("momShape"));
        if(mom)
        {
            tDrawable* drawable = mom->GetDrawable();
            if(drawable)
            {            
                rmt::Box3D boundingBox;
                drawable->GetBoundingBox(&boundingBox);

                rmt::Vector realPos = mom->GetWorldMatrix()->Row4(3);
                rmt::Vector xAxis   = mom->GetWorldMatrix()->Row4(0);      
                rmt::Vector yAxis   = mom->GetWorldMatrix()->Row4(1);
                rmt::Vector zAxis   = mom->GetWorldMatrix()->Row4(2);

                yAxis.Scale(boundingBox.high.y);

                rmt::Vector position;
                position.Clear();
                position.Add(realPos, yAxis);

                rmt::Vector position2;
                position2.Sub(realPos, yAxis);

                P3DDrawCapsule(boundingBox.high.x, position, position2, *shader);
                

                xAxis.Scale(boundingBox.high.x/2);
                yAxis.Scale(1.0); //reset
                yAxis.Scale(boundingBox.high.x);
                zAxis.Scale(boundingBox.high.x);

                position2.Add(realPos, yAxis);
                position2.Sub(xAxis); // to the side
                position2.Sub(zAxis); // to the front
                P3DDrawSphere(boundingBox.high.x/2, position2, *shader);

                position2.Add(realPos, yAxis);
                position2.Add(xAxis); // to the side
                position2.Sub(zAxis); // to the front
                P3DDrawSphere(boundingBox.high.x/2, position2, *shader);
            }
        }

        Scenegraph::Drawable* junior = dynamic_cast<Scenegraph::Drawable*>(scenegraph->Find("juniorShape"));
        if(junior)
        {
            tDrawable* drawable = junior->GetDrawable();
            if(drawable)
            {            
                rmt::Box3D boundingBox;
                drawable->GetBoundingBox(&boundingBox);

                // const yukkyness
                const rmt::Matrix *ptrPosition = (junior->GetWorldMatrix());
                const Vector4& posVec = ptrPosition->Row4(3);
                rmt::Vector realPos = posVec; 

                P3DDrawSphere(boundingBox.high.x, realPos, *shader);
            }
        }


        Scenegraph::Drawable* spot = dynamic_cast<Scenegraph::Drawable*>(scenegraph->Find("spotShape"));
        if(spot)
        {
            tDrawable* drawable = spot->GetDrawable();
            if(drawable)
            {            
                rmt::Box3D boundingBox;
                drawable->GetBoundingBox(&boundingBox);

                rmt::Vector realPos = spot->GetWorldMatrix()->Row4(3);
                rmt::Vector zAxis   = spot->GetWorldMatrix()->Row4(2);

                zAxis.Scale(boundingBox.high.z);

                rmt::Vector position;
                position.Clear();
                position.Add(realPos, zAxis);

                rmt::Vector position2;
                position2.Sub(realPos, zAxis);

                P3DDrawCylinder(boundingBox.high.x, position, position2, *shader);
            }
        }
    }

    shader->Release();
}

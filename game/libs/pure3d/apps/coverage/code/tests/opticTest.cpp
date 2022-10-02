//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "opticTest.hpp"
/*
//-------------------------------------------------------------------
// Lens flare test
//    Renders four lens flares
//-------------------------------------------------------------------
void LensFlareTest::Setup()
{
    SetupSection();
    
    tImageFactory factory;
    char name[512];

    FillPath("Optics/flare1.tga", name);
    tTexture* texture = factory.LoadAsTexture(name);
    texture->AddRef();
    fshader1 = new tShader;
    fshader1->AddRef();
    fshader1->SetTexture(PDDI_SP_BASETEX, texture);
    fshader1->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader1->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture->Release();

    FillPath("Optics/flare3.bmp", name);
    tTexture* texture2 = factory.LoadAsTexture(name);
    texture2->AddRef();
    fshader2 = new tShader;
    fshader2->AddRef();
    fshader2->SetTexture(PDDI_SP_BASETEX, texture2);
    fshader2->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader2->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture2->Release();

    FillPath("Optics/flare4.tga", name);
    tTexture* texture3 = factory.LoadAsTexture(name);
    texture3->AddRef();
    fshader3 = new tShader;
    fshader3->AddRef();
    fshader3->SetTexture(PDDI_SP_BASETEX, texture3);
    fshader3->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader3->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture3->Release();

    FillPath("Optics/flare2.tga", name);
    tTexture* texture4 = factory.LoadAsTexture(name);
    texture4->AddRef();
    fshader4 = new tShader;
    fshader4->AddRef();
    fshader4->SetTexture(PDDI_SP_BASETEX, texture4);
    fshader4->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader4->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture4->Release();

    flare = new tLensFlareGroup(4);
    flare->AddRef();
    flare->SetSourceCentre(RadicalMathLibrary::Vector(-250.0f, 100.0f, 200.0f));

    flare->SetColour(0, tColour(255, 255, 255));
    flare->SetHeight(0, 0.5f);
    flare->SetWidth(0, 0.5f);
    flare->SetDistance(0, 0.0f);
    flare->SetShader(0, fshader1);

    flare->SetColour(1, tColour(200, 255, 255));
    flare->SetHeight(1, 0.3f);
    flare->SetWidth(1, 0.3f);
    flare->SetDistance(1, 0.5f);
    flare->SetShader(1, fshader2);

    flare->SetColour(2, tColour(200, 200, 255));
    flare->SetHeight(2, 0.4f);
    flare->SetWidth(2, 0.4f);
    flare->SetDistance(2, 1.5f);
    flare->SetShader(2, fshader3);

    flare->SetColour(3, tColour(200, 200, 200));
    flare->SetHeight(3, 0.25f);
    flare->SetWidth(3, 0.25f);
    flare->SetDistance(3, 2.0f);
    flare->SetShader(3, fshader4);

//   flare->SetIntensityRate(0.05f);
}

void LensFlareTest::Shutdown()
{
    if(flare) flare->Release();
    if(fshader1) fshader1->Release();
    if(fshader2) fshader2->Release();
    if(fshader3) fshader3->Release();
    if(fshader4) fshader4->Release();
}

void LensFlareTest::Update(float deltaTime)
{
    flare->Advance(deltaTime);
}

void LensFlareTest::Display()
{
    flare->Display();
}

//---------------------------------------------------------------
// Lens flare occlusion test
//    Tests flare occlusion and provides some sample code to calculate
//    when a flare is hidden behind a cube
//---------------------------------------------------------------


LensFlareOcclusionTest::LensFlareOcclusionTest(): flare(NULL), fshader1(NULL), fshader2(NULL), cube(NULL), cubeShader(NULL)
{
    flareOccluded = false;
}

void LensFlareOcclusionTest::Setup()
{
    SetupSection();
    
    //Set the center for the cube and the flare
    cubeCenter = Vector(0.0f, 0.0f, 0.0f);
    flareCenter = Vector(-250.0f, 100.0f, 200.0f);

    //Now setup the shaders for the flare class
    tImageFactory factory;
    char name[512];

    FillPath("Optics/flare1.tga", name);
    tTexture* texture = factory.LoadAsTexture(name);
    texture->AddRef();

    // Lens flare shader
    fshader1 = new tShader;
    fshader1->AddRef();
    fshader1->SetTexture(PDDI_SP_BASETEX, texture);
    fshader1->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader1->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture->Release();

    // Lens flare shader
    FillPath("Optics/flare3.bmp", name);
    tTexture* texture2 = factory.LoadAsTexture(name);
    texture2->AddRef();
    fshader2 = new tShader;
    fshader2->AddRef();
    fshader2->SetTexture(PDDI_SP_BASETEX, texture2);
    fshader2->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));
    fshader2->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
    texture2->Release();

    // Setup the lensflares
    flare = new tLensFlare(2);
    flare->AddRef();
    flare->SetSourceCentre(flareCenter);

    //Add individual flares
    flare->SetColour(0, tColour(255, 255, 255));
    flare->SetHeight(0, 0.3f);
    flare->SetWidth(0, 0.3f);
    flare->SetDistance(0, 0.0f);
    flare->SetShader(0, fshader1);

    flare->SetColour(1, tColour(200, 255, 255));
    flare->SetHeight(1, 0.5f);
    flare->SetWidth(1, 0.5f);
    flare->SetDistance(1, -0.5f);
    flare->SetShader(1, fshader2);

    // Load a cube for the flare to interact with
    // When the lens flare lies behind this cube, set the lens flare occlusion
    Load("cube.p3d");

    cube = p3d::find<tGeometry>("pCubeShape1");   
    if (cube) cube->AddRef();

    cubeShader = new tShader("simple");
    cubeShader->AddRef();

    // Give the cube the pure3D logo as a texture
    FillPath("Textures/Pure3DLogo.bmp", name);
    tTexture* cubeTexture = factory.LoadAsTexture(name);
    cubeTexture->AddRef();

    cubeShader->SetTexture(PDDI_SP_BASETEX, cubeTexture);
    cube->SetShader(0, cubeShader);
    cubeTexture->Release();
    
    //Get the width of the cube
    rmt::Box3D boundingBox;
    cube->GetBoundingBox(&boundingBox);
    cubeWidth = boundingBox.high.x - boundingBox.low.x;
    
    // Set the string to be displayed when the flare is occluded
    sprintf(strOccluded, "Flare is Occluded");
        
}

void LensFlareOcclusionTest::Shutdown()
{
    if (flare) flare->Release();
    if (fshader1) fshader1->Release();
    if (fshader2) fshader2->Release();
    if (cube) cube->Release();
    if (cubeShader) cubeShader->Release();
}

void LensFlareOcclusionTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Translate(cubeCenter);
    cube->Display();
    p3d::stack->Pop();

    // Function that checks to see if the flare lies behind the cube
    CheckFlareVisible(GetActualCameraPosition());

    if (flareOccluded)
    {
        p3d::pddi->DrawString(strOccluded, 50, 50, tColour(255,255,255));
    }
    else
    {
        flare->Display();
    }
}

Vector LensFlareOcclusionTest::GetActualCameraPosition()
//Returns the actual location of the camera from the camera to world matrix
{
    rmt::Vector cameraPosition;
    
    const rmt::Matrix& camToWorld = p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix();
    cameraPosition = camToWorld.Row(3);

    return cameraPosition;
}

void LensFlareOcclusionTest::Update(float deltaTime)
{
    flare->Advance(deltaTime);
}

void LensFlareOcclusionTest::CheckFlareVisible(Vector cameraPosition)
{
    // Sets flareOccluded to true if the flare center lies behind the cube
    // Calculate t from the equation t=-(A*x0 + B*y0 +C*z0 +D) / (A*dx + B*dy + C*dz)
    // Where 0<t<1,  x0, y0, z0 are camera center, and dx,dy,dz is distance to SourceCenter

    float t, tNum, tDenom;

    Vector pointOnPlane, diff, deltaCameraSource;
    
    deltaCameraSource.Sub(flareCenter, cameraPosition);
    
    // Setup the constants for each of the 6 cube faces
    // The variables represent the constants in the plane equation
    float A[6] = {1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    float B[6] = {0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f};
    float C[6] = {0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    float D[6] = {cubeWidth/2 - cubeCenter.x, -cubeWidth/2 - cubeCenter.x, cubeWidth/2 - cubeCenter.y, -cubeWidth/2 - cubeCenter.y, 
        cubeWidth/2 - cubeCenter.z, -cubeWidth/2 - cubeCenter.z};
    
    // Check if the ray intersects any of the cube's 6 polygons
    for (int i = 0; i < 6; i++)
    {
        // The numerator and denominator are calculated seperately so that we can't divide by zero
        tNum = - (A[i]*cameraPosition.x + B[i]*cameraPosition.y + C[i]*cameraPosition.z + D[i]);
        tDenom = A[i]*deltaCameraSource.x + B[i]*deltaCameraSource.y + C[i]*deltaCameraSource.z;
      
        if (tDenom != 0)
        {
            t = tNum / tDenom;
        
            diff.Scale(t, deltaCameraSource);
            pointOnPlane.Add(diff, cameraPosition);  
            
            // If t is between 0 and 1, and the ray intesects the plane inside of the cube  
            // face, then the flare lies behind the cube
            if (RayGoesThroughPlane(pointOnPlane) && t >=0 && t<=1)
            {
                flareOccluded = true;
                return;
            }
        }
    }
    // Else the ray does not cross through any of the polygons
  
    flareOccluded = false;
    return;

}

bool LensFlareOcclusionTest::RayGoesThroughPlane(Vector pointOnPlane)
{  
// Returns true if the pointOnPlane lies within the square
    
    float xmin = cubeCenter.x - cubeWidth/2;
    float xmax = cubeCenter.x + cubeWidth/2;
    float ymin = cubeCenter.y - cubeWidth/2;
    float ymax = cubeCenter.y + cubeWidth/2;
    float zmin = cubeCenter.z - cubeWidth/2;
    float zmax = cubeCenter.z + cubeWidth/2;

    if (pointOnPlane.x >= xmin && pointOnPlane.x <= xmax && pointOnPlane.y >= ymin && pointOnPlane.y <= ymax 
            && pointOnPlane.z >= zmin && pointOnPlane.z <= zmax)
    {
        return true;
    }
    else 
        // Intersection point lies outside of the square
        return false;
}
*/
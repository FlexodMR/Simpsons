//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "lightTest.hpp"

using namespace RadicalMathLibrary;

// ------------------------------------------------------------------
// Animate a directional light
//    When adding additional lights, we need to make sure to turn them
//    off.  This is done in the Cleanup() function
// ------------------------------------------------------------------

AnimatedDirectionalLight::AnimatedDirectionalLight() 
: 
light(NULL),
torus(NULL), 
shader(NULL), 
directionIcon(NULL)
{
}


void AnimatedDirectionalLight::Setup()
{
    SetupSection();
    light = new tDirectionalLight;
    light->AddRef();

    // Set direction and colour
    light->SetDirection(0.0f, 1.0f, 1.0f);
    tColour lightColour(255, 0, 0);
    light->SetColour(lightColour);
    
    Load("AnimatedLightTests/torus.p3d");

    torus = p3d::find<tDrawable>("torus01");

    if (torus)
    {
        torus->AddRef();
    }
    timeElapsed = 0.0f;

    // Now load the light marker
    Load("AnimatedLightTests/LightIcons.p3d");

    directionIcon = p3d::find<tGeometry>("DirectionalShape");
    if (directionIcon) directionIcon->AddRef();

    shader = new tShader("simple");
    if (shader) shader->AddRef();
    
    shader->SetInt(PDDI_SP_ISLIT, 1);
    shader->SetColour(PDDI_SP_DIFFUSE, lightColour);
    shader->SetColour(PDDI_SP_EMISSIVE, lightColour);
    shader->SetColour(PDDI_SP_AMBIENT, lightColour);
    directionIcon->SetShader(0, shader);

}

void AnimatedDirectionalLight::Shutdown()
{
    if (torus) torus->Release();
    if (light) light->Release();
    if (directionIcon) directionIcon->Release();
    if (shader) shader->Release();
}

void AnimatedDirectionalLight::Display()
{
    p3d::inventory->SelectSection(GetName());

    // The torus is not animated
    if (torus)
    {
        torus->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "Error:  could not find geometry.");
        p3d::pddi->DrawString(buf, 300, 200, tColour(255,0,0));
    }
}

void AnimatedDirectionalLight::Update(float deltaTime)
{
    // Rotation speed
    const float radsPerMs = rmt::PI_BY8 / 100;
    
    timeElapsed += deltaTime;

    if(light)
    {
        // Draw the light in its new direction
        light->SetDirection(2*Cos((timeElapsed * radsPerMs)), 2*Sin(timeElapsed * radsPerMs), 0.5f);
        light->Activate(1); 
    }
    
    // Draw a marker to indicate in which direction the light is pointing
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 60.0f, 0.0f);
    p3d::stack->RotateZ(timeElapsed*radsPerMs);
    
    p3d::stack->Scale(5.0f);
    directionIcon->Display();

    p3d::stack->Pop();

}

void AnimatedDirectionalLight::CleanUp()
// Turn off the light
{
    light->Deactivate();
}

// ------------------------------------------------------------------
// An animated spot light - The position and direction are both animated
// in this test
// ------------------------------------------------------------------

AnimatedSpotLight::AnimatedSpotLight() : 
light(NULL),
torus(NULL), 
shader(NULL), 
spotLightIcon(NULL)
{
}

void AnimatedSpotLight::Setup()
{
    SetupSection();
    light = new tSpotLight;
    light->AddRef();

    tColour lightColour(255, 0, 255);
    light->SetColour(lightColour);
    light->SetCone(0.4f, 0.1f, 1.0f);
    
    // Don't animate this torus    
    Load("AnimatedLightTests/torus.p3d");

    torus = p3d::find<tDrawable>("torus01");

    if (torus)
    {
        torus->AddRef();
    }
    timeElapsed = 0.0f;

    Load("AnimatedLightTests/LightIcons.p3d");
    spotLightIcon = p3d::find<tGeometry>("SpotShape");
    if (spotLightIcon) spotLightIcon->AddRef();
    

    shader = new tShader("simple");
    if (shader) shader->AddRef();
    
    // Setup shader for the spotlight icon 
    shader->SetInt(PDDI_SP_ISLIT, 1);
    shader->SetColour(PDDI_SP_DIFFUSE, lightColour);
    shader->SetColour(PDDI_SP_EMISSIVE, lightColour);
    shader->SetColour(PDDI_SP_AMBIENT, lightColour);
    spotLightIcon->SetShader(0, shader);
}

void AnimatedSpotLight::Shutdown()
{
    if (torus) torus->Release();
    if (light) light->Release();
    if (shader) shader->Release();
    if (spotLightIcon) spotLightIcon->Release();
}

void AnimatedSpotLight::Display()
{
    p3d::inventory->SelectSection(GetName());

    if (torus)
    {
        torus->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "Error:  could not find geometry.");
        p3d::pddi->DrawString(buf, 300, 200, tColour(255,0,0));
    }

    
}

void AnimatedSpotLight::Update(float deltaTime)
{
    // Rotation speed
    const float radsPerMs = rmt::PI_BY8 / 400;
    
    timeElapsed += deltaTime;

    if(light)
    {
        // Draw the light in its new direction and position
        light->SetPosition(0.0f, -100*Sin((timeElapsed * radsPerMs)), -100*Cos((timeElapsed * radsPerMs)));
        light->SetDirection(0.0f, 100*Sin((timeElapsed * radsPerMs)), 100*Cos((timeElapsed * radsPerMs)));
        light->Activate(1); 
    }

    // Draw icon for the spotlight
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, -100*Sin((timeElapsed * radsPerMs)), -100*Cos((timeElapsed * radsPerMs)));
    p3d::stack->RotateX(-timeElapsed * radsPerMs);
    p3d::stack->RotateX(PI_BY2);
    p3d::stack->Scale(5.0f);
    
    spotLightIcon->Display();
    p3d::stack->Pop();

}

// Turn off light
void AnimatedSpotLight::CleanUp()
{
    light->Deactivate();
}

// ------------------------------------------------------------------
// Point light where the color and position are both animated
// ------------------------------------------------------------------
AnimatedPointLight::AnimatedPointLight() 
: 
light(NULL),
torus(NULL), 
shader(NULL), 
pointLightIcon(NULL)
{
}


void AnimatedPointLight::Setup()
{
    SetupSection();
    light = new tPointLight;
    light->AddRef();

    Load("AnimatedLightTests/torus.p3d");

    torus = p3d::find<tDrawable>("torus01");

    if (torus)
    {
        torus->AddRef();
    }
    timeElapsed = 0.0f;

    // Use a circle for the pointLight icon
    Load("AnimatedLightTests/LightIcons.p3d");
    pointLightIcon = p3d::find<tGeometry>("PointShape");
    if (pointLightIcon) pointLightIcon->AddRef();
    
    // Shader used for point light icon
    shader = new tShader("simple");
    if (shader) shader->AddRef();
    
    shader->SetInt(PDDI_SP_ISLIT, 1);
    
}

void AnimatedPointLight::Shutdown()
{
    light->Deactivate();
    if (torus) torus->Release();
    if (light) light->Release();
    if (pointLightIcon) pointLightIcon->Release();
    if (shader) shader->Release();
}

void AnimatedPointLight::Display()
{
    p3d::inventory->SelectSection(GetName());

    if (torus)
    {
        torus->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "Error:  could not find geometry.");
        p3d::pddi->DrawString(buf, 300, 200, tColour(255,0,0));
    }
}

void AnimatedPointLight::Update(float deltaTime)
{
    // Rotation speed
    const float radsPerMs = rmt::PI_BY8 / 400;
    
    timeElapsed += deltaTime;

    tColour lightColour((int)(255 * fabsf(Sin(1.2f * radsPerMs * timeElapsed))), 0, (int)(255 * fabsf(Cos(1.2f * radsPerMs * timeElapsed))));

    if(light)
    {
        // Draw the light in its new direction
        light->SetColour(lightColour);
        light->SetPosition(60 * Sin(radsPerMs * timeElapsed), 0.0f, 0.0f);
        light->Activate(1); 
    }

    // Animate the light color, and use this color for the light icon shader
    shader->SetColour(PDDI_SP_DIFFUSE, lightColour);
    shader->SetColour(PDDI_SP_EMISSIVE, lightColour);
    shader->SetColour(PDDI_SP_AMBIENT, lightColour);
    pointLightIcon->SetShader(0, shader);

    p3d::stack->Push();
    p3d::stack->Translate(60 * Sin(radsPerMs * timeElapsed), 0.0f, 0.0f);
    p3d::stack->Scale(5.0f);

    pointLightIcon->Display();
    p3d::stack->Pop();

}

// ------------------------------------------------------------------
// Multiple Animated Lights Test
//    Each light has an animated light and one other animated attribute
// ------------------------------------------------------------------
MultipleAnimatedLightsTest::MultipleAnimatedLightsTest() : pointLight(NULL), directionalLight(NULL), spotLight(NULL), cube(NULL)

{
    pointLightShader = NULL;
    directionalShader = NULL;
    spotLightShader = NULL;
    directionalIcon = NULL;
    pointLightIcon = NULL;
    spotLightIcon = NULL;
}

void MultipleAnimatedLightsTest::Setup()
{
    SetupSection();
    
    // Set light properties
    pointLight = new tPointLight;
    pointLight->AddRef();

    pointLight->SetPosition(0.0f, 0.0f, 100.0f);
    
    directionalLight = new tDirectionalLight();
    directionalLight->AddRef();

    directionalLight->SetDirection(-1.0f, 0.0f, 0.0f);
    
    spotLight = new tSpotLight();
    spotLight->AddRef();
    spotLight->SetPosition(0.0f, 35.0f, 0.0f);
    spotLight->SetCone(0.2f, 0.2f, 0.0f);


    Load("cube.p3d");

    cube = p3d::find<tDrawable>("pCubeShape1");

    // This cube does not get animated
    if (cube)
    {
        cube->AddRef();
    }
    timeElapsed = 0.0f;

    Load("AnimatedLightTests/LightIcons.p3d");
    
    spotLightIcon = p3d::find<tGeometry>("SpotShape");
    if (spotLightIcon) spotLightIcon->AddRef();
    
    directionalIcon = p3d::find<tGeometry>("DirectionalShape");
    if (directionalIcon) directionalIcon->AddRef();

    pointLightIcon = p3d::find<tGeometry>("PointShape");
    if (pointLightIcon) pointLightIcon->AddRef();

    spotLightShader = new tShader("simple");
    if (spotLightShader) spotLightShader->AddRef();
    
    // Set shader for spot light
    spotLightShader->SetInt(PDDI_SP_ISLIT, 1);
    
    // Set shader for point Light
    pointLightShader = new tShader("simple");
    if (pointLightShader) pointLightShader->AddRef();
    
    pointLightShader->SetInt(PDDI_SP_ISLIT, 1);
    
    // Create a shader for the directional light icon
    directionalShader = new tShader("simple");
    if (directionalShader) directionalShader->AddRef();
    directionalShader->SetInt(PDDI_SP_ISLIT, 1);

}

void MultipleAnimatedLightsTest::Shutdown()
{
    spotLight->Deactivate();
    directionalLight->Deactivate();
    pointLight->Deactivate();

    if (cube) cube->Release();
    if (pointLight) pointLight->Release();
    if (spotLight) spotLight->Release();
    if (directionalLight) directionalLight->Release();  

    if (pointLightShader) pointLightShader->Release();
    if (directionalShader) directionalShader->Release();
    if (spotLightShader) spotLightShader->Release();

    if (directionalIcon) directionalIcon->Release();
    if (pointLightIcon) pointLightIcon->Release();
    if (spotLightIcon) spotLightIcon->Release();
}

void MultipleAnimatedLightsTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    if (cube)
    {
        cube->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "Error:  could not find geometry.");
        p3d::pddi->DrawString(buf, 300, 200, tColour(255,0,0));
    }
}

void MultipleAnimatedLightsTest::Update(float deltaTime)
{
    // Rotation speed
    const float radsPerMs = rmt::PI_BY8 / 400;
    
    timeElapsed += deltaTime;

    if (spotLight)
    {
        tColour spotLightColour( 0, (int)(255*fabsf(Sin(0.8f*radsPerMs * timeElapsed))), (int)(255*fabsf(Cos(0.8f*radsPerMs * timeElapsed))));
    
        spotLight->SetDirection(0.4f * Sin(radsPerMs * timeElapsed), -1.0f, 0.4f * Cos(radsPerMs * timeElapsed));
        spotLight->SetColour(spotLightColour);
        
        spotLightShader->SetColour(PDDI_SP_DIFFUSE, spotLightColour);
        spotLightShader->SetColour(PDDI_SP_AMBIENT, spotLightColour);
        spotLightShader->SetColour(PDDI_SP_EMISSIVE, spotLightColour);
        spotLightIcon->SetShader(0, spotLightShader);
        spotLight->Activate(1);
    }
    
    //Draw the spotlight icon
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 35.0f, 0.0f);
    p3d::stack->RotateXYZ(2.5f, radsPerMs*timeElapsed, 0.0f);
    p3d::stack->Scale(3.0f);
    
    spotLightIcon->Display();
    p3d::stack->Pop();
    
    // Draw the directional light
    if(directionalLight)
    {
        // The directional light changes colors between Red and Blue
        tColour directionalColour((int)(255*fabsf(Sin(radsPerMs * timeElapsed))), 0, (int)(255*fabsf(Cos(radsPerMs * timeElapsed))));
        directionalLight->SetColour(directionalColour);
        directionalLight->Activate(2); 

        //Set the colour for the directional icon
        directionalShader->SetColour(PDDI_SP_DIFFUSE, directionalColour);
        directionalShader->SetColour(PDDI_SP_AMBIENT, directionalColour);
        directionalShader->SetColour(PDDI_SP_EMISSIVE, directionalColour);
        directionalIcon->SetShader(0, directionalShader);
    }
    //Draw the directional Icon
    p3d::stack->Push();
    p3d::stack->Translate(40.0f, 0.0f, 0.0f);
    p3d::stack->RotateZ(PI_BY2);
    p3d::stack->Scale(3.0f);
    
    directionalIcon->Display();
    p3d::stack->Pop();

    tColour pointLightColour((int)(255*fabsf(Sin(1.2f*radsPerMs * timeElapsed))), (int)(255*fabsf(Cos(1.2f*radsPerMs * timeElapsed))), 0);
        
    // Add point Light
    if (pointLight)
    {
        //The point light is the bluelight.  The attenuation changes sinusoidally beween 0 and 2
        
        pointLight->SetColour(pointLightColour);

        pointLight->Activate(3);
    }

    pointLightShader->SetColour(PDDI_SP_DIFFUSE, pointLightColour);
    pointLightShader->SetColour(PDDI_SP_AMBIENT, pointLightColour);
    pointLightShader->SetColour(PDDI_SP_EMISSIVE, pointLightColour);
        
    pointLightIcon->SetShader(0, pointLightShader);

    // Draw the point Light Icon
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 0.0f, 40.0f);
    p3d::stack->Scale(3.0f);

    pointLightIcon->Display();
    p3d::stack->Pop();
}

//------------------
// Photon Map Test
//------------------
PhotonMapTest::PhotonMapTest() :
    photonmap(NULL)
{
}

void PhotonMapTest::Setup()
{
    SetupSection();

    Load("PhotonMapTest/cornell_lit.p3d");

    photonmap = p3d::find<tDrawable>("Scene");
    if (photonmap) photonmap->AddRef();

}

void PhotonMapTest::Shutdown()
{
    if (photonmap) photonmap->Release();
}

void PhotonMapTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, -3.0f, 0.0f);
    if (photonmap) photonmap->Display();
    p3d::stack->Pop();
}

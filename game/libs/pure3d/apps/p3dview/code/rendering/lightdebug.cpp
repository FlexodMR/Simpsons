//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "lightdebug.hpp"

#include<p3d/light.hpp>
#include<p3d/pointlight.hpp>
#include<p3d/spotlight.hpp>
#include<p3d/directionallight.hpp>
#include<p3d/camera.hpp>
#include<p3d/debugdraw.hpp>

LightDebug::LightDebug() :
    lightGroup(NULL),
    camera(NULL),
    shader(NULL)
{
    shader = new tShader;
    shader->AddRef();
}
    
LightDebug::~LightDebug()
{
}

void LightDebug::SetLightGroup(tLightGroup* l)
{
    tRefCounted::Assign(lightGroup, l);
}

void LightDebug::SetCamera(tCamera* c)
{
    tRefCounted::Assign(camera, c);
}

void LightDebug::Display(void)
{
    for(int i = 0; i < lightGroup->GetNumLights(); i++)
    {
        tLight* light = lightGroup->GetLight(i);
        tPointLight* pointLight;
        tSpotLight* spotLight;
        tDirectionalLight* dirLight;

        if(NULL != (pointLight = dynamic_cast<tPointLight*>(light)))
        {
            P3DDrawSphere(0.25f, pointLight->GetPosition(), *shader, pointLight->GetColour());
        }

        if(NULL != (spotLight = dynamic_cast<tSpotLight*>(light)))
        {
            float phi, theta, falloff;
            spotLight->GetCone(&phi, &theta, &falloff);

            float radius = rmt::Tan(phi/2);
            rmt::Vector end = spotLight->GetPosition();
            rmt::Vector dir = spotLight->GetDirection();
            dir.Normalize();
            end.Add(dir);

            P3DDrawCone
            (
                0.0f,
                spotLight->GetPosition(),
                radius,
                end,
                *shader,
                spotLight->GetColour(),
                4, 
                4
            );
        }

        if(camera && (NULL != (dirLight = dynamic_cast<tDirectionalLight*>(light))))
        {
            rmt::Vector cameraPos = camera->GetCameraToWorldMatrix().Row(3);
            rmt::Vector look = camera->GetCameraToWorldMatrix().Row(2);
            look.Scale(2.0f);
            look.Add(cameraPos);
            look.Sub(dirLight->GetDirection());

            rmt::Vector look2 = look;
            rmt::Vector direction = dirLight->GetDirection();
            direction.Scale(0.2f);

            look2.Add(direction);

            rmt::Vector look3 = look2;
            direction.Scale(0.3f);

            look3.Add(direction);

            P3DDrawCylinder
            (
                0.01f,
                look,
                look2,
                *shader,
                dirLight->GetColour(),
                4, 
                4
            );

            P3DDrawCone
            (
                0.03f,
                look2,
                0.0f,
                look3,
                *shader,
                dirLight->GetColour(),
                4, 
                4
            );
        }
    }
}

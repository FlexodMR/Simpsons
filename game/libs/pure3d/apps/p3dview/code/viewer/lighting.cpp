//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <viewer/lighting.hpp>
#include <config/settings.hpp>
#include <rendering/lightdebug.hpp>
#include <p3d/light.hpp>
#include <p3d/lightschooser.hpp>
#include <p3d/directionallight.hpp>
#include <p3d/pointlight.hpp>
#include <p3d/spotlight.hpp>
#include <p3d/ambientlight.hpp>
#include <p3d/inventory.hpp>
#include <p3d/context.hpp>
#include <p3d/utility.hpp>
#include <p3d/view.hpp>
#include <p3d/camera.hpp>
#include <p3d/gameattr.hpp>
#include <p3d/matrixstack.hpp>

const unsigned maxLights = 8;

Lighting::Lighting() :
    lightDebug(new LightDebug),
    ambientColour(64,64,64),
    lightColour(255,255,255),
    headlight(true),
    show(false),
    useChooser(false),
    showSelectionPoints(false),
    chooseMode(0)
{
    light = new tDirectionalLight;
    light->SetName("default0");
    light->SetDirection(-1,-1,1);
    light->SetColour(tColour(255,255,255));

    tDirectionalLight* light1 = new tDirectionalLight;
    light1->SetName("default1");
    light1->SetDirection(0,-1,0);
    light1->SetColour(tColour(0,0,255));

    tSpotLight* light2 = new tSpotLight;
    light2->SetName("default2");
    light2->SetPosition(2,2,2);
    light2->SetDirection(-1,-1,-1);
    light2->SetColour(tColour(0,255,0));

    tPointLight* light3 = new tPointLight;
    light3->SetName("default3");
    light3->SetPosition(-3,-3,3);
    light3->SetColour(tColour(255,0,255));

    tAmbientLight* defaultAmbient = new tAmbientLight;
    defaultAmbient->SetName("defaultAmbient");
    defaultAmbient->SetColour(ambientColour);

    tLightGroup* standard = new tLightGroup(2);
//    tLightGroup* standard = new tLightGroup(5);
    standard->SetLight(0,defaultAmbient);
    standard->SetLight(1,light);
//    standard->SetLight(2,light1);
//    standard->SetLight(3,light2);
//    standard->SetLight(4,light3);
    standard->SetName("default");
    
    availableLights.SetDefaultObject(standard);

    lightChooser = new tLightsChooser(8);
    chooseGroup = new tLightGroup(8);
    shadowCasters = new tLightGroup(8);
}

        
void Lighting::Setup(Settings* settings)
{
    settings->Bind("lighting.ambient", &ambientColour);
    settings->Bind("lighting.defaultColour", &lightColour);
    settings->Bind("lighting.headlight", &headlight);
    settings->Bind("lighting.showLights", &show);
    settings->Bind("lighting.useChooser", &useChooser);
    settings->Bind("lighting.chooseMode", &chooseMode);
    settings->Bind("lighting.showSelectionPoints", &showSelectionPoints);
}

void Lighting::Shutdown(void)
{
}

Lighting::~Lighting()
{
}

void Lighting::NextLightGroup(void)
{
    availableLights.Next();
}

void Lighting::PrevLightGroup(void)
{
    availableLights.Prev();
}

void Lighting::SetLightGroup(const char* n)
{
    availableLights.SetCurrent(n);
}


void SetRadius( tLight* light, tEntityStore* store )
{
    if( light == NULL || store == NULL )
    {
        return;
    }
    
    tPointLight *pointLight = dynamic_cast<tPointLight*>(light);
    tSpotLight  *spotLight  = dynamic_cast<tSpotLight*>(light);
    
    if( pointLight != NULL || spotLight != NULL )
    {
        tGameAttr* extraAttr = p3d::find<tGameAttr>( store, light->GetUID() );
        if( extraAttr != NULL )
        {
            float radius = extraAttr->GetFloat( "LinearRadius" );
        
            if( pointLight != NULL )
            {
                pointLight->SetRange( radius );
                pointLight->SetAttenuation( 1.0f, 0.0f, 0.0f );
            }
            else if( spotLight != NULL )
            {
                spotLight->SetRange( radius );
                spotLight->SetAttenuation( 1.0f, 0.0f, 0.0f );
            }
        }
    }
}

void Lighting::BeginScene(void)
{
    int i;

    p3d::pddi->SetAmbientLight(pddiColour(0,0,0,0));

    GetControlledLight()->SetColour(lightColour);   

    if(headlight)
    {
        GetControlledLight()->SetDirection(p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix().Row(2));
    }

    lightChooser->RemoveAllLights();
    for(i = 0; i < availableLights.Current()->GetNumLights(); i++)
    {
        SetRadius(availableLights.Current()->GetLight(i), p3d::inventory);
    }
    lightChooser->AddLights(availableLights.Current());   
}

void  Lighting::SelectLighting(const rmt::Vector& point)
{
    if(!useChooser)
    {
        SelectLighting();
        return;
    }

    if(showSelectionPoints)
    {
        p3d::stack->PushLoad(p3d::context->GetView()->GetCamera()->GetWorldToCameraMatrix());
        float size = 0.5f;
        float xtarget = point.x;
        float ytarget = point.y;
        float ztarget = point.z;

        pddiPrimStream* stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINES, PDDI_V_C, 6);
        stream->Colour(tColour(255,128,128));
        stream->Coord(xtarget - size,ytarget,ztarget);
        stream->Colour(tColour(255,128,128));
        stream->Coord(xtarget + size,ytarget,ztarget);
        stream->Colour(tColour(128,255,128));
        stream->Coord(xtarget,ytarget - size,ztarget);
        stream->Colour(tColour(128,255,128));
        stream->Coord(xtarget,ytarget + size,ztarget);
        stream->Colour(tColour(128,128,255));
        stream->Coord(xtarget,ytarget,ztarget - size);
        stream->Colour(tColour(128,128,255));
        stream->Coord(xtarget,ytarget,ztarget + size);
        p3d::pddi->EndPrims(stream);
        p3d::stack->Pop();
    }

    chooseGroup->SetNumLights(lightChooser->GetMaxNumLights());
    lightChooser->GetBestLights(chooseGroup, point);
    p3d::pddi->SetAmbientLight(lightChooser->GetAmbientColour());

    unsigned hardwareIndex = 0;
    unsigned i;

    
    for(i = 0; i < maxLights; i++)
    {
        p3d::pddi->EnableLight(i,false);
    }

    p3d::stack->PushLoad(p3d::context->GetView()->GetCamera()->GetWorldToCameraMatrix());
    for(i = 0; i < (unsigned)chooseGroup->GetNumLights(); i++)
    {
        tLight* light = chooseGroup->GetLight(i);
        if(light)
        {
            if(dynamic_cast<tAmbientLight*>(light))
            {
                light->Activate(0);
            }
            else
            {
                light->Activate(hardwareIndex++);
            }
        }
    }
    p3d::stack->Pop();
}

void Lighting::SelectLighting(void)
{
    tLightGroup* group = availableLights.Current();;
    unsigned hardwareIndex = 0;

    p3d::stack->PushLoad(p3d::context->GetView()->GetCamera()->GetWorldToCameraMatrix());
    for(unsigned i = 0; i < (unsigned)group->GetNumLights(); i++)
    {
        tLight* light = group->GetLight(i);
        if(light)
        {
            if(dynamic_cast<tAmbientLight*>(light))
            {
                light->Activate(0);
            }
            else
            {
                light->Activate(hardwareIndex++);
            }
        }
    }
    p3d::stack->Pop();
}

void Lighting::EndScene(void)
{
    for(unsigned i = 0; i < maxLights; i++)
    {
        p3d::pddi->EnableLight(i,false);
        p3d::pddi->SetAmbientLight(pddiColour(0,0,0,0));
    }
}

void Lighting::Display(void)
{
    if(!show)
    {
        return;
    }
    
    lightDebug->SetLightGroup(availableLights.Current());
    lightDebug->SetCamera(p3d::context->GetView()->GetCamera());
    lightDebug->Display();
}

void Lighting::Load(void)
{
    availableLights.Load();

    if(strcmp(GetLightGroupName(), "default") == 0)
    {
        NextLightGroup();
    }
}

void Lighting::Flush(void)
{
    availableLights.Flush();
}
    
const char* Lighting::GetLightGroupName(void) 
{ 
    return availableLights.Current()->GetName(); 
}

void Lighting::GetShadowCasters(tLightGroup* cast)
{
    int count = 0;
    
    for(int i = 0; (i < cast->GetNumLights()) && (i < GetCurrentLights()->GetNumLights()) ; i++)
    {
        if(IsShadowLight(GetCurrentLights()->GetLight(i)))
        {
            cast->SetLight(count++, GetCurrentLights()->GetLight(i));
        }
    }
    if(count == 0)
    {
        for(int i = 0; (i < cast->GetNumLights()) && (i < GetCurrentLights()->GetNumLights()) ; i++)
        {
            if(GetCurrentLights()->GetLight(i))
            {
                cast->SetLight(count++, GetCurrentLights()->GetLight(i));
                break;
            }
        }
    }
}

bool Lighting::IsShadowLight(tLight* light)
{
    return (light->GetName()[0] == 's') &&
           (light->GetName()[1] == 'h') &&
           (light->GetName()[2] == 'a') &&
           (light->GetName()[3] == 'd');
}

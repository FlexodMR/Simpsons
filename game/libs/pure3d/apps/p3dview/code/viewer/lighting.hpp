//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VIEWER_LIGHTING_HPP
#define VIEWER_LIGHTING_HPP

#include <radmath/radmath.hpp>
#include <utility/pointer.hpp>
#include <utility/array.hpp>
#include <viewer/objectlist.hpp>

class tDrawable;
class tLight;
class tDirectionalLight;
class tLightGroup;
class tLightsChooser;
class LightDebug;
class Settings;

class Lighting
{
public:
    Lighting();
    ~Lighting();
    
    void Setup(Settings* settings);
    void Shutdown(void);

    void NextLightGroup(void);
    void PrevLightGroup(void);
    void SetLightGroup(const char*);

    void BeginScene(void);
    void SelectLighting(void);
    void SelectLighting(const rmt::Vector& point);
    void EndScene(void);
    
    void Load(void);
    void Flush(void);

    void Display(void);

    const char* GetLightGroupName(void);
    tLightGroup* GetCurrentLights(void) { return availableLights.Current(); }
    tDirectionalLight* GetControlledLight(void) { return light; }
    void GetShadowCasters(tLightGroup*);

protected:
    bool IsShadowLight(tLight*);
    AutoPtr<LightDebug> lightDebug;
    RefPtr<tLightsChooser> lightChooser;
    RefPtr<tLightGroup> chooseGroup;
    RefPtr<tLightGroup> shadowCasters;

    RefPtr<tDirectionalLight> light;
    ObjectList<tLightGroup> availableLights;

    tColour ambientColour;
    tColour lightColour;
 
    bool headlight;
    bool show;
    bool useChooser;
    bool showSelectionPoints;
    int chooseMode;
    
};

#endif

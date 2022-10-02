//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef LIGHTTEST_HPP
#define LIGHTTEST_HPP

#include "coverage.hpp"

class AnimatedDirectionalLight : public CoverageTest
{
public:
    AnimatedDirectionalLight();
    
    virtual const char* GetName() { return "Animated Directional Light"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 200.0f, 5.0f, 50.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    virtual void CleanUp();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a cube with a directional light shining on it. \n\
        The directional light will have a sinusoidally \n\
        changing light path.\n";
    }

private:
    tDirectionalLight* light;
    tDrawable* torus;
    float timeElapsed;

    tShader* shader;

    tGeometry* directionIcon;
    
};

class AnimatedSpotLight : public CoverageTest
{
public:
    AnimatedSpotLight();

    virtual const char* GetName() { return "Animated Spot Light";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 200.0f, 5.0f, 50.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    virtual void CleanUp();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a cube with a spotlight shining on it. \n\
        The spotlight will have a sinusoidally changing \n\
        direction path.\n";
    }

private:
    tSpotLight* light;
    tDrawable* torus;
    float timeElapsed;

    tShader* shader;
    tGeometry* spotLightIcon;
};

class AnimatedPointLight : public CoverageTest
{
public:
    AnimatedPointLight();

    virtual const char* GetName() { return "Animated Point Light";}
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a torus with a Point light changing color\n\
        and position along the torus axis. \n";
    }

private:
    tPointLight* light;
    tDrawable* torus;
    float timeElapsed;

    tShader* shader;
    tGeometry* pointLightIcon;
};


class MultipleAnimatedLightsTest : public CoverageTest
{
public:
    MultipleAnimatedLightsTest();

    virtual const char* GetName() { return "Multiple Animated Lights";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 50.0f, 15.0f, 60.0f ); }
    
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a cube with three of the faces each \n\
        having an animated camera affecting it. \n";
    }

private:
    tPointLight* pointLight;
    tDirectionalLight* directionalLight;
    tSpotLight* spotLight;

    tDrawable* cube;
    float timeElapsed;

    tShader* spotLightShader;
    tShader* pointLightShader;
    tShader* directionalShader;

    tGeometry* pointLightIcon;
    tGeometry* spotLightIcon;
    tGeometry* directionalIcon;
};

//-----------------------
// Photon map test
//-----------------------
class PhotonMapTest : public CoverageTest
{
public:
    PhotonMapTest();

    virtual const char* GetName() { return "Photon Map"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 0.0f, 7.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Display a lightmapped scene\n\
         generated with p3dphotonmap.\n";
    }

private:
    tDrawable* photonmap;

};
#endif
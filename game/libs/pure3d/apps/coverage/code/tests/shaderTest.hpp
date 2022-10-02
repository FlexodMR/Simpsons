//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SHADER_TEST_H
#define _SHADER_TEST_H

#include "coverage.hpp"


class LightMapTest : public CoverageTest
{
public:
    LightMapTest();

    virtual const char* GetName() {return "Light Map"; }
    virtual rmt::Vector GetCameraPos() {return rmt::Vector(0.0f, 2.0, -7.0f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:

    tDrawable* scene;
};


class BumpMapTest : public CoverageTest
{
public:
    BumpMapTest() : shader(NULL) {}
    virtual ~BumpMapTest();
    virtual const char* GetName() {return "Bump Map"; }
    virtual void Setup();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    {
    return "\
    Expected result:\n\
    Draws bumpmapped teapots.\n\
    They are as follows:\n\
    Left: No Bumpmapping, UV_TILE\n\
    Middle: Non-specular bumpmapping, UV_TILE\n\
    Right: Specular, UV_TILE\n\
    API coverage:\n\
    pddiShader::SetTexture();\n\
    pddiShader::SetInt();\n\
    pddiShader::SetVector();\n\
    pddiShader::SetColour();\n";
    }

private:
    tShader* shader;
    tTexture* bumpMap;
    tTexture* baseTex;
    tGeometry* teapot;

    tShader* simpleShader;
};

class ToonShaderTest : public CoverageTest
{
public:
    ToonShaderTest();
    virtual ~ToonShaderTest();

    virtual const char* GetName() { return "Toon Shading";}
    rmt::Vector GetCameraPos() { return rmt::Vector(1.0f, 0.5f, -300.0f);}

    virtual void Setup();
    virtual void Display();
    
protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a teapot with a toon shader.\n\
        Top(left to right):  Default, Silhouette, Depth/Metal\n";
    }

private:
    tShader* toonShader;
    tGeometry* teapot;
};

class ReflectedMapTest : public CoverageTest
{
public:
    ReflectedMapTest();

    virtual const char* GetName() { return "Reflected Map";}
    rmt::Vector GetCameraPos() { return rmt::Vector(1.0f, 0.5f, -100.0f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a teapot with a Reflected Map shader.\n";
    }

private:
    tShader* shader;  //Reflected Map Shader
    tShader* baseShader;  //Simple Shader
    tShader* reflShader;   //Reflected Shader
    tGeometry* teapot;
    tTexture* textures[3];    
};

class ProjTextureTest : public CoverageTest
{
public:
    ProjTextureTest();

    virtual const char* GetName() { return "Projected Texture";}
    rmt::Vector GetCameraPos() { return rmt::Vector(5.0f, 100.0f, -300.0f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    void CleanUp();

    void LoadTextureProjectionMatrix(const rmt::Matrix& camera,rmt::Vector& position, rmt::Vector& target, 
            float fov, float n, float f, pddiMatrixType matrixType, rmt::Vector* frustumLines);
    void DrawFrustum(rmt::Vector* frustumLines);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a teapot with a Projected Texture shader.\n";
    }

private:
    tTexture* teapotBaseTex;
    tTexture* groundBaseTex;
    tTexture* projectionTex;
    tTexture* projectionIconTex;
    
    tShader* projectionIconShader;
    tShader* teapotShader;
    tShader* groundShader;
    tShader* iconShader;
    pddiShader* frustumShader;

    tGeometry* teapot;
    tGeometry* ground;
    tGeometry* projectionIcon;
    
    tGeometry* spotLightIcon;
    tSpotLight* projectionSpotLight;
    tSpotLight* spotLight;
    
    rmt::Vector frustumLinesArray[24];
    rmt::Vector projectionTarget;
    rmt::Vector projectionPosition;

    float totalTime;
};

class ShaderModificationTest : public ScenegraphTest
{
public:
    ShaderModificationTest();
    virtual const char* GetName() { return "Shader Modification Test"; }
    virtual void Update(float deltaTime);
    virtual void Display();
    
protected:
    float delta;
    float trans;
};

class RefractTest : public CoverageTest
{
public:
    RefractTest();

    virtual const char* GetName() {return "Refract"; }
    virtual rmt::Vector GetCameraPos() {return rmt::Vector(0.0f, 2.0, -7.0f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

private:

    tDrawable* scene;
    tMultiController* multiController;
};


#endif


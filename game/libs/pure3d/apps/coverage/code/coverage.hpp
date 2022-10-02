/*===========================================================================
    coverage.hpp - PDDI test cases

    29-Oct-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _COVERAGE_HPP
#define _COVERAGE_HPP

#include <string.h>
#include <p3d/pure3d.hpp>
#include <pddi/pddiext.hpp>

#include <radmath/radmath.hpp>
#include <p3d/spotlight.hpp>
#include <p3d/shadow.hpp>
#include "harness.hpp"

class CoverageTest
{
public:
    CoverageTest();
    
    virtual void Setup() = 0;
    virtual void Shutdown() = 0;

    virtual void Update( float deltaTime ) {}
    virtual void BeginRender(const CoverAppRendering& appRender);
    virtual void Display() = 0;
    virtual void EndRender(const CoverAppRendering& appRender);
    virtual const char* GetName() = 0;
    virtual rmt::Vector GetCameraPos() { return defCameraPos; }
    void SetArtPath(const char* path);
    void SetupSection(void);
    void UnloadSection(void);
    static void SetDefCameraPos(rmt::Vector v) { defCameraPos = v; }
    void DisplayHelpText();
    void Loaded(bool loaded) { loadFlag = loaded; }
    bool IsLoaded() { return loadFlag; }

protected:
    char artPath[256];
    bool Load(const char* file);
    void FillPath(const char* file, char* path);
    static rmt::Vector defCameraPos;
    
    virtual char* GetHelpText() { return "No Description"; }
    bool loadFlag;
};

// global function evil?  sure.
void DoQuad(tShader* shader, tTexture* tex, float x, float y, float z, float sx, float sy, pddiBlendMode mode);
void Square(pddiShader* mat, float x, float y, float sx, float sy, float uvTile, pddiColour colour);
void BlendTest(pddiShader* shader, float x, float y, pddiBlendMode mode, pddiColour colour, char* str);


//-------------------------------------------------------------------
// Expected result:
//   Draws and animates a scene  *used by many other tests
class ScenegraphTest : public CoverageTest
{
public:
    ScenegraphTest ();
    virtual const char* GetName() { return "Scenegraph"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void BeginRender(const CoverAppRendering& appRender);
    virtual void Display();
    virtual void EndRender(const CoverAppRendering& appRender);

    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 5.0f, -20.0f ); }

    void SetFileName(const char* name) { strcpy(fileName, name); }
    void SetSceneName(const char* name) { strcpy(sceneName, name); }
    void SetControllerName(const char* name) { strcpy(controllerName, name); }
    void SetCameraName(const char* name) { strcpy(cameraName, name); }
    
    const char* GetFileName() { return fileName; }
    const char* GetSceneName() { return sceneName; }
    const char* GetControllerName() { return controllerName; }
    const char* GetCameraName() { return cameraName; }

protected:
    tMultiController* controller;
    Scenegraph::Scenegraph* draw;

    tView* m_view;
    tCamera* m_camera;

    bool isCyclic;
    char fileName[256];
    char sceneName[256];
    char controllerName[256];
    char cameraName[256];
};

//-------------------------------------------------------------------
// used by other tests
//-------------------------------------------------------------------
class GeometryTest : public CoverageTest
{
public:
    GeometryTest();
    virtual const char* GetName() { return "Geometry"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    char geoFile[128];
    char geoName[128];
    tGeometry* geo;
};



class ComplexGeometryTest : public GeometryTest
{
public:
    ComplexGeometryTest();
    virtual const char* GetName() { return "Complex Geometry"; }
};

//-------------------------------------------------------------------
class InventoryTest : public CoverageTest
{
public:
    virtual const char* GetName() { return "Inventory insert, search"; }
    virtual void Setup();
    virtual void Shutdown(){};
    virtual void Display();
};

//-------------------------------------------------------------------
// Expected result:
//
// API coverage:
//
//

class tParticleSystem;
class tParticleSystemInstance;
class tEffectController;

class ParticlesInstanceAndCloneTest : public CoverageTest
{
public:
    ParticlesInstanceAndCloneTest();
    virtual ~ParticlesInstanceAndCloneTest();
    virtual const char* GetName() { return "Particle System Instancing And Cloning"; }
    rmt::Vector GetCameraPos() { return rmt::Vector(10.0f, 10.0f, -10.0f); }
    virtual void Setup();
    virtual void Update(float deltaTime);
    virtual void Display();

protected:
    tParticleSystem*          fireworks[2];
    tParticleSystemInstance*  fireworkInstances[2];
    tEffectController*        fireworkControllers[2];
    tParticleSystem*          fire;
    tParticleSystemInstance*  fireInstances[5];
    tEffectController*        fireControllers[5];
};

//-------------------------------------------------------------------
// Expected result:
//
// API coverage:
//
//

class ParticlesCollisionAndForceTest : public CoverageTest
{
public:
    ParticlesCollisionAndForceTest();
    virtual ~ParticlesCollisionAndForceTest();
    virtual const char* GetName() { return "Particle System Collisions And Forces"; }
    rmt::Vector GetCameraPos() { return rmt::Vector(10.0f, 10.0f, -10.0f); }
    virtual void Setup();
    virtual void Update(float deltaTime);
    virtual void Display();

protected:
    tParticleSystemInstance*  marbles;
    tParticleSystemInstance*  birds;
    tCompositeDrawable*       marblesPhysics;
    tCompositeDrawable*       birdsPhysics;
    tMultiController*         multiController;
};

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates a character plays both mirrored and non mirrored
//   animation
// API coverage:
//   tPoseAnimation; tPoseAnimationConcreate; tPoseAnimationMirrored
class PoseAnimationTest : public CoverageTest
{
public:
    PoseAnimationTest();
    virtual ~PoseAnimationTest ();
    virtual const char* GetName() { return "PoseAnimation"; }
    virtual void Setup();
    virtual void Display();
private:
    
    void SetAnimation(const char* name);
    void TestPlanUpdate(void);

    tDrawablePose* skin;
    tPoseAnimationController* controller;
    float blendTime;
    int   testCounter;
};

class AnimatedAmbientLightTest : public ScenegraphTest
{
public:
    AnimatedAmbientLightTest();
    
    virtual const char* GetName() { return "Animated Ambient Light";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( -2.0f, -5.0f, 20.0f ); }
    virtual void CleanUp();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a checkered cube where the ambient light  \n\
        is changing between red, green and blue. \n\
        One face may only be alternating between yellow and white \n\
        because the default setting for the coverage tests has a yellow \n\
        directional light.\n";
    }
};

class MovingCollisionPlaneTest : public ScenegraphTest
{
public:
    MovingCollisionPlaneTest();
    
    virtual const char* GetName() { return "Particle Collision with Moving Collision Planes";}
    
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 5.0f, -20.0f ); }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a particle system with 3 static collision \n\
        planes and 2 moving collision planes.\n";
    }

private:
    tDirectionalLight* light;
};



// Expected result:  Draws an army of flying pigs attacking some farmers.
// The textures on the farmers and pigs are done using sprite textures on particles
// and should be animated.
class AnimatedParticleTextureTest : public ScenegraphTest
{
public:
    AnimatedParticleTextureTest();
    
    virtual const char* GetName() { return "Particles with animated textures";}
      
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(4.0f, 0.5f, -0.5f); }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        The textures on the farmers and pigs are done using sprite \n\
        textures on particles and should be animated.\n";
    }
};

class ParticleBlendingTest : public CoverageTest
{
public:
    ParticleBlendingTest();
    virtual ~ParticleBlendingTest();

    virtual const char* GetName() { return "Particle Blending";}
    rmt::Vector GetCameraPos() { return rmt::Vector(30.0f, 1.0f, 1.0f); }
    virtual void Setup();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Three particle flame systems are displayed.  The one on \n\
        the left is small, while the right one is large.\n\
        The one in the middle is created by blending the other two.\n";
    }

private:
    tParticleSystem* fire;
    tEffectController* fireControllerPrimary;
    
    tParticleSystemInstance* fireInstance[3];
    tEffectController* fireController[3];

    float totalTime;
};

class AllGeometryTest : public CoverageTest
{
public:
    AllGeometryTest();
    virtual ~AllGeometryTest();

    virtual const char* GetName() { return "All Geometry Types"; }
    rmt::Vector GetCameraPos() { return rmt::Vector(-1.0f, 1.0f, -7.0f);}
    
    virtual void Setup();
    virtual void Display();
    virtual void Update(float deltaTime);
    void CleanUp();
    
    void DrawCube(rmt::Vector cubeCenter, float width, tShader* shader, tTexture* texture, pddiBlendMode mode, bool multiTextured);
    void DrawCubeFace(tShader* shader, tTexture* tex, rmt::Vector coord1, rmt::Vector coord2, rmt::Vector coord3, rmt::Vector coord4, pddiBlendMode mode, bool multiTextured);
    void DisplayTest(int testNumber);
    

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Rotates views between indexed, deindexed and streamed. \n\
        Draws three cubes.  The top row uses textures that are lit. \n\
        The bottom rows textures are not.  The first column contains \n\
        a single textured cube, the second nontextured and the third \n\
        multi-textured. \n";
    }

private:
    float totalTime;
    tDrawable* indexedScene;
    tDrawable* deindexedScene;
    
    tGeometry* indexCubeLit;
    tGeometry* indexCubeUnlit;
    tGeometry* deindexCubeLit;
    tGeometry* deindexCubeUnlit;
    
    tDirectionalLight* light;
    
    tShader* shader;
    tShader* shaderLtMap;
    
    tTexture* textures[3];
    tTexture* lightMap;
    tTexture* baseTex;

    char* testNames[3];
    int currentTest;
};

class ShadowTest : public CoverageTest
{
public:
    ShadowTest();
    
    virtual const char* GetName() { return "Shadow";}
    rmt::Vector GetCameraPos() { return rmt::Vector(1.5f, 6.0f, -4.0f);}
    
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void BeginRender(const CoverAppRendering& appRender);
    virtual void EndRender(const CoverAppRendering& appRender);
    virtual void Update(float deltaTime);
    void CleanUp();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a sphere with a shadow.\n";
    }

private:
    tShadowGenerator* gen;
    tShadow* shadow;
    tDrawable* drawable;
    tDrawable* room;

    tDirectionalLight* light;
};

class FountainTest : public ScenegraphTest
{
public:
    FountainTest();
    virtual ~FountainTest();

    virtual const char* GetName() {return "The Pure3D Fountain";}

    virtual rmt::Vector GetCameraPos() {return rmt::Vector(40.0f, 0.5f, 10.0f);}
    virtual void Setup();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws the Pure3D fountain using a bumpmapped texture.\n\
        The fountain should have a particle system attached to it.\n";
    }

private:
    tGeometry* fountainTop;
    tGeometry* fountainBottom;
    
    tTexture* bumpMap;
    tTexture* baseTex;

    tShader* shader;

    tGeometry* cube;
    tTexture* cubeBump;
    tTexture* cubeText;
};

//-------------------
// animated camera test
//-------------------
class AnimatedCameraTest : public CoverageTest
{
public:
    AnimatedCameraTest();

    virtual const char* GetName() { return "Animated Camera";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 50.0f, 15.0f, 60.0f ); }
    
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a scene with an animated camera \n\
        flying around it. \n";
    }

private:
    
    tVectorCamera* camera;
    tCameraAnimationController* controller;

    tDrawable* scene;

};

//-------------------
// inventory test
//-------------------
class Inventory_Test : public CoverageTest
{
public:
    Inventory_Test();

    virtual const char* GetName() { return "Inventory";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 15.0f, -25.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual bool SectionTest(void);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         multiple objects are loaded and drawn.\n\
         an \"x\" indicates the deletion of a sphere in place of it\n";
    }

private:
    tGeometry* cube;
    tGeometry* cone;
    tGeometry* sphere;
    tGeometry* cylinder;
    tGeometry* torus;
    tGeometry* redSphere;
    tGeometry* redSphere2;
    tGeometry* blueSphere;
    tGeometry* xmark;
    tGeometry* tempCube;
    tGeometry* tempCube2;

    bool wasDeleted;
};


//--------------------------
// particle instancing test
//--------------------------

class ParticleInstancingTest : public CoverageTest
{
public:
    ParticleInstancingTest();
    virtual ~ParticleInstancingTest();

    virtual const char* GetName() { return "Particle Instancing"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 12.5f, 0.0f, 2.0f ); }

    virtual void Setup();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays 25 particle instances\n\
         in a 5x5 grid\n";
    }

private:

    tParticleSystem* bubbles;
    tParticleSystemInstance* bubbleInstance[25];
    tEffectController* bubbleController[25];

};

//------------------------
// multiple viewport test
//------------------------
class MultipleViewportTest : public CoverageTest
{
public:
    MultipleViewportTest();

    virtual const char* GetName() { return "Multiple Viewport"; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays a scene with an animated camera in five viewports\n\
         -overlapping and non overlapping instances.\n";
    }

private:
    tView* viewport1;
    tView* viewport2;
    tView* viewport3;
    tView* viewport4;
    tView* viewport5;

    tVectorCamera* camera1;

    tDrawable* scene;
    tCameraAnimationController* controller;
};

//-----------------------
// file compression test
//-----------------------
class FileCompressionTest : public CoverageTest
{
public:
    FileCompressionTest();
    virtual ~FileCompressionTest();

    virtual const char* GetName() { return "File Compression"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(0.0f, 0.0f, -1.25f);}

    virtual void Setup();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays three different compressions of the\n\
         DA Max head file\n";
    }

private:
    tCompositeDrawable* mikeNoCompress;
    tCompositeDrawable* mikeFastCompress;
    tCompositeDrawable* mikeRegCompress;
};

#endif /* _COVERAGE_HPP */


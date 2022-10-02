//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OPTICTEST_HPP
#define OPTICTEST_HPP

#include "coverage.hpp"
/*
//-------------------------------------------------------------------
// Expected result:
//   Draw lens flare effect
// API coverage:
//   tLensFlare
class LensFlareTest : public CoverageTest
{
public:
    LensFlareTest() : flare(NULL), fshader1(NULL), fshader2(NULL), fshader3(NULL), fshader4(NULL) {};
    virtual const char* GetName() { return "LensFlare"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void Display();
private:
    tLensFlareGroup* flare;
    tShader* fshader1;
    tShader* fshader2;
    tShader* fshader3;
    tShader* fshader4;
};

//-------------------------------------------------------------------
//Expected Result:
//  Draw lens flares that disappear behind a cube
// API coverage:
//   tLensFlare->Occlusion
class LensFlareOcclusionTest : public CoverageTest
{
public:   
    LensFlareOcclusionTest();

    virtual const char* GetName() { return "Lens Flare Occlusion";}
    virtual Vector GetCameraPos() { return Vector( 50.0f, 8.0f, -50.0f ); }
    virtual Vector GetActualCameraPosition();
    virtual void CheckFlareVisible(Vector cameraPosition);
    virtual bool RayGoesThroughPlane(Vector pointOnPlane);
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void Display();

private:
    tLensFlareGroup* flare;
    tShader* fshader1;
    tShader* fshader2;
    tGeometry* cube;
    tShader* cubeShader;

    Vector cubeCenter;
    Vector flareCenter;

    bool flareOccluded;
    float cubeWidth;

    char strOccluded[255];

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws two lens flares that disappear behind a cube. \n\
        API coverage: \n\
            tLensFlare->SetOcclusion()\n";
    }

};
*/

#endif
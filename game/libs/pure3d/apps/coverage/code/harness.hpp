/*===========================================================================
    harness.hpp - PDDI test cases

    11-Nov-99 Created by Neall

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _HARNESS_HPP
#define _HARNESS_HPP

#include <radmath/radmath.hpp>
#include <p3d/refcounted.hpp>

#include <p3d/camera.hpp>
#include <p3d/view.hpp>

class CoverageTest;
class ConfigParam;

class CoverAppRendering
{
public:
    CoverAppRendering():m_camera(0), m_view(0){}
    ~CoverAppRendering(){   tRefCounted::Release(m_camera); 
                            tRefCounted::Release(m_view);}
    tCamera* GetCamera(void)const {return(m_camera);} 
    tView*   GetView(void)  const {return(m_view);} 
    void     SetCamera(tCamera* camera){tRefCounted::Assign(m_camera, camera);}
    void     SetView(tView* view){tRefCounted::Assign(m_view, view);}    
private:
    tCamera* m_camera;
    tView*   m_view;
};

const int maxMenuOptions = 20;

class TestHarness
{
public:
    TestHarness();
    ~TestHarness();

    void BeginRender( const CoverAppRendering& appRender );
    void Display( float deltaTime );
    void ShiftMenuUp();
    void ShiftMenuDown();
    void SelectMenuOption();
    void DisplayMenu();
    void EndRender( const CoverAppRendering& appRender );
    void NextTest();
    void PrevTest();
    void EnableRendering(bool enable) { renderingEnabled = enable; }
    void EnableLabels(bool enable)    { labelsEnabled = enable; }

    int  GetNtest() { return nTest; }
    CoverageTest* GetCurrentTest() { return test[currentTest]; }
    void Init( ConfigParam& param );
    bool CreateTest( CoverageTest* newtest, ConfigParam& param );
    void SetDefaultCameraLoc( float x, float y, float z );
    RadicalMathLibrary::Vector GetDefaultCameraLoc();

private:
    bool renderingEnabled;
    bool labelsEnabled;
    int nTest;
    int currentTest;
    CoverageTest* test[96];

    // menu stuff
    int menuOption;
    int xPos;
    int yPos;
    tColour selected;
    tColour deselected;
    int listTop;
};

#endif /* _HARNESS_HPP */

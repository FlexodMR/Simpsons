//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Coverage test application
 *
 * Created 03-Nov-2000 Young (ytaeson@radical.ca)
 * Derived from Trivial
 *
 */

#ifndef COVERAPP_HPP
#define COVERAPP_HPP

#include <radmath/radmath.hpp>
#include <p3d/pure3d.hpp>
#include "configparam.hpp"
#include "grid.hpp"
#include "harness.hpp"

class tView;
class tPointCamera;
class tDirectionalLight;
class tDrawable;
class TestHarness;
class ViewerCamera;
class Grid;

class CoverApp
{
public:
    CoverApp();
    ~CoverApp();

    void Init( ConfigParam& config );
    void Render(float deltaTime);
    void DisplayHelp();
    void PrevTest();
    void NextTest();

    void PrevOption() { harness->ShiftMenuUp(); }
    void NextOption() { harness->ShiftMenuDown(); }
    void SelectOption();
    void DisplayMenu();

    void Cycle( bool docycle ) { m_cycle = docycle; }
    void Pan( float x, float y );
    void Zoom( float zm );
    void Rotate( float x, float y );
    void Reset();
    void SetOptions( ConfigParam& config );
    ViewerCamera* GetCamera() { return camera; }
                
private:
    tView* view;
    ViewerCamera* camera;

    CoverAppRendering m_testRender;

    tDirectionalLight* light;

    bool m_cycle;
    float m_cycleDuration;
    Grid* m_grid;

    TestHarness* harness;
};

#endif


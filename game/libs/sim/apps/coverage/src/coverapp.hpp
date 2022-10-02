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

using namespace RadicalMathLibrary;

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
    void InitBenchmarks( char *filename, tPlatform *platform );
    void Render(float deltaTime);
    void DisplayHelp();

    void PrevTest();
    void NextTest();
    void ResetTest();
    void Cycle( bool docycle ) { m_cycle = docycle; }
    void Pan( float x, float y );
    void Zoom( float zm );
    void Rotate( float x, float y );
    void NextObjectType();
    void DoTimeTests(float dt, float seconds);
    void ToggleDisplaySimStat();
    void Reset();
    void SetOptions( ConfigParam& config );
    ViewerCamera* GetCamera() { return camera; }
            
private:
    tView* view;
    ViewerCamera* camera;

    tDirectionalLight* light;

    bool m_cycle;
    float m_cycleDuration;
    Grid* m_grid;

    TestHarness* harness;
};

#endif

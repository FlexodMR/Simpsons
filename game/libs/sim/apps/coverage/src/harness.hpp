/*===========================================================================
    harness.hpp - PDDI test cases

    11-Nov-99 Created by Neall

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _HARNESS_HPP
#define _HARNESS_HPP

#include <radmath/radmath.hpp>
#include <p3d/pure3d.hpp>

#include "benchmarkresults.hpp"

class CoverageTest;
class ConfigParam;

class TestHarness
{
public:
    TestHarness();
    ~TestHarness();

    void Display( float deltaTime );
    void NextTest();
    void PrevTest();
    void ResetTest();
    void NextObjectType();
    void EnableRendering(bool enable) { renderingEnabled = enable; }
    void EnableLabels(bool enable)   { labelsEnabled = enable; }
    void DoTimeTests(tView *view, float dt, float seconds);
    static void ToggleDisplaySimStat() { displaySimStats = !displaySimStats; }

    int  GetNtest() { return nTest; }
    CoverageTest* GetCurrentTest() { return test[currentTest]; }
    void Init( ConfigParam& param );
    void InitBenchmarks( char *filename, tPlatform *platform );
    bool CreateTest( CoverageTest* newtest, ConfigParam& param );
    void SetDefaultCameraLoc( float x, float y, float z );
    RadicalMathLibrary::Vector GetDefaultCameraLoc();

private:
    bool renderingEnabled;
    bool labelsEnabled;
    int nTest;
    int currentTest;
    CoverageTest* test[64];
    int mNumBenchmarks;
    Benchmark mBenchmark[128];
    BenchmarkResults mBenchmarkResults;
    static bool displaySimStats;
};

#endif /* _HARNESS_HPP */

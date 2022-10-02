/*===========================================================================
    harness.cpp - PDDI test cases

    11-Nov-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "harness.hpp"
#include "coverage.hpp"
#include "configparam.hpp"
#include <p3d/pure3d.hpp>

#include "simcommon/simutility.hpp"

#include <stdio.h>
#include <string.h>

char *StrDup(const char *str)
{
    if(!str)
        return NULL;
    char *newStr = new char[strlen(str) + 1];
    strcpy(newStr, str);
    return newStr;
}

bool TestHarness::displaySimStats = false;

TestHarness::TestHarness()
{
    renderingEnabled = true;
    labelsEnabled = true;
    nTest = 0;
    currentTest = 0;
    for(int i = 0; i < 64; i++)
        test[i] = NULL;
    mNumBenchmarks = 0;
}

//-------------------------------------------------------------------
TestHarness::~TestHarness()
{
    test[currentTest]->CleanUp();

    for(int i=0; i < nTest; i++)
    {
        delete test[i];
    }
    PhysicsTest::Reset();
}

//-------------------------------------------------------------------
// initialize all the nutty tests.
// if the config file says the test is not on, then CreateTest will
// delete it.
void TestHarness::Init(ConfigParam &param)
{
    p3d::InstallDefaultLoaders();
    sim::InstallSimLoaders();

//   sim::SimUnitsManager um;
//   um.SetUnits(1.0f, 1.0f, 1.0f); 

    CreateTest(new InfoScreen, param);

    CreateTest(new BenchmarkingTest, param);

    CreateTest(new PhysicsTest, param);

    CreateTest(new LightLoadTest, param);
    CreateTest(new MediumLoadTest, param);
    CreateTest(new HeavyLoadTest, param);

    CreateTest(new JumbleTest, param);
    CreateTest(new StackTest, param);
    CreateTest(new BreakingStackTest, param);

    CreateTest(new StackTap, param);
    CreateTest(new StackMultiTap, param);
    CreateTest(new FrictionSpin, param);
    CreateTest(new CounterSpin, param);
    CreateTest(new Implossion, param);
    CreateTest(new Crazy, param);
    CreateTest(new Pyramid, param);
    CreateTest(new Pyramid3d, param);
    CreateTest(new WindConst, param);

    CreateTest(new CharacterTest, param);

    PhysicsTest::LoadP3DFiles();
}

//-------------------------------------------------------------------
void TestHarness::InitBenchmarks( char *filename, tPlatform *platform )
{
    IRadFile* pFile;
    radFileOpen(&pFile, filename, false, OpenExisting, NormalPriority, 0);

    unsigned int filesize;
    pFile->GetSizeAsync(&filesize);
    pFile->WaitForCompletion();

    char* buf = new char[filesize + 1];  // +1 for extra \0 at the end
    pFile->ReadAsync(buf, filesize);
    pFile->WaitForCompletion();
    buf[filesize] = '\0';

    pFile->Release();

    int startBenchmarks = mNumBenchmarks;
    //do stuff in here
    Benchmark::ParserInit(buf);
    bool done = false;
    while(!done) {
        if(Benchmark::ParserIsEOF()) {
            done = true;
            continue;
        }

        char *command = Benchmark::ParserGetWord();
        if(!command) {  //no command; skip this line
            Benchmark::ParserGoToNextLine();
        }
        else if(strcmp(command, "BENCHMARK") == 0) {
            char *name = Benchmark::ParserGetString();  //get nBenchmarks name
            mBenchmark[mNumBenchmarks].SetName(name);
            bool addToAll = false;
            bool done = false;
            while(!done) {
                char *arg = Benchmark::ParserGetWord();
                if(strcmp(arg, "") == 0)
                    done = true;
                else if(strcmp(arg, "ADDTOALL") == 0)
                    addToAll = true;
                else if(strcmp(arg, "INHERIT") == 0) {
                    char *baseBenchName = Benchmark::ParserGetString();
                    Benchmark *baseBench = NULL;
                    for(int i = 0; i < mNumBenchmarks; i++) {
                        if(strcmp(mBenchmark[i].GetName(), baseBenchName) == 0)
                            mBenchmark[mNumBenchmarks].AddParams(mBenchmark[i]);
                    }
                }
            }
            Benchmark::ParserGoToNextLine();
            mBenchmark[mNumBenchmarks].ParseFromString();
            if(addToAll) {
                for(int i = 0; i < mNumBenchmarks; i++) {
                    mBenchmark[i].AddParams(mBenchmark[mNumBenchmarks]);
                }
            }
            mNumBenchmarks++;
        }
        else if(strcmp(command, "ENABLE") == 0) {
            bool done = false;
            while(!done) {
                char *benchName = Benchmark::ParserGetString();
                if(strcmp(benchName, "") == 0)
                    done = true;
                else if(strcmp(benchName, "all") == 0) {
                    for(int i = 0; i < mNumBenchmarks; i++)
                        mBenchmark[i].SetEnabled(true);
                }
                else {
                    //not null; find that benchmark
                    for(int i = 0; i < mNumBenchmarks; i++) {
                        if(strcmp(mBenchmark[i].GetName(), benchName) == 0)
                            mBenchmark[i].SetEnabled(true);
                    }
                }
            }
            Benchmark::ParserGoToNextLine();
        }
        else if(strcmp(command, "DISABLE") == 0) {
            bool done = false;
            while(!done) {
                char *benchName = Benchmark::ParserGetString();
                if(strcmp(benchName, "") == 0)
                    done = true;
                else if(strcmp(benchName, "all") == 0) {
                    for(int i = 0; i < mNumBenchmarks; i++)
                        mBenchmark[i].SetEnabled(false);
                }
                else {
                    //not null; find that benchmark
                    for(int i = 0; i < mNumBenchmarks; i++) {
                        if(strcmp(mBenchmark[i].GetName(), benchName) == 0)
                            mBenchmark[i].SetEnabled(false);
                    }
                }
            }
            Benchmark::ParserGoToNextLine();
        }
        else if(strcmp(command, "P3DLOAD") == 0) {
            for(;;) {
                char *arg = Benchmark::ParserGetString();
                if(strcmp(arg, "") == 0)
                    break;
                //load that file
                p3d::load(arg);
            }
            Benchmark::ParserGoToNextLine();
        }
        else {  //unknown command; ignore
            Benchmark::ParserGoToNextLine();
        }
    }
}

//-------------------------------------------------------------------
bool TestHarness::CreateTest(CoverageTest* newtest, ConfigParam& param)
{
    // setup the test if on, delete it otherwise
    if( param.GetOptionIntVal( newtest->GetName() ) == 1 )
    {
#ifdef _XBOX
        newtest->SetArtPath("art\\");
#else
        newtest->SetArtPath(param.GetOptionStrVal("ArtPath"));
#endif
        printf("Setting up %s\n", newtest->GetName());
        newtest->ParseConfigParams(param);
        if(nTest == 0)
            newtest->Setup();
        test[nTest] = newtest;
        nTest++;
        
        return true;
    }
    else
    {
        delete newtest;
        return false;
    }
}

//-------------------------------------------------------------------
void TestHarness::NextTest()
{
    test[currentTest]->CleanUp();
    currentTest = (currentTest >= nTest-1) ? 0 : currentTest+1;
    test[currentTest]->Setup();
}

//-------------------------------------------------------------------
void TestHarness::PrevTest()
{
    test[currentTest]->CleanUp();
    currentTest = (currentTest > 0) ? currentTest-1 : nTest - 1;
    test[currentTest]->Setup();
}

//-------------------------------------------------------------------
void TestHarness::ResetTest()
{
    test[currentTest]->CleanUp();
    test[currentTest]->Setup();
}

//-------------------------------------------------------------------
void TestHarness::NextObjectType()
{
    PhysicsTest::NextObjectType();
    ResetTest();
}

//-------------------------------------------------------------------
void TestHarness::DoTimeTests(tView *view, float dt, float seconds)
{
    test[currentTest]->CleanUp();
    currentTest = 0;
    test[0]->Setup();

    InfoScreen *info = dynamic_cast<InfoScreen *>(test[0]);
    BenchmarkingTest *benchTest = dynamic_cast<BenchmarkingTest *>(test[1]);

    if(info && benchTest) {
        int i;

        //count the total number of benchmarks we're gonna do
        int totalBenchmarkCount = 0;
        for(i = 0; i < mNumBenchmarks; i++) {
            Benchmark *benchmark = &mBenchmark[i];
            if(!benchmark->Enabled())
                continue;
            benchmark->Reset();
            while(!benchmark->GoToNextValue())
                totalBenchmarkCount++;
            totalBenchmarkCount++;  //+1 for the one that doesn't get counted
        }

        //do benchmarks
        int benchmarkNum = 0;
        for(i = 0; i < mNumBenchmarks; i++) {
            Benchmark *benchmark = &mBenchmark[i];
            if(!benchmark->Enabled())
                continue;
            //count how many benchmarks we're gonna do
            benchmark->Reset();
            int subBenchmarkCount = 1;
            while(!benchmark->GoToNextValue())
                subBenchmarkCount++;
            benchmark->Reset();
            printf("%d tests\n", subBenchmarkCount);

            char testFilename[256];
            sprintf(testFilename, "PhBench %s", benchmark->GetName());

            //do the benchmarks
            mBenchmarkResults.StartBenchmark(testFilename);
            info->StartTimeTests(totalBenchmarkCount);
            bool done = false;
            int subBenchmarkNum = 0;
            while(!done) {
                //draw the info screen for this test
                p3d::context->BeginFrame();
                view->BeginRender();
                p3d::stack->Push();

                info->ExecutingTimeTest(
                    benchmarkNum, subBenchmarkNum + 1, subBenchmarkCount,
                    benchmark->GetName(), benchmark);
                info->Display();

                p3d::stack->Pop();
                view->EndRender();
                p3d::context->EndFrame(true);

                BenchmarkParameter *param = benchmark->GetParam("Draw Scene While Benchmarking");
                bool drawSceneWhileBenchmarking = false;
                if(param)
                    drawSceneWhileBenchmarking = param->GetAsBool();

                //run the test
                benchTest->SetBenchmark(benchmark);
                UpdateInfo updateInfo;
                do {
                    updateInfo = benchTest->DoTimeTest(
                        benchmark->GetParam("Timestep")->GetAsFloat(),
                        benchmark->GetParam("Seconds to Run")->GetAsFloat(),
                        drawSceneWhileBenchmarking ? view : NULL,
                        drawSceneWhileBenchmarking ? info : NULL);
                } while(updateInfo.mSimTime > 2000.0f || updateInfo.mCollisionTime > 2000.0f);


                char benchName[128];
                sprintf(benchName, "%s %d", benchTest->GetName(), subBenchmarkNum);
                Result result(benchName, updateInfo, *benchmark);
                mBenchmarkResults.Add(result);

                if(benchmark->GoToNextValue())
                    done = true;
                subBenchmarkNum++;
                benchmarkNum++;
            }
            info->EndTimeTests();
            mBenchmarkResults.WriteToFile(testFilename);
            mBenchmarkResults.EndBenchmark();
            benchTest->SetBenchmark(NULL);
        }
    }
}

//-------------------------------------------------------------------
void TestHarness::Display( float deltaTime )
{
    if(renderingEnabled)
    {
        if(test[currentTest])
        {
            if(labelsEnabled)
            {
                char buf[255];
                sprintf(buf, "%s  (test %d of %d)", test[currentTest]->GetName(), currentTest+1, nTest);
                p3d::pddi->DrawString(buf, 25, 10, tColour(200,200,200));
            }

            test[currentTest]->Update( deltaTime );
            test[currentTest]->Display();

            if (displaySimStats)
                sim::SimStats::DisplayStats(true, 50, 200);

        }
    }
}

//-------------------------------------------------------------------
void TestHarness::SetDefaultCameraLoc(float x, float y, float z)
{
    CoverageTest::SetDefCameraPos( RadicalMathLibrary::Vector(x, y, z) );
}

//-------------------------------------------------------------------
RadicalMathLibrary::Vector TestHarness::GetDefaultCameraLoc()
{
    if(test[currentTest])
        return test[currentTest]->GetCameraPos();

    return Vector(0, 0, 0);
}

#ifndef _benchmarkresults_hpp_
#define _benchmarkresults_hpp_

#include <stdio.h>

#include <radfile.hpp>

#include <simcommon/tarray.hpp>
#include <simcommon/tlist.hpp>
#include <simcollision/collisionanalyserdata.hpp>

#include "benchmark.hpp"

const int cResultMaxNameLength = 32;

//
//  Benchmarking Results data structures
//

class UpdateInfo {
public:
    UpdateInfo():
        mSimTime(0),
        mCollisionTime(0),
        mOtherTime(0)
        { ; }
    UpdateInfo(float simTime, float collisionTime):
        mSimTime(simTime),
        mCollisionTime(collisionTime),
        mOtherTime(0)
        { ; }
    UpdateInfo& operator+=(UpdateInfo& info) {
        mSimTime += info.mSimTime;
        mCollisionTime += info.mCollisionTime;
        mOtherTime += info.mOtherTime;
        return *this;
    }
    void Clear(void) {
        mSimTime = mCollisionTime = mOtherTime = 0;
    }
    float mSimTime;
    float mCollisionTime;
    float mOtherTime;     //all other unnaccounted-for time
};

class Result {
public:
    Result();
    Result(const char *name, UpdateInfo& info, Benchmark& benchmark);

    friend bool operator==(const Result& lhs, const Result& rhs);

    char mName[cResultMaxNameLength];
    UpdateInfo mInfo;
    Benchmark mBenchmark;
};

class FileWriter {
public:
    FileWriter();
    ~FileWriter();
    int Open(char *filename, char *ext);
    bool IsOpen();
    int Printf(const char *format, ...);
    int Write(char *buf, int length, bool translateCRLF = false);
    int Close();

private:
#ifdef RAD_WIN32
    FILE *fp;
#endif
#ifdef RAD_XBOX
    HANDLE fh;
#endif
#ifdef RAD_PS2
    int fd;
#endif
#ifdef RAD_GAMECUBE
    //for use with RadFileServer
    //to be enabled once the File Server works in release mode
    //IRadFile *fp;
#endif
};

class BenchmarkResults {
public:
    BenchmarkResults();
    void StartBenchmark(char *filename = NULL);
    void EndBenchmark();
    void Add(Result& newResult);
    Result& Get(int i)
        { return mResult[i]; }
    Result& operator[] (int i)
        { return mResult[i]; }
    void Clear()
        { mResult.Clear(); }
    int NumResults()
        { return mResult.GetSize(); }
    int WriteToFile(char *filename);

private:
    void WriteHeader(FileWriter& file, Result& result);
    void WriteData(FileWriter& file, Result& result);

    sim::TArray<Result> mResult;
    int mNumResults;
    bool mStoreResults;
    FileWriter mFile;
};

#endif
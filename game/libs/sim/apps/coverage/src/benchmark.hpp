#ifndef _benchmark_hpp_
#define _benchmark_hpp_

#include <stdio.h>

#include <radfile.hpp>

#include <simcommon/tarray.hpp>
#include <simcommon/tlist.hpp>
#include <simcollision/collisionanalyserdata.hpp>

#include "benchmarkparameter.hpp"

class Benchmark {
public:
    Benchmark();
    Benchmark(int nparams);
    Benchmark(const Benchmark& benchmark);
    Benchmark& operator=(const Benchmark& rhs);
    ~Benchmark();
    void SetName(const char *name);
    char *GetName() { return mName; }
    char *ParseFromString(void);
    void AddParam(BenchmarkParameter *newParam);
    void AddParam(int index, BenchmarkParameter *newParam);
    void AddParams(Benchmark &src);
    void Clear();
    void Reset();
    int NumParams() { return mParam.GetSize(); }
    bool GoToNextValue();
    BenchmarkParameter* GetParam(char *name);
    BenchmarkParameter* GetParam(int index);
    void DeleteParam(char *name);
    void DeleteParam(int index);
    bool Equals(Benchmark& compare);
    bool Enabled() { return mEnabled; }
    void SetEnabled(bool enabled) { mEnabled = enabled; }

    static void ParserInit(char *parseString);
    static char *ParserGetWord(void);
    static int ParserGetInt(void);
    static float ParserGetFloat(void);
    static char *ParserGetString(void);
    static char *ParserGetRestOfLine(void);
    static char *ParserGoToNextLine(void);
    static bool ParserIsEOL(void);
    static bool ParserIsEOF(void);
    static bool ParserIsNewline(void);
    static bool ParserIsLineFinished(void);
    static bool ParserIsSpace(void);

    friend bool operator==(const Benchmark& lhs, const Benchmark& rhs);

protected:
    sim::TList<BenchmarkParameter *> mParam;
    char mName[128];
    static char *sParseString;
    static char sStringStorage[256];
    bool mEnabled;
};

#endif
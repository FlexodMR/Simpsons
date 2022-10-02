#include <typeinfo>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include <stdarg.h>

#include "benchmark.hpp"

//
//  Benchmark implementation
//

Benchmark::Benchmark()
:mParam(),
mEnabled(false)
{
     mName[0] = '\0';
}

Benchmark::Benchmark(int nparams)
:mParam(nparams),
mEnabled(false)
{
     mName[0] = '\0';
}

Benchmark::Benchmark(const Benchmark& benchmark)
:mEnabled(false)
{
    Benchmark *bench = const_cast<Benchmark *>(&benchmark);
    Clear();
    for(int i = 0; i < bench->NumParams(); i++)
        AddParam(bench->GetParam(i));
    SetName(benchmark.mName);
}

Benchmark& Benchmark::operator=(const Benchmark& rhs)
{
    Benchmark *bench = const_cast<Benchmark *>(&rhs);
    Clear();
    for(int i = 0; i < bench->NumParams(); i++)
        AddParam(bench->GetParam(i));
    SetName(rhs.mName);
    return *this;
}

Benchmark::~Benchmark()
{
    for(int i = 0; i < mParam.GetSize(); i++)
        mParam[i]->Release();
    mParam.RemoveAll();
}

void Benchmark::SetName(const char *name)
{
    strcpy(mName, name);
}

char *Benchmark::ParseFromString(void)
{
    char paramName[128];
    char paramArgs[128];
    bool done = false;
    while(!done) {
        char *verb = ParserGetWord();
        if(!verb) {  //no command; skip this line
        }
        else if(strcmp(verb, "END") == 0) {
            done = true;
        }
        else if(strcmp(verb, "UNDEF") == 0) {
            DeleteParam(ParserGetString());
        }
        else if(strcmp(verb, "INT") == 0) {
            strcpy(paramName, ParserGetString());
            strcpy(paramArgs, ParserGetRestOfLine());
            if(strlen(paramName) == 0 || strlen(paramArgs) == 0)
                continue;
            DeleteParam(paramName);
            AddParam(new BenchmarkParameterIntList(paramName, paramArgs));
        }
        else if(strcmp(verb, "INTRANGE") == 0) {
            strcpy(paramName, ParserGetString());
            int lo = ParserGetInt();
            int hi = ParserGetInt();
            int growby = ParserGetInt();
            if(strlen(paramName) == 0)
                continue;
            DeleteParam(paramName);
            AddParam(new BenchmarkParameterIntRange(paramName, lo, hi, (growby == 0) ? 1 : growby));
        }
        else if(strcmp(verb, "FLOAT") == 0) {
            strcpy(paramName, ParserGetString());
            strcpy(paramArgs, ParserGetRestOfLine());
            if(strlen(paramName) == 0 || strlen(paramArgs) == 0)
                continue;
            DeleteParam(paramName);
            AddParam(new BenchmarkParameterFloatList(paramName, paramArgs));
        }
        else if(strcmp(verb, "FLOATRANGE") == 0) {
            strcpy(paramName, ParserGetString());
            float lo = ParserGetFloat();
            float hi = ParserGetFloat();
            float growby = ParserGetFloat();
            if(strlen(paramName) == 0)
                continue;
            DeleteParam(paramName);
            AddParam(new BenchmarkParameterFloatRange(paramName, lo, hi, (growby == 0.0f) ? 1.0f : growby));
        }
        else if(strcmp(verb, "BOOL") == 0) {
            strcpy(paramName, ParserGetString());
            if(strlen(paramName) == 0)
                continue;
            DeleteParam(paramName);
            AddParam(new BenchmarkParameterBool(paramName));
        }
        else if(strcmp(verb, "STRING") == 0) {
            strcpy(paramName, ParserGetString());
            if(strlen(paramName) == 0)
                continue;
            BenchmarkParameterString *str = new BenchmarkParameterString(paramName);
            char *p;
            while(strcmp(p = ParserGetString(), "") != 0)
                str->AddValue(p);
            DeleteParam(paramName);
            AddParam(str);
        }
        else {  //unknown command; ignore for now
        }

        //go to the next line for processing
        Benchmark::ParserGoToNextLine();
    }
    return sParseString;
}

void Benchmark::AddParam(BenchmarkParameter *newParam)
{
    newParam->AddRef();
    mParam.Add(newParam);
}

void Benchmark::AddParam(int index, BenchmarkParameter *newParam)
{
    newParam->AddRef();
    mParam.InsertAt(index, newParam);
}

void Benchmark::AddParams(Benchmark &src)
{
    for(int i = 0; i < src.NumParams(); i++) {
        BenchmarkParameter *p = src.GetParam(i);
        BenchmarkParameter *search = GetParam(p->GetName());
        if(!search)
            AddParam(p->Clone());
        else {
            //a parameter by that name already exists; ignore it for now
            //(first one to specify it is the one that gets it)
        }
    }
}

void Benchmark::Clear()
{
    for(int i = 0; i < mParam.GetSize(); i++)
        mParam[i]->Release();
    mParam.RemoveAll();
}

void Benchmark::Reset()
{
    for(int i = 0; i < mParam.GetSize(); i++)
        mParam[i]->Reset();
}

bool Benchmark::GoToNextValue()
{
    int i = mParam.GetSize() - 1;
    while(mParam[i]->GoToNextValue()) {
        if(i == 0)
            return true;
        i--;
    }
    return false;
}

BenchmarkParameter* Benchmark::GetParam(char *name)
{
    for(int i = 0; i < mParam.GetSize(); i++) {
        if(strcmp(mParam[i]->GetName(), name) == 0)
            return mParam[i];
    }

    return NULL;
}

BenchmarkParameter* Benchmark::GetParam(int index)
{
    return mParam[index];
}

void Benchmark::DeleteParam(char *name)
{
    for(int i = mParam.GetSize() - 1; i >= 0; i--) {
        if(strcmp(mParam[i]->GetName(), name) == 0)
            DeleteParam(i);
    }
}

void Benchmark::DeleteParam(int index)
{
    mParam[index]->Release();
    mParam.RemoveAt(index);
}

bool Benchmark::Equals(Benchmark& compare)
{
    if(mParam.GetSize() != compare.mParam.GetSize())
        return false;

    for(int i = 0; i < mParam.GetSize(); i++) {
        if(&mParam[i] != &compare.mParam[i])
            return false;
    }
    return true;
}

char *Benchmark::sParseString;
char Benchmark::sStringStorage[256];
void Benchmark::ParserInit(char *parseString)
{
    sParseString = parseString;
}

char *Benchmark::ParserGetWord(void)
{
    while(ParserIsSpace())
        sParseString++;
    if(ParserIsLineFinished()) {
        sStringStorage[0] = '\0';
        return sStringStorage;
    }
    int i = 0;
    while(isalnum(*sParseString) || *sParseString == '.')
        sStringStorage[i++] = *sParseString++;
    sStringStorage[i] = '\0';
    return sStringStorage;
}

int Benchmark::ParserGetInt(void)
{
    return atoi(ParserGetWord());
}

float Benchmark::ParserGetFloat(void)
{
    return (float)atof(ParserGetWord());
}

char *Benchmark::ParserGetString(void)
{
    while(*sParseString != '\"' && !ParserIsLineFinished())
        sParseString++;
    if(*sParseString == '\"')
        sParseString++;
    else {
        sStringStorage[0] = '\0';
        return sStringStorage;
    }

    int i = 0;
    while(*sParseString != '\"') {
        if(ParserIsLineFinished()) {
            sStringStorage[0] = '\0';
            return sStringStorage;
        }
        sStringStorage[i++] = *sParseString++;
    }
    sParseString++;
    sStringStorage[i] = '\0';
    return sStringStorage;
}

char *Benchmark::ParserGetRestOfLine(void)
{
    while(ParserIsSpace())
        sParseString++;
    int i = 0;
    while(!ParserIsLineFinished())
        sStringStorage[i++] = *sParseString++;
    sStringStorage[i] = '\0';
    return sStringStorage;
}

char *Benchmark::ParserGoToNextLine(void)
{
    while(!ParserIsNewline() && *sParseString != '\0')
        sParseString++;
    while(ParserIsNewline())
        sParseString++;
    return sParseString;
}

bool Benchmark::ParserIsEOL(void)
{
    char *str = sParseString;
    while(isspace(*str))
        str++;
    if(*str == '\n' || *str == '\r' || *str == '#' || *str == '\0')
        return true;
    return false;
}

bool Benchmark::ParserIsEOF(void)
{
    if(*sParseString == '\0')
        return true;
    return false;
}

bool Benchmark::ParserIsNewline(void)
{
    if(*sParseString == '\n' || *sParseString == '\r')
        return true;
    return false;
}

bool Benchmark::ParserIsLineFinished(void)
{
    if(ParserIsNewline() || *sParseString == '#' || *sParseString == '\0')
        return true;
    return false;
}

bool Benchmark::ParserIsSpace(void)
{
    if(*sParseString == ' ' || *sParseString == '\t')
        return true;
    return false;
}

bool operator==(const Benchmark& lhs, const Benchmark& rhs)
{
    //circumvent stinky const crap
    Benchmark *b0 = const_cast<Benchmark *>(&lhs);
    Benchmark *b1 = const_cast<Benchmark *>(&rhs);

    int size = lhs.mParam.GetSize();
    if(size != rhs.mParam.GetSize())
        return false;

    for(int i = 0; i < size; i++) {
        if(&b0->mParam[i] != &b1->mParam[i])
            return false;
    }
    return true;
}
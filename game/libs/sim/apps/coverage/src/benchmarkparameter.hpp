#ifndef _benchmarkparameter_hpp_
#define _benchmarkparameter_hpp_

#include <stdio.h>

#include <radfile.hpp>
#include <p3d/refcounted.hpp>

#include <simcommon/tarray.hpp>
#include <simcommon/tlist.hpp>
#include <simcollision/collisionanalyserdata.hpp>

class BenchmarkParameter : public tRefCounted {
public:
    BenchmarkParameter(char *name);
    ~BenchmarkParameter();

    virtual void Reset() = 0;
    virtual bool GoToNextValue() = 0;
    virtual BenchmarkParameter *Clone() = 0;
    virtual int GetNumValues() = 0;

    //Compare: you can assume that compare will always be the same type as yourself
    //true == objects are equal
    //false == objects are not equal
    virtual bool Compare(BenchmarkParameter *compare) = 0;

    virtual char *GetAsString()
        { return NULL; }
    virtual float GetAsFloat()
        { return 0.0f; }
    virtual int   GetAsInt()
        { return 0; }
    virtual bool  GetAsBool()
        { return false; }

    char *GetName()
        { return mName; }

    friend bool operator==(const BenchmarkParameter& lhs, const BenchmarkParameter& rhs);
private:
    char *mName;
};

class BenchmarkParameterString : public BenchmarkParameter {
public:
    BenchmarkParameterString(char *name);
    BenchmarkParameterString(char *name, int listSize, char **list);
    ~BenchmarkParameterString();
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return mList.GetSize(); }

    void AddValue(char *value);
    void SetValue(int index, char *value);

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

    friend bool operator==(const BenchmarkParameterString& lhs, const BenchmarkParameterString& rhs);

protected:
    sim::TList<char *> mList;
    int mCurrent;
};

class BenchmarkParameterFloatList : public BenchmarkParameter {
public:
    BenchmarkParameterFloatList(char *name);
    BenchmarkParameterFloatList(char *name, int listSize, float *list);
    BenchmarkParameterFloatList(char *name, char *list);
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return mList.GetSize(); }

    void AddValue(float value);
    void SetValue(int index, float value);

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

protected:
    sim::TArray<float> mList;
    int mCurrent;
};

class BenchmarkParameterFloatRange : public BenchmarkParameter {
public:
    BenchmarkParameterFloatRange(char *name);
    BenchmarkParameterFloatRange(char *name, float lo, float hi, float growby = 1);
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return (int)((mHi - mLo) / mGrowBy); }

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

protected:
    float mLo, mHi, mGrowBy;
    float mCurrent;
};

class BenchmarkParameterIntList : public BenchmarkParameter {
public:
    BenchmarkParameterIntList(char *name);
    BenchmarkParameterIntList(char *name, int listSize, int *list);
    BenchmarkParameterIntList(char *name, char *list);
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return mList.GetSize(); }

    void AddValue(int value);
    void SetValue(int index, int value);

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

    friend bool operator==(const BenchmarkParameterIntList& lhs, const BenchmarkParameterIntList& rhs);

protected:
    sim::TArray<int> mList;
    int mCurrent;
};

class BenchmarkParameterIntRange : public BenchmarkParameter {
public:
    BenchmarkParameterIntRange(char *name);
    BenchmarkParameterIntRange(char *name, int lo, int hi, int growby = 1);
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return (mHi - mLo) / mGrowBy; }

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

protected:
    int mLo, mHi, mGrowBy;
    int mCurrent;
};

class BenchmarkParameterBool : public BenchmarkParameter {
public:
    BenchmarkParameterBool(char *name);
    virtual void Reset();
    virtual bool GoToNextValue();
    virtual BenchmarkParameter *Clone();
    virtual bool Compare(BenchmarkParameter *compare);
    virtual int GetNumValues() { return 2; }

    virtual char *GetAsString();
    virtual float GetAsFloat();
    virtual int GetAsInt();
    virtual bool GetAsBool();

protected:
    bool mValue;
};

#endif
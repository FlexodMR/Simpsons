#include <typeinfo>

#include "benchmarkparameter.hpp"

//
//  BenchmarkParameter & children implementation
//

BenchmarkParameter::BenchmarkParameter(char *name)
{
    if(name) {
        mName = new char[strlen(name) + 1];
        strcpy(mName, name);
    }
    else
        mName = NULL;
}

BenchmarkParameter::~BenchmarkParameter()
{
    if(mName)
        delete [] mName;
}

bool operator==(const BenchmarkParameter& lhs, const BenchmarkParameter& rhs)
{
    if(typeid(lhs) == typeid(rhs))
        return false;

    BenchmarkParameter *plhs = const_cast<BenchmarkParameter *>(&lhs);
    BenchmarkParameter *prhs = const_cast<BenchmarkParameter *>(&rhs);
    return plhs->Compare(prhs);
}

//-------------------------------------------------------------------------------

BenchmarkParameterString::BenchmarkParameterString(char *name)
:BenchmarkParameter(name), mList(), mCurrent(0)
{
}

BenchmarkParameterString::BenchmarkParameterString(char *name, int listSize, char **list)
:BenchmarkParameter(name), mList(listSize)
{
    for(int i = 0; i < listSize; i++)
        AddValue(list[i]);
}

BenchmarkParameterString::~BenchmarkParameterString()
{
    for(int i = 0; i < mList.GetSize(); i++) {
        if(mList[i])
            delete mList[i];
    }
}

void BenchmarkParameterString::Reset()
{
    mCurrent = 0;
}

bool BenchmarkParameterString::GoToNextValue()
{
    mCurrent++;
    if(mCurrent >= mList.GetSize()) {
        mCurrent = 0;
        return true;
    }
    return false;
}

BenchmarkParameter *BenchmarkParameterString::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterString(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterString *p = dynamic_cast<BenchmarkParameterString *>(param);
    for(int i = 0; i < mList.GetSize(); i++)
        p->AddValue(mList[i]);
    p->mCurrent = mCurrent;
    return param;
}

bool BenchmarkParameterString::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterString *p = dynamic_cast<BenchmarkParameterString *>(compare);
    if(strcmp(mList[mCurrent], p->mList[p->mCurrent]) == 0)
        return true;
    return false;
}

void BenchmarkParameterString::AddValue(char *value)
{
    //make a copy of the string
    char *copy = new char[strlen(value) + 1];
    strcpy(copy, value);
    mList.Add(copy);
}

void BenchmarkParameterString::SetValue(int index, char *value)
{
    //make a copy of the string
    char *copy = new char[strlen(value) + 1];
    strcpy(copy, value);
    if(mList[index])
        delete [] mList[index];
    mList.SetAt(index, value);
}

char *BenchmarkParameterString::GetAsString()
{
    return mList[mCurrent];
}

float BenchmarkParameterString::GetAsFloat()
{
    return (float)rmt::Hash(mList[mCurrent]);
}

int BenchmarkParameterString::GetAsInt()
{
    return rmt::Hash(mList[mCurrent]);
}

bool BenchmarkParameterString::GetAsBool()
{
    return mList[mCurrent] ? true : false;
}

//-------------------------------------------------------------------------------

static char gStringValue[32];

BenchmarkParameterFloatList::BenchmarkParameterFloatList(char *name)
:BenchmarkParameter(name), mList(), mCurrent(0)
{
}

BenchmarkParameterFloatList::BenchmarkParameterFloatList(char *name, int listSize, float *list)
:BenchmarkParameter(name), mList(listSize), mCurrent(0)
{
    for(int i = 0; i < listSize; i++)
        AddValue(list[i]);
}

BenchmarkParameterFloatList::BenchmarkParameterFloatList(char *name, char *list)
:BenchmarkParameter(name), mList(), mCurrent(0)
{
    float num;
    char *token = strtok(list, " ");
    while(token != NULL) {
        sscanf(token, "%f", &num);
        AddValue(num);
        token = strtok(NULL, " ");
    }
}

void BenchmarkParameterFloatList::Reset()
{
    mCurrent = 0;
}

bool BenchmarkParameterFloatList::GoToNextValue()
{
    mCurrent++;
    if(mCurrent >= mList.GetSize()) {
        mCurrent = 0;
        return true;
    }
    return false;
}

BenchmarkParameter *BenchmarkParameterFloatList::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterFloatList(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterFloatList *p = dynamic_cast<BenchmarkParameterFloatList *>(param);
    for(int i = 0; i < mList.GetSize(); i++)
        p->AddValue(mList[i]);
    p->mCurrent = mCurrent;
    return param;
}

bool BenchmarkParameterFloatList::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterFloatList *p = dynamic_cast<BenchmarkParameterFloatList *>(compare);
    if(GetAsFloat() == p->GetAsFloat())
        return true;
    return false;
}

void BenchmarkParameterFloatList::AddValue(float value)
{
    mList.Add(value);
}

void BenchmarkParameterFloatList::SetValue(int index, float value)
{
    mList.SetAt(index, value);
}

char *BenchmarkParameterFloatList::GetAsString()
{
    sprintf(gStringValue, "%f", mList[mCurrent]);
    return gStringValue;
}

float BenchmarkParameterFloatList::GetAsFloat()
{
    return mList[mCurrent];
}

int BenchmarkParameterFloatList::GetAsInt()
{
    return (int)mList[mCurrent];
}

bool BenchmarkParameterFloatList::GetAsBool()
{
    return mList[mCurrent] != 0 ? true : false;
}

//-------------------------------------------------------------------------------

BenchmarkParameterFloatRange::BenchmarkParameterFloatRange(char *name)
:BenchmarkParameter(name), mLo(0), mHi(0), mGrowBy(0), mCurrent(0)
{
}

BenchmarkParameterFloatRange::BenchmarkParameterFloatRange(char *name, float lo, float hi, float growby)
:BenchmarkParameter(name), mLo(lo), mHi(hi), mGrowBy(growby), mCurrent(lo)
{
    rAssert(mGrowBy > 0);
}

void BenchmarkParameterFloatRange::Reset()
{
    mCurrent = mLo;
}

bool BenchmarkParameterFloatRange::GoToNextValue()
{
    mCurrent += mGrowBy;
    if(mCurrent > mHi) {
        mCurrent = mLo;
        return true;
    }
    return false;
}

BenchmarkParameter *BenchmarkParameterFloatRange::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterFloatRange(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterFloatRange *p = dynamic_cast<BenchmarkParameterFloatRange *>(param);
    p->mLo = mLo;
    p->mHi = mHi;
    p->mGrowBy = mGrowBy;
    p->mCurrent = mCurrent;
    return param;
}

bool BenchmarkParameterFloatRange::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterFloatRange *p = dynamic_cast<BenchmarkParameterFloatRange *>(compare);
    if(GetAsFloat() == p->GetAsFloat())
        return true;
    return false;
}

char *BenchmarkParameterFloatRange::GetAsString()
{
    sprintf(gStringValue, "%f", mCurrent);
    return gStringValue;
}

float BenchmarkParameterFloatRange::GetAsFloat()
{
    return mCurrent;
}

int BenchmarkParameterFloatRange::GetAsInt()
{
    return (int)mCurrent;
}

bool BenchmarkParameterFloatRange::GetAsBool()
{
    return mCurrent != 0 ? true : false;
}

//-------------------------------------------------------------------------------

BenchmarkParameterIntList::BenchmarkParameterIntList(char *name)
:BenchmarkParameter(name), mList(), mCurrent(0)
{
}

BenchmarkParameterIntList::BenchmarkParameterIntList(char *name, int listSize, int *list)
:BenchmarkParameter(name), mList(listSize), mCurrent(0)
{
    for(int i = 0; i < listSize; i++)
        AddValue(list[i]);
}

BenchmarkParameterIntList::BenchmarkParameterIntList(char *name, char *list)
:BenchmarkParameter(name), mList(), mCurrent(0)
{
    int num;
    char *token = strtok(list, " ");
    while(token != NULL) {
        sscanf(token, "%d", &num);
        AddValue(num);
        token = strtok(NULL, " ");
    }
}

void BenchmarkParameterIntList::Reset()
{
    mCurrent = 0;
}

bool BenchmarkParameterIntList::GoToNextValue()
{
    mCurrent++;
    if(mCurrent >= mList.GetSize()) {
        mCurrent = 0;
        return true;
    }
    return false;
}

BenchmarkParameter *BenchmarkParameterIntList::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterIntList(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterIntList *p = dynamic_cast<BenchmarkParameterIntList *>(param);
    for(int i = 0; i < mList.GetSize(); i++)
        p->AddValue(mList[i]);
    p->mCurrent = mCurrent;
    return param;
}

bool BenchmarkParameterIntList::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterIntList *p = dynamic_cast<BenchmarkParameterIntList *>(compare);
    if(GetAsInt() == p->GetAsInt())
        return true;
    return false;
}

void BenchmarkParameterIntList::AddValue(int value)
{
    mList.Add(value);
}

void BenchmarkParameterIntList::SetValue(int index, int value)
{
    mList.SetAt(index, value);
}

char *BenchmarkParameterIntList::GetAsString()
{
    sprintf(gStringValue, "%d", mList[mCurrent]);
    return gStringValue;
}

float BenchmarkParameterIntList::GetAsFloat()
{
    return (float)mList[mCurrent];
}

int BenchmarkParameterIntList::GetAsInt()
{
    return mList[mCurrent];
}

bool BenchmarkParameterIntList::GetAsBool()
{
    return mList[mCurrent] != 0 ? true : false;
}

bool operator==(const BenchmarkParameterIntList& lhs, const BenchmarkParameterIntList& rhs)
{
    BenchmarkParameterIntList *plhs = const_cast<BenchmarkParameterIntList *>(&lhs);
    BenchmarkParameterIntList *prhs = const_cast<BenchmarkParameterIntList *>(&rhs);
    if(plhs->GetAsInt() != prhs->GetAsInt())
        return false;
    return true;
}

//-------------------------------------------------------------------------------

BenchmarkParameterIntRange::BenchmarkParameterIntRange(char *name)
:BenchmarkParameter(name), mLo(0), mHi(0), mGrowBy(0), mCurrent(0)
{
}

BenchmarkParameterIntRange::BenchmarkParameterIntRange(char *name, int lo, int hi, int growby)
:BenchmarkParameter(name), mLo(lo), mHi(hi), mGrowBy(growby), mCurrent(lo)
{
    rAssert(mGrowBy > 0);
}

void BenchmarkParameterIntRange::Reset()
{
    mCurrent = mLo;
}

bool BenchmarkParameterIntRange::GoToNextValue()
{
    mCurrent += mGrowBy;
    if(mCurrent > mHi) {
        mCurrent = mLo;
        return true;
    }
    return false;
}

BenchmarkParameter *BenchmarkParameterIntRange::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterIntRange(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterIntRange *p = dynamic_cast<BenchmarkParameterIntRange *>(param);
    p->mLo = mLo;
    p->mHi = mHi;
    p->mGrowBy = mGrowBy;
    p->mCurrent = mCurrent;
    return param;
}

bool BenchmarkParameterIntRange::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterIntRange *p = dynamic_cast<BenchmarkParameterIntRange *>(compare);
    if(GetAsInt() == p->GetAsInt())
        return true;
    return false;
}

char *BenchmarkParameterIntRange::GetAsString()
{
    sprintf(gStringValue, "%d", mCurrent);
    return gStringValue;
}

float BenchmarkParameterIntRange::GetAsFloat()
{
    return (float)mCurrent;
}

int BenchmarkParameterIntRange::GetAsInt()
{
    return mCurrent;
}

bool BenchmarkParameterIntRange::GetAsBool()
{
    return mCurrent != 0 ? true : false;
}

//-------------------------------------------------------------------------------

BenchmarkParameterBool::BenchmarkParameterBool(char *name)
:BenchmarkParameter(name)
{
    mValue = false;
}

void BenchmarkParameterBool::Reset()
{
    mValue = false;
}

bool BenchmarkParameterBool::GoToNextValue()
{
    mValue = !mValue;
    if(mValue)
        return false;
    return true;
}

BenchmarkParameter *BenchmarkParameterBool::Clone()
{
    BenchmarkParameter *param = new BenchmarkParameterBool(GetName());
    if(!param)
        return NULL;
    BenchmarkParameterBool *p = dynamic_cast<BenchmarkParameterBool *>(param);
    p->mValue = mValue;
    return param;
}

bool BenchmarkParameterBool::Compare(BenchmarkParameter *compare)
{
    BenchmarkParameterBool *p = dynamic_cast<BenchmarkParameterBool *>(compare);
    if(GetAsBool() == p->GetAsBool())
        return true;
    return false;
}

static char *gStringBoolTrue = "true";
static char *gStringBoolFalse = "false";
char *BenchmarkParameterBool::GetAsString()
{
    return mValue ? gStringBoolTrue : gStringBoolFalse;
}

float BenchmarkParameterBool::GetAsFloat()
{
    return mValue ? 1.0f : 0.0f;
}

int BenchmarkParameterBool::GetAsInt()
{
    return mValue ? -1 : 0;
}

bool BenchmarkParameterBool::GetAsBool()
{
    return mValue;
}
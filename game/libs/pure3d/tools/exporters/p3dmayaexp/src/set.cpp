//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MGlobal.h>
#include "../inc/set.hpp"

Set::Set():emptySet(true),
              zeroElement(false)
{        
    set.push_back(0);
}

Set::Set(const int* element, int numElements)
{        
    set.push_back(0);
    emptySet = true;
    zeroElement = false;
    Init(element, numElements);    
}

Set::Set(const std::vector<unsigned int>& element)
{        
    set.push_back(0);
    emptySet = true;
    zeroElement = false;
    Init(element);    
}

Set::Set(const Set& otherSet)
{
    emptySet =  otherSet.IsEmptySet();
    zeroElement = otherSet.GetZerothElement();
    set = otherSet.GetSet();
}

void Set::Clear()
{
    emptySet = false;
    zeroElement = 0;
    set.clear();
}


//-------------------------------------------------------------------------------------
// Add
// Adds an element to the set. 
//
//-------------------------------------------------------------------------------------
void Set::Add(const int element)
{
    if(element == 0)
    {
        zeroElement = true;
        return;
    }

    int nthSet = element / 32;
    int numSets = set.size();
    int maxSetIdx = numSets - 1;
    if (nthSet >= numSets )
    {
        //determine no of sets to add to the set vector
        int numSetsToAdd = 0;
        if(element % 32 != 0)
            numSetsToAdd = nthSet - maxSetIdx;
        else numSetsToAdd = nthSet - maxSetIdx - 1;

        for(int j = 0; j < numSetsToAdd; j++)
            set.push_back(0);
    }

    if(element % 32 != 0)
        //in the nth set the xth bit (e.g if element == 2 then  shift 1 by (2-1) and or with nth Set  
        set[nthSet] |= 1 << ( (element % 32) -1 );
    else
        set[nthSet-1] |= 1 << (32 - 1);

    emptySet = false;

}


void Set::Init(const std::vector<unsigned int> element)
{
    if(!element.size()) return;

    for(int i = 0; i < element.size(); i++)
    {
        if(element[i] == 0)
        {
            zeroElement = true;
            continue;
        }

        int nthSet = element[i] / 32;
        int numSets = set.size();
        if (nthSet > numSets - 1 )
        {
            //determine no of sets to add to the set vector
            int numSetsToAdd = 0;
            if(element[i] % 32 != 0)
                numSetsToAdd = nthSet + 1 - numSets;
            else numSetsToAdd = nthSet - numSets;

            for(int j = 0; j < numSetsToAdd; j++)
                set.push_back(0);
        }
        if(element[i] % 32 != 0)
            //in the nth set the xth bit (e.g if element[i ] == 2 then  shift 1 by (2-1) and or with nth Set  
            set[nthSet] |= 1 << ((element[i] % 32) -1 );
        else
            set[nthSet-1] |= 1 << (32 - 1);
    }
    
    EmptySetTest();

}

void Set::Init(const int* element, int numElements)
{
    if (numElements == 0) return;


    for(int i = 0; i < numElements; i++)
    {
        if(element[i] == 0)
        {
            zeroElement = true;
            continue;
        }

        int nthSet = element[i] / 32;
        int numSets = set.size();
        if (nthSet >= numSets )
        {
            //determine no of sets to add to the set vector
            int numSetsToAdd = 0;
            if(element[i] % 32 != 0)
                numSetsToAdd = nthSet + 1 - numSets;
            else numSetsToAdd = nthSet - numSets;

            for(int j = 0; j < numSetsToAdd; j++)
                set.push_back(0);
        }
        if(element[i] % 32 != 0)
            //in the nth set the xth bit (e.g if element[i ] == 2 then  shift 1 by (2-1) and or with nth Set  
            set[nthSet] |= 1 << ((element[i] % 32) -1 );
        else
            set[nthSet-1] |= 1 << (32 - 1);


    }
    
    EmptySetTest();
}


void Set::Union (const Set& otherset)
{
    const std::vector<unsigned int>& thatSet = otherset.GetSet();

    if(this->IsEmptySet() && otherset.IsEmptySet()) return;

    //get the size of the smaller set
    int setSize = 0;
    int thisSetSze = this->set.size(); int otherSetSze = thatSet.size();

    if ( thisSetSze < otherSetSze ) setSize = thisSetSze;
        else setSize = otherSetSze;

    //if this set and other set are same size
    for(int i = 0; i < setSize; i++)
        set[i] |= thatSet[i];        

    //if otherSet is larger simply copy its additional sets to this set
    if(otherSetSze > thisSetSze)
    {
        while (i < otherSetSze)
        {
            set.push_back(thatSet[i]); 
            i++;
        }
    }

    //handle the zero element
    if(this->zeroElement || otherset.zeroElement) this->zeroElement = true;
    else this->zeroElement = false;

    //check for condition where set is empty set
    EmptySetTest();

}

//-------------------------------------------------------------------------------------
// Intersect
// 
//
//-------------------------------------------------------------------------------------
void Set::Intersect (const Set& otherset)
{
    const std::vector<unsigned int>& thatSet = otherset.GetSet();

    //get the size of the smaller set
    int setSize = 0;
    int thisSetSze = this->set.size(); int otherSetSze = thatSet.size();

    if(thisSetSze == 0 && otherSetSze == 0) return;
    if ( thisSetSze < otherSetSze ) setSize = thisSetSze;
        else setSize = otherSetSze;

    //first assume sets are equal sized
    std::vector<unsigned int>::const_iterator otherIt;
    std::vector<unsigned int>::iterator thisIt;

    for(thisIt = set.begin(), otherIt = thatSet.begin();
        thisIt != set.end() && otherIt != thatSet.end(); 
        thisIt++, otherIt++)    

        *thisIt &= *otherIt;

    //if this set is larger clear remaining sets;
    if(thisSetSze > otherSetSze)
    {
        set.erase(thisIt, set.end());
    }
    //else no action needed
    
    //handle the zero element
    if(this->zeroElement && otherset.zeroElement) this->zeroElement = true;
    else this->zeroElement = false;

    //check if current set is emptySet
    EmptySetTest();
}

// A - B = (A XOR B) Intersect A
Set Set::operator-(const Set& otherset)
{
    //make a copy of this set
    const std::vector<unsigned int> thatSet =  otherset.GetSet();
    std::vector<unsigned int> thisSet = set;

    //get the size of the smaller set
    int setSize = 0;
    int thisSetSze = thisSet.size(); int otherSetSze = thatSet.size();
    
    if(thisSetSze == 0 && otherSetSze == 0) return *this;

    if ( thisSetSze < otherSetSze ) setSize = thisSetSze;
        else setSize = otherSetSze;

    std::vector<unsigned int>::const_iterator otherIt;
    std::vector<unsigned int>::iterator thisIt;
    for(otherIt = thatSet.begin(), thisIt = thisSet.begin();
         otherIt != thatSet.end() && thisIt != thisSet.end(); thisIt++, otherIt ++)
    {
        *thisIt ^= *otherIt;
    }
    
    //if otherSet is larger simply copy its additional sets to this set
    while(otherIt != thatSet.end())
    {
        thisSet.push_back(*otherIt); 
    }

    
    Set resultSet;
    resultSet.SetElements(thisSet);

    //handle the zero element
    if(resultSet.zeroElement ^ otherset.zeroElement)     resultSet.zeroElement = true;
    else     resultSet.zeroElement = false;

    resultSet.Intersect(*this);


    //check for condition where set is empty set
    this->EmptySetTest();

    return resultSet;
}

void Set::Complement()
{
    //determine if we need to zero out bits that represent numbers greater than maxElement 
    int nthSet;
    int maxElement = GetMaxElement();
    if(maxElement % 32 == 0)
        nthSet = (maxElement/32) - 1;
    else nthSet = maxElement/32;

    //iterate through the set and find its complement
    std::vector<unsigned int>::iterator it;
    for(it = set.begin(); it != set.end(); it++)
    {
            *it = ~(*it);
    }
    
    int numSets = set.size();

    //remove empty subsets
    it = set.end() - 1;
    for(; *it != 0; it--)
    {
        if(*it == 0)
            set.erase(it);
    }
    
    //create the bitmask to adjust the last set non empty set    
    if(maxElement % 32 != 0)
    {
        unsigned int bitMask = 0;
        for(int i = 0; i < maxElement % 32; i++)
        {
            bitMask |= 1 << i;
        }
        set[nthSet] &= bitMask;
    }

    //handle the zero element
    this->zeroElement = !(this->zeroElement);
    
    //check for condition where set is empty set
    EmptySetTest();

    return;
}

void Set::Complement(const int maxElement)
{
    //determine if we need to zero out bits that represent numbers greater than maxElement 
    int nthSet;
    if(maxElement % 32 == 0)
        nthSet = (maxElement/32) - 1;
    else nthSet = maxElement/32;

    //expand the set if needed
    int numSet = set.size();
    if(numSet-1 < nthSet)
    {
        for(int i = 0; i < nthSet-(numSet-1); i++)
        set.push_back(0);
    }

    //iterate through the set and find its complement
    std::vector<unsigned int>::iterator it;
    for(it = set.begin(); it != set.end(); it++)
    {
            *it = ~(*it);
    }

    //remove empty subsets TODO
    it = set.end();
    it--;
    for(; *it == 0; it--)
    {
        if(*it == 0)
            set.erase(it);
        else break;
    }
    
    //create the bitmask to adjust the last set non empty set    
    if(maxElement % 32 != 0)
    {
        unsigned int bitMask = 0;
        for(int i = 0; i < maxElement % 32; i++)
        {
            bitMask |= 1 << i;
        }
        set[nthSet] &= bitMask;
    }

    //handle the zero element
    this->zeroElement = !(this->zeroElement);
    
    //check for condition where set is empty set
    EmptySetTest();

    return;
}

const std::vector<unsigned int>& Set::GetSet() const
{
    return set;
}



void Set::GetElements(std::vector<unsigned int>* elements) const
{
    int numSets =  set.size();

    //check for zero element
    if(zeroElement)
        (*elements).push_back(0);

    //iterate thru the set, convert 1 bits to integer (e.g. 0000...0010 = 2)
    int setNum = 0;
    std::vector<unsigned int>::const_iterator it;
    for(it = set.begin(); it != set.end(); it++)
    {
        for(int j = 1; j <= 32; j++)
        {
            if( (*it & (1 << (j - 1))) != 0 ) //test if i is in the set
                (*elements).push_back(setNum * 32 + j);
        }
        setNum++;
    }    
}


void Set::Add(Set& destinationSet)
{
    int numSets =  set.size();
    
    if(zeroElement)
        destinationSet.SetZerothElement(this->zeroElement);
    
    std::vector<unsigned int>::iterator i;
    int setNum;
    for(i = set.begin(), setNum = 0; i != set.end(); i++,setNum++)
    {
        for(int j = 1; j <= 32; j++)
        {
            if( (*i & (1 << (j - 1))) != 0 ) //test if i is in the set
                destinationSet.Add(setNum * 32 + j);
        }
    }
}


int Set::GetMaxElement() const
{
    std::vector<unsigned int> elementList;
    GetElements(&elementList);
    if(elementList.size() != 0)
        return elementList[elementList.size()-1];
    else return -1;
}

int Set::GetSetSize() const
{
    std::vector<unsigned int> list;
    this->GetElements(&list);
    return list.size();
}


void Set::EmptySetTest()
{
    //test for emptySet condition
    bool found = false;
    std::vector<unsigned int>::iterator it;
    for(it = set.begin(); it != set.end(); it++)
    {
        if(*it != 0)
        {
            found = true;
            break;
        }
    }
    if(found || zeroElement)
        emptySet = false;
    else emptySet = true;

}


Set& Set::operator=(const Set& otherset)
{
    const std::vector<unsigned int>& thatSet = otherset.GetSet();
    
    //clear this set
    set.clear();

    //iterate thru otherset and copy its values
    std::vector<unsigned int>::const_iterator otherIt;

    for(otherIt = thatSet.begin(); otherIt != thatSet.end(); otherIt++)
    {
        set.push_back(*otherIt);
    }

    this->emptySet = otherset.emptySet;
    this->zeroElement = otherset.zeroElement;

    return *this;
}

void Set::SetElements(const std::vector<unsigned int>& bitStr)
{
    Clear();
    set = bitStr;
    EmptySetTest();
}
////
std::string Set::Print() const
{
    std::vector<unsigned int> list;
    GetElements(&list);

    std::string result;
    std::vector<unsigned int>::iterator it;
    for(it = list.begin(); it != list.end(); it++)
    {
        char buf[16];
        sprintf(buf,"%d",*it);
        result += buf;
        result += ", ";
    }
    result += "\n";
    return result;
}



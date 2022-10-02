/*===========================================================================
    Set.hpp
    Created: Nov, 2001
    Author: Pamela Chow

    Copyright (c) 2001 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifndef _SET_HPP
#define _SET_HPP

#include <vector>
#include <string>

class Set
{
public:
    Set();
    Set(const int* element, int numElements);
    Set(const std::vector<unsigned int>& elements);
    Set(const Set& set);
    ~Set(){}

    //constructors
    virtual void Add(const int element);
    void Add(Set& destinationSet);
    void Init(const int* element, int numElements);
    void Init(const std::vector<unsigned int> element);
    Set& operator= (const Set& otherSet);
    
    //set operations
    void Union(const Set& otherset);
    void Complement();
    void Complement(const int maxElement);
    void Intersect(const Set& otherset);
    Set operator- (const Set& otherSet);
    
    //Getters and Setters
    void Clear();
    int GetMaxElement() const;
    void SetZerothElement(const bool z) {zeroElement = z;}
    bool GetZerothElement() const {return zeroElement;}
    std::string Set::Print() const;
    const std::vector<unsigned int>& GetSet() const;
    bool IsEmptySet() const {return emptySet;} ;
    void GetElements(std::vector<unsigned int>* elements) const;
    int GetSetSize() const;
    void SetElements(const std::vector<unsigned int>& bitStr);

private:
    void EmptySetTest();
    std::vector<unsigned int> set;
    bool emptySet;
    bool zeroElement;
};

#endif _SET_HPP

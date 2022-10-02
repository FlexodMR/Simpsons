/*===========================================================================
    File: IntRangeList.hpp

    Interface for a class that stores integer ranges


    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/


#ifndef _INTRANGELIST_HPP
#define _INTRANGELIST_HPP


#include "tlTable.hpp"


class IntRangeList
{
public:

    struct IntRange;
    IntRangeList();
    IntRangeList(const char *list);

    void AddRange(const char *list);
    void AddRange(int min_id, int max_id);

    bool Match(int id);
    tlTable<IntRange>& GetTable() {return rangeList;}

    struct IntRange
    {
    public:

        int minID, maxID;

        IntRange();
        IntRange(int min_id, int max_id);

        bool operator == (const IntRange &cid) const;
    };
private:

    tlTable<IntRange> rangeList;
};


#endif // _INTRANGELIST_HPP


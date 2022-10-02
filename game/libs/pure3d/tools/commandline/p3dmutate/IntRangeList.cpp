/*===========================================================================
    File: IntRangeList.cpp

    Implementation for a class that stores integer ranges


    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/


#include <stdlib.h>

#include "IntRangeList.hpp"


/*
 * class IntRangeList::IntRange
 * ============================
 * - utility class for IntRangeList
 */

IntRangeList::IntRange::IntRange()
{
}


IntRangeList::IntRange::IntRange(int min_id,
                                            int max_id):
    minID(min_id), maxID(max_id)
{
}


bool IntRangeList::IntRange::operator == (const IntRangeList::IntRange &cid) const
{
    return ((minID == cid.minID) &&
              (maxID == cid.maxID));
}


/*
 * class IntRangeList
 * ==================
 */

IntRangeList::IntRangeList()
{
}


IntRangeList::IntRangeList(const char *list)
{
    AddRange(list);
}


// Parses the string int list provided
// Expects the format to be similar to "10-20,0x50,08,0x70-0x99"
// Thanks to strtoul(), it will automatically interpret the numbers
// as decimal, octal, and hexadecimal appropriately.
//
void IntRangeList::AddRange(const char *list)
{
    const char *begin_ptr = list;
    const char *end_ptr;
    char *term_ptr;
    int id[2];
    int id_idx = 0;

    for (end_ptr = list; *end_ptr != 0; ++end_ptr)
    {
        // if we hit a comma, we either have a range list or
        // a single entry
        if (*end_ptr == ',')
        {
            if (begin_ptr != end_ptr)
            {
                id[id_idx] = strtoul(begin_ptr, &term_ptr, 0);

                if (id[id_idx] >= id[0])
                {
                    IntRange ir_tmp(id[0], id[id_idx]);
                    rangeList.Append(ir_tmp);
                }

                id_idx = 0;
            }

            begin_ptr = end_ptr + 1;
        }
        // we've hit a range list
        else if (*end_ptr == '-')
        {
            if (begin_ptr != end_ptr)
            {
                id[id_idx] = strtoul(begin_ptr, &term_ptr, 0);

                if (id_idx < 1)
                {
                    ++id_idx;
                }
            }

            begin_ptr = end_ptr + 1;
        }
    }

    if (begin_ptr != end_ptr)
    {
        id[id_idx] = strtoul(begin_ptr, &term_ptr, 0);

        if (id[id_idx] >= id[0])
        {
            IntRange ir_tmp(id[0], id[id_idx]);
            rangeList.Append(ir_tmp);
        }
    }
}


void IntRangeList::AddRange(int min_id, int max_id)
{
    if (max_id >= min_id)
    {
        IntRange ir_tmp(min_id, max_id);
        rangeList.Append(ir_tmp);
    }
}


bool IntRangeList::Match(int id)
{
    for (int i = 0; i < rangeList.Count(); ++i)
    {
        if ((id >= rangeList[i].minID) &&
             (id <= rangeList[i].maxID))
        {
            return true;
        }
    }

    return false;
}


// End of file.


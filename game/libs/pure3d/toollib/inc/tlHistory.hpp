/*===========================================================================
    File:: tlHistory.hpp
   
    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLHISTORY_HPP
#define _TLHISTORY_HPP

#include <assert.h>
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"

class tlDataChunk;

//*****************************************************************************
// tlHistory
//*****************************************************************************
class tlHistory : public tlEntity
{
public:
    tlHistory();
    tlHistory(tlDataChunk* ch);
    ~tlHistory();

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16();

    int NumLines() const                            { return numLines; }
    const char* GetLine(int n) const                { return history[n]; }
    void SetLine(int n, const char* line);
    void AddLine(const char* line);

private:
    static int historyNumber;
    static const int maxLines;

    int     numLines;
    char**  history;
};

//*****************************************************************************
// tlHistoryLoader
//*****************************************************************************
class tlHistoryLoader : public tlEntityLoader
{
public:
    tlHistoryLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif



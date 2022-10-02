//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlHistory.hpp"
#include "tlHistoryChunk16.hpp"
#include "tlDataChunk.hpp"
#include "tlString.hpp"

#include <stdio.h>
#include <memory.h>

//*****************************************************************************
// tlHistory
//*****************************************************************************
const int tlHistory::maxLines = 256;
int tlHistory::historyNumber = 0;

tlHistory::tlHistory() :
    tlEntity()
{
    historyNumber++;
    char temp[256];
    sprintf(temp,"history_%d",historyNumber);
    SetName(temp);

    numLines = 0;
    history = new char*[maxLines];
    memset(history,0,sizeof(char*)*maxLines);
}

tlHistory::tlHistory(tlDataChunk* ch) :
    tlEntity()
{
    historyNumber++;
    char temp[256];
    sprintf(temp,"history_%d",historyNumber);
    SetName(temp);

    numLines = 0;
    history = new char*[maxLines];
    memset(history,0,sizeof(char*)*maxLines);

    LoadFromChunk16(ch);
}

tlHistory::~tlHistory()
{
    for (int i = 0; i < numLines; i++)
    {
        strdelete(history[i]);
    }
    delete [] history;
}

void
tlHistory::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_HISTORY);
    tlHistoryChunk16* chunk = dynamic_cast<tlHistoryChunk16*>(ch);
    assert(chunk != 0);

    numLines = chunk->GetNumLines();

    char** temp = chunk->GetHistory();

    for (int i = 0; i < numLines; i++)
    {
        SetLine(i,temp[i]); 
    }
}

tlDataChunk*
tlHistory::Chunk16()
{
    tlHistoryChunk16* chunk = new tlHistoryChunk16;
    chunk->SetNumLines(numLines);
    chunk->SetHistory(history,numLines);

    return chunk;
}

void
tlHistory::SetLine(int n, const char* line)
{
    assert((n < numLines)&&(n < maxLines));
    if (n < numLines)
    {
        strdelete(history[n]);
        history[n] = strnew(line);
    }
}

void
tlHistory::AddLine(const char* line)
{
    assert(numLines < maxLines);
    if (numLines < maxLines)
    {
        history[numLines] = strnew(line);
        numLines++;
    }
}

//*****************************************************************************
// tlHistoryLoader
//*****************************************************************************
tlHistoryLoader::tlHistoryLoader() : 
    tlEntityLoader(P3D_HISTORY)
{
}

tlEntity*
tlHistoryLoader::Load(tlDataChunk* chunk)
{
    return new tlHistory(chunk);
}



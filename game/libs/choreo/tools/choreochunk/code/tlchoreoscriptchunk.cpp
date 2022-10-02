/*
 * choreochunk/tlchoreoscriptchunk.cpp
 */


#include "tlchoreoscriptchunk.hpp"

#include <choreo/constants.hpp>

#include "tlChunk16.hpp"

#include <string.h>


tlChoreoScriptChunk::tlChoreoScriptChunk()
{
    Init();
}

tlChoreoScriptChunk::tlChoreoScriptChunk(tlReadChunk16* ch)
{
    assert(ch->GetID() == choreo::SCRIPT_CHUNK_ID);
    ident = choreo::SCRIPT_CHUNK_ID;

    tlFile* f = ch->GetFile();
    m_Script = f->GetLongString();
}

tlChoreoScriptChunk::~tlChoreoScriptChunk()
{
    delete[] m_Script;
}

void tlChoreoScriptChunk::Init()
{
    ident = choreo::SCRIPT_CHUNK_ID;
    m_Script = 0;
}

tlDataChunk* tlChoreoScriptChunk::Create(tlReadChunk16* ch)
{
    return new tlChoreoScriptChunk(ch);
}

void tlChoreoScriptChunk::Write(tlFile* f)
{
    tlWriteChunk16 ch(f, ident);
    f->PutLongString(m_Script);
    ch.ContentFinish();
}

void tlChoreoScriptChunk::SetScript(const char* scriptStr)
{
    delete[] m_Script;

    if (scriptStr != 0)
    {
        int len = strlen(scriptStr);
        m_Script = new char [len + 1];
        strcpy(m_Script, scriptStr);
    }
    else
    {
        m_Script = 0;
    }
}


// End of file.

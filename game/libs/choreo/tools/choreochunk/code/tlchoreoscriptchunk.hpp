/*
 * choreochunk/tlchoreoscriptchunk.hpp
 */


#ifndef CHOREOCHUNK_TLCHOREOSCRIPTCHUNK_HPP
#define CHOREOCHUNK_TLCHOREOSCRIPTCHUNK_HPP


#include "tlDataChunk.hpp"


class tlChoreoScriptChunk: public tlDataChunk
{
public:

    tlChoreoScriptChunk();
    tlChoreoScriptChunk(tlReadChunk16* ch);
    ~tlChoreoScriptChunk();

    void Init();

    static tlDataChunk* Create(tlReadChunk16* ch);
    void Write(tlFile* f);

    void SetScript(const char* scriptStr);
    const char* GetScript() const
        { return m_Script; }

private:

    char* m_Script;
};


#endif // CHOREOCHUNK_TLCHOREOSCRIPTCHUNK_HPP

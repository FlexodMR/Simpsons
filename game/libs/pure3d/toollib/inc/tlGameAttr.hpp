//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLGAMEATTR_HPP
#define _TLGAMEATTR_HPP

#include "tlEntity.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

#ifdef WIN32
#pragma warning(disable:4786 4530)
#endif

#include <map>
#include <string>

class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlGameAttr
//*****************************************************************************
class tlGameAttr : public tlEntity
{
public:
    tlGameAttr();
    ~tlGameAttr();

    explicit tlGameAttr(tlDataChunk* ch);
    explicit tlGameAttr(const tlGameAttr&);

    void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    // old interface
    void LoadFromChunk16(tlDataChunk* ch) { LoadFromChunk(ch); }
    virtual tlDataChunk* Chunk16() { return Chunk(); }

    // Setting parameters

    void SetIntParam(std::string name, unsigned int value);
    unsigned int GetIntParam(std::string code);
    void DeleteIntParam(std::string code);

    void SetFloatParam(std::string code, float value);
    float GetFloatParam(std::string code);
    void DeleteFloatParam(std::string code);

    void SetColourParam(std::string code, const tlColour& value);
    const tlColour& GetColourParam(std::string code);
    void DeleteColourParam(std::string code);

    void SetVectorParam(std::string code, const tlPoint& value);
    const tlPoint& GetVectorParam(std::string code);
    void DeleteVectorParam(std::string code);

    void SetMatrixParam(std::string code, const tlMatrix& value);
    const tlMatrix& GetMatrixParam(std::string code);
    void DeleteMatrixParam(std::string code);  

protected:
    std::map<std::string, unsigned long> IntParams;
    std::map<std::string, float> FloatParams;
    std::map<std::string, tlColour> ColourParams;
    std::map<std::string, tlPoint> VectorParams;
    std::map<std::string, tlMatrix> MatrixParams;
    
    tlDataChunk* MakeIntParamChunk(std::string code, const int value);
    tlDataChunk* MakeFloatParamChunk(std::string code, const float value);
    tlDataChunk* MakeColourParamChunk(std::string code, const tlColour& value);
    tlDataChunk* MakeVectorParamChunk(std::string code, const tlPoint& value);
    tlDataChunk* MakeMatrixParamChunk(std::string code, const tlMatrix& value);    
};

//*****************************************************************************
// tlGameAttrLoader
//*****************************************************************************
class tlGameAttrLoader : public tlEntityLoader
{
public:
    tlGameAttrLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***


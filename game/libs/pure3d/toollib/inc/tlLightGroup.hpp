/*===========================================================================
    File:: tlLightGroup.hpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLLIGHTGROUP_HPP
#define _TLLIGHTGROUP_HPP

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"

class tlLight;
class tlLightGroupChunk16;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlLightGroup
//*****************************************************************************
class tlLightGroup : public tlEntity
{
public:
    tlLightGroup(tlDataChunk *ch = NULL);
    ~tlLightGroup();

    void LoadFromChunk16(tlDataChunk* ch);

    tlDataChunk *Chunk16();

    bool AddLight(const char *lightname);
    bool RemoveLight(const char *lightname);

    inline int   NumberOfLights(void) { return mLights.Count(); }
    inline char *LightName(int i)     { return mLights[i]; }

private:
    tlLightGroup(const tlLightGroup&);
    tlLightGroup& operator=(const tlLightGroup&);

    tlTable<char *> mLights;


};

//*****************************************************************************
// tlLightGroupLoader
//*****************************************************************************
class tlLightGroupLoader : public tlEntityLoader
{
public:
    tlLightGroupLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


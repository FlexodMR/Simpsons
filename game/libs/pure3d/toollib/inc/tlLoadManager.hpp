//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TL_LOAD_MANAGER_HPP
#define _TL_LOAD_MANAGER_HPP

#include "tlTable.hpp"
#include "tlEntity.hpp"

class tlFile;
class tlDataChunk;
class tlInventory;

#ifndef WORLD_BUILDER
enum tlLoadStatus { LOAD_OK, LOAD_ERROR };
#endif

//*****************************************************************************
// tlEntityChunk
//      used to hold data chunks in the inventory that toollib doesn't know about
//*****************************************************************************
class tlEntityChunk : public tlEntity
{
public :
    tlEntityChunk();
    tlEntityChunk(tlDataChunk* ch);
    ~tlEntityChunk();

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();
  
    void LoadFromChunk16(tlDataChunk* ch)                   { assert(0); }
    tlDataChunk* Chunk16()                                  { assert(0); return NULL; }

protected:
    tlDataChunk* chunk;

    static int currentEntityCounter;  //counter used to create unique entity names so this can be stored in tlInventory
};

//*****************************************************************************
// tlEntityLoader
//*****************************************************************************
class tlEntityLoader
{
public:
    tlEntityLoader(unsigned chunkId);

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk) = 0;

protected:
    unsigned chunkID;
};

//*****************************************************************************
// tlLoadManager
//*****************************************************************************
class tlLoadManager
{
public:
    tlLoadManager();
    ~tlLoadManager();

    //if inventory is passed in then file is loaded into that inventory else
    //file is loaded into the inventory that is set using SetInventory
    tlLoadStatus Load(tlFile* file, tlInventory* inventory);
    tlLoadStatus Load(tlDataChunk* chunk, tlInventory* inventory);
   
    void InstallDefaultLoaders();
    tlEntityLoader* AddLoader(tlEntityLoader* loader);
    tlEntityLoader* GetLoader(unsigned chunkID);
    void RemoveLoader(unsigned chunkID);
    void RemoveAllLoaders(void);

protected:
    tlTable<tlEntityLoader*> loaders;
};

#endif
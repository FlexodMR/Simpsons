/*===========================================================================
    File:: tlExportInfo.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLEXPORTINFO_HPP
#define _TLEXPORTINFO_HPP

#include "tlTable.hpp"
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"

class tlExportInfoChunk16;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlExportInfo
//*****************************************************************************
class tlExportInfo : public tlEntity
{
public:
    tlExportInfo();
    ~tlExportInfo();

    tlExportInfo(tlDataChunk* ch);

    void LoadFromChunk16(tlDataChunk* ch);

    tlDataChunk* Chunk16(void);

    void AddInfo(const char *name, const char *value);
    void AddInfo(const char *name, const int   value);
    void AddInfo(const char *name, const bool  value);

 private:

    struct INFO_STRING
    {
        char *name;
        char *value;
    }; 

    struct INFO_INT
    {
        char *name;
        int   value;
    }; 

    tlTable<INFO_STRING *> mNamedStrings;
    tlTable<INFO_INT *>    mNamedInts;

};

//*****************************************************************************
// tlExportInfoLoader
//*****************************************************************************
class tlExportInfoLoader : public tlEntityLoader
{
public:
    tlExportInfoLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


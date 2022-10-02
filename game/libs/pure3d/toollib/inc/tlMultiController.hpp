/*===========================================================================
    File:: tlMultiController.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLMULTICONTROLLER_HPP
#define _TLMULTICONTROLLER_HPP

#include "tlMultiControllerChunk16.hpp"    // for tlFontGlyphData
#include "tlDataChunk.hpp"
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"

class tlDataChunk;
class tlInventory;
class tlFrameController;

//*****************************************************************************
// tlMultiController
//*****************************************************************************
class tlMultiController : public tlEntity
{
    unsigned long version;
    float         length;
    float         framerate;
    unsigned long numtracks;

    tlMultiControllerTrackData* trackdata;
    
    tlFrameController**         trackptrs;

public:

    tlMultiController();
    tlMultiController(int nTracks);
    ~tlMultiController();

    tlMultiController(tlDataChunk* ch);

    void LoadFromChunk16(tlDataChunk* ch);

    tlDataChunk* Chunk16();

    // accessors
    inline unsigned long    GetVersion() { return version; }
    inline float            GetLength() { return length; }
    inline float            GetFramerate() { return framerate; }
    inline unsigned long    GetNumTracks() { return numtracks; }

    tlMultiControllerTrackData* GetTrackData(const int index);

    void             SetVersion(unsigned long);
    void             SetLength(float);
    void             SetFramerate(float);
    void             SetNumTracks(unsigned long);
    void             SetTrackData(const int index, tlMultiControllerTrackData&);

    int              FindTrackData(const char* name);
    void             RemoveTrackData(const int index);
    void             AddTrackData(tlMultiControllerTrackData& data);

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);
};

//*****************************************************************************
// tlMultiControllerLoader
//*****************************************************************************
class tlMultiControllerLoader : public tlEntityLoader
{
public:
    tlMultiControllerLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


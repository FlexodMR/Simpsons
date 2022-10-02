/*===========================================================================
    File:: tlMultiController.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlMultiController.hpp"
#include "tlFrameController.hpp"
#include "tlMultiControllerChunk16.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"

#include <string.h>

//*****************************************************************************
// tlMultiController
//*****************************************************************************
tlMultiController::tlMultiController() :
        version(0),
        length(0),
        framerate(30.0f),
        numtracks(0),
        trackdata(NULL),
        trackptrs(NULL)
{
}

tlMultiController::tlMultiController(int nTracks) :
        version(0),
        length(0),
        framerate(30.0f),
        numtracks(0),
        trackdata(NULL),
        trackptrs(NULL)
{
    SetNumTracks(nTracks);
}

tlMultiController::~tlMultiController()
{
}

tlMultiController::tlMultiController(tlDataChunk* ch):
        version(0),
        length(0),
        framerate(30.0f),
        numtracks(0),
        trackdata(NULL),
        trackptrs(NULL)
{
    LoadFromChunk16 ( ch );
}

void
tlMultiController::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_MULTI_CONTROLLER);
    tlMultiControllerChunk16* fch = dynamic_cast<tlMultiControllerChunk16*>(ch);
    assert(fch);

    SetName( fch->Name() );
    SetVersion( fch->Version() );
    SetLength( fch->Length() );
    SetFramerate( fch->Framerate() );
    SetNumTracks( fch->NumTracks() );

    unsigned track_index = 0;

    for(int index = 0; index < fch->SubChunkCount(); index++ )
    {
        tlDataChunk* sub = fch->GetSubChunk(index);
        switch(sub->ID())
        {
            case P3D_MULTI_CONTROLLER_TRACKS:
            {
                tlMultiControllerTracksChunk16* dch = dynamic_cast<tlMultiControllerTracksChunk16*>(sub);
                assert(dch);
                tlMultiControllerTrackData* data = dch->GetTracks();

                for( unsigned chr = 0; chr < dch->GetNumTracks(); chr++)
                {
                    assert(track_index < numtracks);
                    SetTrackData(track_index, data[chr]);
                    ++track_index;
                }
                break;
            }

            case P3D_MULTI_CONTROLLER_TRACK:
            {
                tlMultiControllerTrackChunk16* dch = dynamic_cast<tlMultiControllerTrackChunk16*>(sub);
                assert(dch);

                assert(track_index < numtracks);
                trackdata[track_index].name = strnew(dch->GetName());
                trackdata[track_index].starttime = dch->GetStartTime();
                trackdata[track_index].endtime = dch->GetEndTime();
                trackdata[track_index].scale = dch->GetScale();

                ++track_index;
                break;
            }

            default:
                // Just ignore this chunk.
                // Really we should preserve this data, but there currently isn't a nice way to do that.
                break;
        }
    }

    assert(track_index == numtracks);
}


// TODO: Re-activate the following code when we go live with v14
//       In the meantime, keep the old Chunk16() method so that
//       art exported from the live branch doesn't crash the
//       v13.5 viewer

/*tlDataChunk*
tlMultiController::Chunk16()
{
    tlMultiControllerChunk16* result;

    result = new tlMultiControllerChunk16;
    if( GetName() ) {
        result->SetName( GetName() );
    } else {
        result->SetName( "" );
    }

    result->SetVersion(version);
    result->SetLength(length);
    result->SetFramerate(framerate);
    result->SetNumTracks(numtracks);

    for (unsigned i = 0; i < numtracks; ++i)
    {
        tlMultiControllerTrackChunk16* fch = new tlMultiControllerTrackChunk16;

        fch->SetName(trackdata[i].name);
        fch->SetStartTime(trackdata[i].starttime);
        fch->SetEndTime(trackdata[i].endtime);
        fch->SetScale(trackdata[i].scale);

        result->AppendSubChunk(fch);
    }

    return result;
}*/


// TODO: Get rid of this version of Chunk16() when we go to v14

tlDataChunk*
tlMultiController::Chunk16()
{
    tlMultiControllerChunk16* result;

    if (numtracks==0)
    {
        return NULL;
    }

    result = new tlMultiControllerChunk16;
    if( GetName() ) {
        result->SetName( GetName() );
    } else {
        result->SetName( "" );
    }

    result->SetVersion(version);
    result->SetLength(length);
    result->SetFramerate(framerate);
    result->SetNumTracks(numtracks);

    tlMultiControllerTrackData *td = new tlMultiControllerTrackData[numtracks];
    unsigned a;
    for (a = 0; a < numtracks; a++)
    {
        td[a] = trackdata[a];
        td[a].name = strnew(trackdata[a].name);
    }

    tlMultiControllerTracksChunk16* fch = new tlMultiControllerTracksChunk16;
    fch->SetNumTracks(numtracks);
    fch->SetTracks(td, numtracks);
    result->AppendSubChunk(fch);
    return result;
}

void
tlMultiController::SetVersion(unsigned long n)
{
    version = n;
}

void
tlMultiController::SetLength(float n)
{
    length = n;
}

void
tlMultiController::SetFramerate(float n)
{
    framerate = n;
}

void
tlMultiController::SetNumTracks(unsigned long n)
{
    numtracks = n;
    delete [] trackdata;
    delete [] trackptrs;
    trackdata=new tlMultiControllerTrackData[numtracks];
    trackptrs=new tlFrameController*[numtracks];
    for(unsigned i = 0; i < numtracks; i++)
    {
        trackdata[i].starttime = 0;
        trackdata[i].endtime = 0;
        trackdata[i].scale = 0;
        trackdata[i].name = NULL;
        trackptrs[i] = NULL;
    }
}

void
tlMultiController::SetTrackData(const int index, tlMultiControllerTrackData& data)
{
    assert((unsigned)index < numtracks);
    trackdata[index] = data;
}

tlMultiControllerTrackData*
tlMultiController::GetTrackData(const int index)
{
    if ((index>=0)&&(index<(int)numtracks))
    {
        return &trackdata[index];
    }
    return NULL;
}

int
tlMultiController::FindTrackData(const char* trackname)
{
    for(unsigned i = 0; i < numtracks; i++)
    {
        if (strcmp(trackdata[i].name,trackname)==0)
        {
            return i;
        }
    }
    return -1;
}

void
tlMultiController::RemoveTrackData(const int index)
{
    if ((index>=0)&&(index<(int)numtracks))
    {
        if (numtracks<=1)
        {
            delete [] trackdata;
            delete [] trackptrs;
            trackdata = NULL;
            trackptrs = NULL;
            numtracks = 0;
        }
        else
        {
            tlMultiControllerTrackData* newTracks = new tlMultiControllerTrackData[numtracks-1];
            tlFrameController** newPtrs = new tlFrameController*[numtracks-1];
            int i;
            for (i = 0; i < index; i++)
            {
                newTracks[i] = trackdata[i];
                newPtrs[i] = trackptrs[i];
            }
            for (; i < (int)numtracks-1; i++)
            {
                newTracks[i] = trackdata[i+1];
                newPtrs[i] = trackptrs[i+1];
            }
            numtracks--;
            delete [] trackdata;
            delete [] trackptrs;
            trackdata = newTracks;
            trackptrs = newPtrs;
        }
    }
}

void
tlMultiController::AddTrackData(tlMultiControllerTrackData& data)
{
    tlMultiControllerTrackData* newTracks = new tlMultiControllerTrackData[numtracks+1];
    tlFrameController** newPtrs = new tlFrameController*[numtracks-1];
    int i;
    for (i = 0; i < (int)numtracks; i++)
    {
        newTracks[i] = trackdata[i];
        newPtrs[i] = trackptrs[i];
    }
    newTracks[i] = data;
    newPtrs[i] = NULL;

    numtracks++;
    delete [] trackdata;
    delete [] trackptrs;
    trackdata = newTracks;
    trackptrs = newPtrs;
}

void 
tlMultiController::ResolveReferences(tlInventory* inv)
{
    for (int i = 0; i < (int)numtracks; i++)
    {
        trackptrs[i] = toollib_find<tlFrameController>(inv, trackdata[i].name);
        if (trackptrs[i])
        {
            trackptrs[i]->ResolveReferences(inv);
        }
    }
}

void 
tlMultiController::MarkReferences(int m)
{
    for (int i = 0; i < (int)numtracks; i++)
    {
        if (trackptrs[i])
        {
            trackptrs[i]->Mark(m);
            trackptrs[i]->MarkReferences(m);
        }
    }
}

bool 
tlMultiController::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    for (int i = 0; i < (int)numtracks; i++)
    {
        if ((trackptrs[i])||(trackptrs[i]->FindReferenceMark(m)))
        {
            return true;
        }
    }
    return false;
}

//*****************************************************************************
// tlMultiControllerLoader
//*****************************************************************************
tlMultiControllerLoader::tlMultiControllerLoader() : 
    tlEntityLoader(P3D_MULTI_CONTROLLER)
{
}

tlEntity*
tlMultiControllerLoader::Load(tlDataChunk* chunk)
{
    return new tlMultiController(chunk);
}

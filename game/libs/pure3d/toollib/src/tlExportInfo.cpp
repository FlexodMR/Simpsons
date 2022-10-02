/*===========================================================================
    File:: tlExportInfo.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlExportInfo.hpp"
#include "tlExportInfoChunk16.hpp"
#include "tlDataChunk.hpp"

#include "tlString.hpp"



//*******************************************
//
// Class tlExportInfo
// Default Constructor
//
//
tlExportInfo::tlExportInfo()
{
}


//*******************************************
//
// Class tlExportInfo
// Destructor
//
//
tlExportInfo::~tlExportInfo()
{

    int a;
    for (a = 0; a < mNamedStrings.Count(); a++)
    {
        strdelete(mNamedStrings[a]->name);
        strdelete(mNamedStrings[a]->value);
        delete mNamedStrings[a];
    }
    mNamedStrings.ZeroCount();

    for (a = 0; a < mNamedInts.Count(); a++)
    {
        strdelete(mNamedInts[a]->name);
        delete mNamedInts[a];
    }
    mNamedInts.ZeroCount();
}


//*******************************************
//
// Class tlExportInfo
// tlDataChunk Constructor
//
//
tlExportInfo::tlExportInfo(tlDataChunk *ch)
{
    LoadFromChunk16(ch);
}



//*******************************************
//
// Class tlExportInfo
// Loader
//
//
void tlExportInfo::LoadFromChunk16(tlDataChunk *ch)
{

    assert(ch->ID() == P3D_EXPORT_INFO);
    tlExportInfoChunk16 *lch = dynamic_cast<tlExportInfoChunk16 *>(ch);
    assert(lch);

    SetName(lch->GetName());

    int a;
    for(a = 0 ; a < lch->SubChunkCount() ; a++)
    {

        tlExportInfoNamedIntChunk16    *ni;
        tlExportInfoNamedStringChunk16 *ns;

        tlDataChunk *subch = lch->GetSubChunk(a);
        switch (subch->ID())
        {

            case P3D_EXPORT_NAMED_INT:
                ni = dynamic_cast<tlExportInfoNamedIntChunk16 *>(subch);
                if (ni != NULL) AddInfo(ni->Name(), (int)ni->Value());
                break;

            case P3D_EXPORT_NAMED_STRING:
                ns = dynamic_cast<tlExportInfoNamedStringChunk16 *>(subch);
                if (ns != NULL) AddInfo(ns->Name(), ns->Value());
                break;

            default:
                break;
        }
    }
}



//*******************************************
//
// Class tlExportInfo
// Chunk
//
//
tlDataChunk *tlExportInfo::Chunk16(void)
{

    // create the main chunk
    tlExportInfoChunk16 *ch = new tlExportInfoChunk16;
    ch->SetName(GetName());


    // append all of the string sub chunks
    int a;

    for (a = 0; a < mNamedStrings.Count(); a++)
    {
        tlExportInfoNamedStringChunk16 *sc = new tlExportInfoNamedStringChunk16;
        
        sc->SetName(mNamedStrings[a]->name);
        sc->SetValue(mNamedStrings[a]->value);

        ch->AppendSubChunk(sc);
    }

    // append all of the int sub chunks
    for (a = 0; a < mNamedInts.Count(); a++)
    {
        tlExportInfoNamedIntChunk16 *sc = new tlExportInfoNamedIntChunk16;
        
        sc->SetName(mNamedInts[a]->name);
        sc->SetValue(mNamedInts[a]->value);

        ch->AppendSubChunk(sc);
    }

    return ch;
}



//*******************************************
//
// Class tlExportInfo
// Add info   name and string
//
//
void tlExportInfo::AddInfo(const char *name, const char *value)
{
    if ((name == NULL) || (value == NULL)) return;

    INFO_STRING *is = new INFO_STRING;
    is->name  = strnew(name);
    is->value = strnew(value);

    mNamedStrings.Append(is);
}


//*******************************************
//
// Class tlExportInfo
// Addd info  Name and int
//
//
void tlExportInfo::AddInfo(const char *name, const int value)
{
    if (name == NULL) return;

    INFO_INT *ii = new INFO_INT;
    ii->name  = strnew(name);
    ii->value = value;

    mNamedInts.Append(ii);
}


//*******************************************
//
// Class tlExportInfo
// Add info    Name and bool
//
//
void tlExportInfo::AddInfo(const char *name, const bool value)
{
    if (name == NULL) return;

    INFO_INT *ii = new INFO_INT;
    ii->name  = strnew(name);
    ii->value = (int) value;

    mNamedInts.Append(ii);
}


//*****************************************************************************
// tlExportInfoLoader
//*****************************************************************************
tlExportInfoLoader::tlExportInfoLoader() : 
    tlEntityLoader(P3D_EXPORT_INFO)
{
}

tlEntity* 
tlExportInfoLoader::Load(tlDataChunk* chunk)
{
    return new tlExportInfo(chunk);
}




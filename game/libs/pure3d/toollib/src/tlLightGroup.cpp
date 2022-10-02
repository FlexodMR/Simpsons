/*===========================================================================
    File:: tlLightGroup.cpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlLightGroup.hpp"

#include "tlLight.hpp"
#include "tlLightGroupChunk16.hpp"

#include "tlString.hpp"

#include <string.h>

//*************************************************
//
// Class tlLightGroup
// Default Constructor
//
//
tlLightGroup::tlLightGroup(tlDataChunk *ch /* = NULL */) : mLights()
{
    if (ch != NULL) LoadFromChunk16(ch);
}



//*************************************************
//
// Class tlLightGroup
// Destructor
//
//
tlLightGroup::~tlLightGroup()
{
}



//*************************************************
//
// Class tlLightGroup
// Load From Chunk 16
//
//
void tlLightGroup::LoadFromChunk16(tlDataChunk *ch)
{
    tlLightGroupChunk16 *lg = dynamic_cast<tlLightGroupChunk16 *>(ch);
    if (lg == NULL) return;

    SetName(lg->GetName());

    int a;
    for (a = 0; a < (int)lg->NumLights(); a++)
    {
        AddLight(lg->Lights()[a]);
    }
}



//*************************************************
//
// Class tlLightGroup
// Chunk16
//
//
tlDataChunk *tlLightGroup::Chunk16()
{

    tlLightGroupChunk16 *lg = new tlLightGroupChunk16;

    char **ln = new char*[mLights.Count()];

    int a;
    for (a = 0; a < mLights.Count(); a++)
    {
        ln[a] = mLights[a];
    }

    lg->SetName(GetName());
    lg->SetNumLights(mLights.Count());
    lg->SetLights(ln, mLights.Count());   

    return lg;
}



//*************************************************
//
// Class tlLightGroup
// Add light
//
//
bool tlLightGroup::AddLight(const char *lightname)
{
    if (lightname == NULL) return false;

    char *s = strnew(lightname);

    int a;
    for (a = 0; a < mLights.Count(); a++)
    {
        if (!strcmp(s, mLights[a]))
        {
            strdelete(s);
            return false;
        }
    }

    mLights.Append(s);
    return true;
}

//*************************************************
//
// Class tlLightGroup
// Remove Light
//
//
bool tlLightGroup::RemoveLight(const char *lightname)
{
    if (lightname == NULL) return true;

    int a;
    for (a = 0; a < mLights.Count(); a++)
    {
        if (!strcmp(lightname, mLights[a]))
        {
            mLights.Delete(a, 1);
            return true;
        }
    }
    return false;
}

//*****************************************************************************
// tlLightGroupLoader
//*****************************************************************************
tlLightGroupLoader::tlLightGroupLoader() : 
    tlEntityLoader(P3D_LIGHT_GROUP)
{
}

tlEntity*
tlLightGroupLoader::Load(tlDataChunk* chunk)
{
    return new tlLightGroup(chunk);
}
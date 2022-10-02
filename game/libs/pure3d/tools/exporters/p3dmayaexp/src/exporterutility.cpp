/*===========================================================================
    utility.cpp
    created: Feb. 7, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <math.h>

#include <maya/MTime.h>
#include <maya/MGlobal.h>

#include "exporterutility.hpp"
#include "animnode.hpp"
#include "meshprocess.hpp"

#include "tlInventory.hpp"
#include "tlFrameController.hpp"
#include "tlMatrix.hpp"
#include "tlShader.hpp"
#include "tlSimpleShader.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlSkin.hpp"
#include "tlTextureAnim.hpp"
#include "tlSkeleton.hpp"

static char *NullName = "(Null)";
static char *UnknownType = "(Unknown)";

float ATanCoords(float x, float y) 
{
    int quad = 0;

    if(x < 0)
    {
        quad = 1;
        x = -x;
    }

    if(y < 0) 
    {
        quad ^= 3;
        y = -y;
    }

//   float a = y / x;
    switch (quad)
    {
        case 0:
            return (float)atan2(x,y);
        case 1:
            return (DegToRadian(180) - (float)atan2(x,y));
        case 2:
            return (DegToRadian(180) + (float)atan2(x,y));
        case 3:
            return (DegToRadian(360) - (float)atan2(x,y));
    }
    // should never reach here
    return 0;
}

//*****************************************************************************
//
// getFrameRate
//
// Get the frame rate of an animation as viewed by the user
//
//*****************************************************************************
float GetFrameRate( const MTime& time )
{
    MTime::Unit unitFrame;
    float       fPlayBack = 0.0f;
    float       fBaseRate = 0.0f;
    float       fFR = 0.0f;

    // multiply base rate by playback speed to calculate the frame rate

    // get the playback speed of the animation
    // the value returned is a ratio of the base frame rate
    fPlayBack = static_cast<float>( MAnimControl::playbackSpeed() );

    // get units of playback time
    unitFrame = time.unit();

    switch (unitFrame)
    {
    case MTime::kGames:
        // 15 frames per second  
        fBaseRate = 15.0f;
        break;

    case MTime::kFilm:
        // 24 frames per second  
        fBaseRate = 24.0f;
        break;

    case MTime::kPALFrame:
        // 25 frames per second  
        fBaseRate = 25.0f;
        break;

    case MTime::kNTSCFrame:
        // 30 frames per second  
        fBaseRate = 30.0f;
        break;

    case MTime::kShowScan:
        // twice the speed of film (48 frames per second)  
        fBaseRate = 48.0f;
        break;

    case MTime::kPALField:
        // twice the speed of PAL (50 frames per second)  
        fBaseRate = 50.0f;
        break;

    case MTime::kNTSCField:
        // twice the speed of NTSC (60 frames per second)  
        fBaseRate = 60.0f;
        break;

    case MTime::kInvalid:
    case MTime::kHours:        // 3600 seconds  
    case MTime::kMinutes:      // 60 seconds  
    case MTime::kSeconds:      // 1 second  
    case MTime::kMilliseconds: // 1/1000 of a second  
    case MTime::kUserDef:      // user defined units (not implemented yet)  
    case MTime::kLast:
        // not supported
        break;     
    }

    fFR = fBaseRate * fPlayBack;

    // calc frame rate
    if (fFR==0)
    {
        fFR = 30.0f;
    }

    return fFR;
}

const char * objectName( MObject object )
//
// Description:
//    return the name of the given object
//
{
    if( object.isNull() )
    {
        return NullName;
    }
    MStatus stat = MS::kSuccess;
    MFnDependencyNode dgNode;
    stat = dgNode.setObject( object );
    MString objectName = dgNode.name( &stat );
    if( MS::kSuccess != stat)
    {
        return UnknownType;
    }
    return objectName.asChar();
}
    
const char * objectType( MObject object )
//
// Description:
//    return the type of the object
//
{
    if( object.isNull() )
    {
        return NullName;
    }
    MStatus stat = MS::kSuccess;
    MFnDependencyNode dgNode;
    stat = dgNode.setObject( object );
    MString typeName = dgNode.typeName( &stat );
    if( MS::kSuccess != stat)
    {
        return UnknownType;
    }
    return typeName.asChar();
}

//===========================================================================
// GenerateMaterial
//===========================================================================
// Description: Generate a p3dSimpleShader material and add it to the 
//              specified inventory.
//
// Constraints: 
//
//  Parameters: tlInventory* tlInvPointer: The inventory.
//              char* materialName: Name for the new material.
//
//      Return: (void)
//
//===========================================================================
void GenerateMaterial(tlInventory* tlInvPointer, char* materialName)
{
    tlShader* shader = toollib_find<tlShader>(tlInvPointer, materialName);
    if (shader == NULL)
    {
        shader = new tlSimpleShader;
        shader->SetName(materialName);
        shader->SetShaderType("simple");
        tlInvPointer->Store(shader);
    }
}

//===========================================================================
// GetVersionStr
//===========================================================================
// Description: Reads the specified module name (a.k.a. DLL/MLL) and queries
//              its version string. If only the most significant values
//              are specified (e.g. 1.0) then the string returned will
//              represent a "single dot" version; if the less significant
//              values are specified (e.g. 1.0.0.1) then the string returned
//              will represent a "multi-dot" version.
//
// Constraints: Use 'strdelete' to free memory allocated for return string.
//
//  Parameters: const char* moduleName: The name of the DLL/MLL.
//
//      Return: (char*): A newly allocated NULL-terminated string containing
//                       the version. Caller is responsible for freeing 
//                       (use 'strdelete').
//
//===========================================================================
char* GetVersionStr(const char* moduleName)
{
    char version_str[256]; 

    HMODULE moduleHandle = GetModuleHandle(moduleName);
    if (!moduleHandle)
        return NULL;

    GetModuleFileName(moduleHandle, version_str, 256);
    DWORD version_len, zero_ptr;
    version_len = GetFileVersionInfoSize(version_str, &zero_ptr);
    char* version_data = new char[version_len];
    GetFileVersionInfo(version_str, 0, version_len, version_data);
    VS_FIXEDFILEINFO* vsffi;
    UINT vsffi_len;
    VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
    if ( vsffi->dwFileVersionLS > 0 )
    {
        sprintf(version_str, "%d.%d.%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff), (vsffi->dwFileVersionLS >> 16),(vsffi->dwFileVersionLS & 0x0ffff));
    }
    else
    {
        sprintf(version_str, "%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff));
    }
    delete version_data;

    return strnew(version_str);
}

// ** BEGIN OBSOLETE ** 04 Sep 2002 ** No longer used **
/*
void SortSkeletonsAndAnimationsAndSkins(tlInventory* toollibInventory)
{
    tlInventory::Iterator<tlSkeleton> skeletonIt(toollibInventory);

    tlSkeleton* skeleton = skeletonIt.First();
    while(skeleton)
    {
        skeleton->Sort();
        skeleton = skeletonIt.Next();
    }

    //
    // What skeleton is this animation referancing
    //
    tlInventory::Iterator<tlFrameController> fcIt(toollibInventory);
    tlFrameController* fc = fcIt.First();
    while(fc)
    {
        if (fc->Type()==Pure3DAnimationTypes::POSE_TRANSFORM_PTRN)
        {
            tlPoseAnim* anim = toollib_find<tlPoseAnim>(toollibInventory, fc->AnimationName());              
            tlSkeleton* sortedSkeleton = toollib_find<tlSkeleton>(toollibInventory, fc->HierarchyName());
        
            if((sortedSkeleton)&&(anim))
            {
                anim->ReMapJoints(sortedSkeleton);
            }
            else
            {
                MString msg = "Skeleton not found for ";
                msg += "animation:";
                msg += fc->AnimationName();
                msg += ", animation ";
                msg += "might not map if the skeleton is sorted.";
                MGlobal::displayWarning(msg);
            }
        }
        fc = fcIt.Next();
        
    }

    //
    // Remap Skins since bone Influences are stored per vertex
    //
    tlInventory::Iterator<tlSkin> skinIt(toollibInventory);

    tlSkin* skin = skinIt.First();
    while(skin)
    {
        tlSkeleton* sortedSkeleton = toollib_find<tlSkeleton>(toollibInventory, skin->GetSkeletonName());
        
        if(sortedSkeleton)
        {
          skin->RemapBoneWeights(sortedSkeleton);
        }
        else
        {
            MString msg = "Skeleton not found for ";
            msg += "skin:";
            msg += skin->GetName();
            msg += ", skin vertices ";
            msg += "might not map if the skeleton is sorted.";
            MGlobal::displayWarning(msg);
        }

        skin = skinIt.Next();
    }

    //
    // Remap CompoundMeshes since they are the same as skeletons really
    //
    tlInventory::Iterator<tlCompositeDrawable> compSkinIt(toollibInventory);

    tlCompositeDrawable* compSkin = compSkinIt.First();
    while(compSkin)
    {     
        tlSkeleton* sortedSkeleton = toollib_find<tlSkeleton>(toollibInventory, compSkin->GetSkeletonName());
        
        if(sortedSkeleton)
        {
            compSkin->ReMapJointIndex(sortedSkeleton);
        }
        else
        {
            MString msg = "Skeleton not found for ";
            msg += "compoundMesh:";
            msg += compSkin->GetName();
            msg += ", animation ";
            msg += "might not map if the skeleton is sorted.";
            MGlobal::displayWarning(msg);
        }
        //
        // This is needed since Effects should be drawn Last...
        // since there is no sorting on them
        //
        compSkin->SortProps();

        compSkin = compSkinIt.Next();
    }
} 
*/
// ** END OBSOLETE ** 04 Sep 2002 ** No longer used **

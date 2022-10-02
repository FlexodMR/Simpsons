/*===========================================================================
This file is generated for you by Jeeves as a template for writing new
tools.  Rename it to main.cpp, and edit it to add needed functionality.

  File: main.cpp 
  
    Main for FlexObj
    
      This tool creates link object from input param file 
      
        
          Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.
          
===========================================================================*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <iostream>
#include "toollib.hpp"
#include "Param.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlCollisionObject.hpp"
#include "tlPhysicsObject.hpp"
#include "tlFlexibleJoint.hpp"
#include "tlFlexibleObject.hpp"

#include "tlInventory.hpp"
#include "tlSkeleton.hpp"
#include "tlPoint.hpp"
#include "simdata.hpp"

Parameters* Param;

inline bool intTObool(int i) { return (i == 0 ? false : true); }

bool objectfound = false;
tlSimDataHolder simData;

tlSkeleton* currentSkeleton = NULL;
tlCompositeDrawable* currentCompositeDrawable = NULL;
tlSkin* currentSkin = NULL;
tlPrimGroupMesh* currentPrimGroupMesh = NULL;

bool ReadSimulationDataFile(char* filename, tlInventory& inventory);
void WriteSimulationDataFile(char* fileName, char* objectName, tlInventory& inventory);

void DoTheWork(tlDataChunk* inchunk, tlDataChunk* outchunk);
void CreateNewChunk(tlDataChunk* inchunk, tlInventory& inventory);

void PrintFlexibleJoint(tlFlexibleJoint& inFlexibleJoint);
void PrintObjectCollisionVolume(tlCollisionObject& inCObject);
void SubPrintObjectCollisionVolume(tlCollisionVolume* inVolume, int col);
void PrintSimChunks(tlDataChunk* inchunk);

bool* gCollideJoint = NULL;

int main(int argc, char* argv[])
{
    simData.mStringData.SameName("NoData");
    
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);
    
    if (!Param->SimDataFile && !Param->PrintSimChunks && !Param->FixCollisionVolume)
    {
        printf("Must specify the SimDataFile file with '-d name'.\n");
        return 0;
    }
    
    tlDataChunk::RegisterDefaultChunks();
    
    if (Param->Files.Count() > 1)
        printf("Can process only one file at a time\n");
    
    //for(int i = 0; i < Param->Files.Count(); i++) 
    if ( Param->Verbosity > 0 )
    {
        printf("Processing file '%s'\n", Param->Files[0]);
    }
    // open file into a tFile object
    tlFile input(new tlFileByteStream(Param->Files[0],omREAD), tlFile::FROMFILE);
    if(!input.IsOpen()) 
    {
        printf("Could not open %s\n", Param->Files[0]);
        exit(-1);
    }
    
    // make a tlDataChunk from the file
    // this is the wrapper chunk for the input
    tlDataChunk* inchunk = new tlDataChunk(&input);
    
    // we don't need the tFile anymore
    // this cleans up the tFile object including the
    // tFileByteStream
    input.Close();
    
    if(Param->Verbosity>6)
    {
        inchunk->Print();
    }
    
    // build an output chunk
    tlDataChunk* outchunk = new tlDataChunk;
    
    if(Param->WriteHistory)
    {
        // put a history chunk in the output
        // a history chunk shows what version of the tool
        // was run on the file with what command-line 
        // parameters
        outchunk->AppendSubChunk(Param->HistoryChunk());
    }
    
    if (Param->PrintSimChunks)
    {
        PrintSimChunks(inchunk);
    }
    else
    {
        DoTheWork(inchunk, outchunk);
        
        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }
        
        if (!Param->CreateSimDataFile)
        {
            // create the new output file
            char* outfile;
            
            if(Param->OutFile)
            {
                outfile = Param->OutFile;
            } else {
                outfile = Param->Files[0];
            }
            
            // create the new output file
            tlFile output(new tlFileByteStream(outfile,omWRITE), tlFile::CHUNK32);
            
            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", outfile);
                exit(-1);
            }
            
            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);
        }
    }
    delete inchunk;
    delete outchunk;
    delete Param;
    delete[] gCollideJoint;
    return 0;
}

//
//
//

void PrintSimChunks(tlDataChunk* inchunk)
{
    printf("\nPrint collision volume in file %s\n\n", Param->Files[0]);
    
    for(int ch=0; ch < inchunk->SubChunkCount(); ch++)
    {
        // create the next sub-chunk
        tlDataChunk* sub = inchunk->GetSubChunk(ch);
        
        unsigned int test = Simulation::Collision::OBJECT;
        
        // look at the id of the subchunk to decide if we 
        // want to do something with it or not
        switch(sub->ID())
        {
        case Simulation::Collision::OBJECT:
            {
                tlCollisionObject cobj(sub);
                PrintObjectCollisionVolume(cobj);
                break;
            }
        case Simulation::Flexible::JOINT:
            {
                tlFlexibleJoint fobj(sub);
                PrintFlexibleJoint(fobj);
                break;
            }
        }
    }
}

void SubPrintObjectCollisionVolume(tlCollisionVolume* inVolume, int col)
{
    if (inVolume)
    {
        for (int i=0; i<col; i++)
            printf("  ");
        
        switch (inVolume->Type())
        {
        case SphereVolumeType:
            {
                tlSphereVolume* vol = (tlSphereVolume*)inVolume;
                printf("Sphere    ObjRef=%d, OwnerRef=%d, Radius=%f\n", vol->ObjRefIndex(), vol->OwnerIndex(), vol->mSphereRadius);
                break;
            }
        case CylinderVolumeType:
            {
                tlCylinderVolume* vol = (tlCylinderVolume*)inVolume;
                if (vol->mFlatEnd)
                    printf("Cylinder  ObjRef=%d, OwnerRef=%d, Radius=%f Len=%f\n", vol->ObjRefIndex(), vol->OwnerIndex(), vol->mCylinderRadius, vol->mLength);
                else
                    printf("Capsule   ObjRef=%d, OwnerRef=%d, Radius=%f Len=%f\n", vol->ObjRefIndex(), vol->OwnerIndex(), vol->mCylinderRadius, vol->mLength);
                break;
            }
        case OBBoxVolumeType:
            {
                tlOBBoxVolume* vol = (tlOBBoxVolume*)inVolume;
                printf("OBBox     ObjRef=%d, OwnerRef=%d, Len=%f %f %f\n", vol->ObjRefIndex(), vol->OwnerIndex(), vol->mLength[0], vol->mLength[1], vol->mLength[2]);
                break;
            }
        case WallVolumeType:
            {
                tlWallVolume* vol = (tlWallVolume*)inVolume;
                printf("Wall      ObjRef=%d, OwnerRef=%d, Normal=%f %f %f\n", vol->ObjRefIndex(), vol->OwnerIndex(), vol->mNormal[0], vol->mNormal[1], vol->mNormal[2]);
                break;
            }
        case BBoxVolumeType:
            printf("BBox      ObjRef=%d, OwnerRef=%d\n", inVolume->ObjRefIndex(), inVolume->OwnerIndex());
            break;
        }
        
        if (inVolume->SubVolume().GetSize() > 0)
        {
            for (int i=0; i<inVolume->SubVolume().GetSize(); i++)
            {
                SubPrintObjectCollisionVolume(inVolume->SubVolume()[i], col+1);
            }
        }
    }
}

void PrintObjectCollisionVolume(tlCollisionObject& inCObject)
{
    if (inCObject.GetCollisionVolume())
    {
        static bool test = false;
        if (test)
            inCObject.CleanUnusedOwners();

        printf("\nObject %s\n\n", inCObject.GetName());
        SubPrintObjectCollisionVolume(inCObject.GetCollisionVolume(), 0);
        int i;

        printf("\nNumber of SelfCollision: %d\n", inCObject.GetSelfCollisionList().GetSize());
        for (i=0; i<inCObject.GetSelfCollisionList().GetSize(); i++)
        {
            tlSelfCollision* sc = inCObject.GetSelfCollisionList()[i];
            printf("SelfCollision %d %d %d %d\n", sc->mJointIndex1, sc->mJointIndex2, int(sc->mSelfOnly1), int(sc->mSelfOnly2));
        }
        printf("\nNumber of CollisionOwner: %d\n", inCObject.GetOwnerList().GetSize());
        for (i=0; i<inCObject.GetOwnerList().GetSize(); i++)
        {
            tlCollisionVolumeOwner* ow = inCObject.GetOwnerList()[i];
            printf("Owner %d:", i);
            for (int j=0; j<ow->mNames.GetSize(); j++)
                printf(" %s", ow->mNames[j]);
            printf("\n");
        }
    }
}

void PrintFlexibleJoint(tlFlexibleJoint& inFlexibleJoint)
{
    printf("\n Flexible Joint %s\n", inFlexibleJoint.GetName());
    for (int i=0; i<inFlexibleJoint.mFlexibleJointData.GetSize(); i++)
    {
        printf("\n Definition %s\n", inFlexibleJoint.mFlexibleJointData[i].GetName());
        printf("     parameters             %s\n", inFlexibleJoint.mFlexibleJointData[i].mParameters.GetName());
        printf("     connection parameters  %s\n", inFlexibleJoint.mFlexibleJointData[i].mConnectionParameters.GetName());
        printf("     resting parameters     %s\n", inFlexibleJoint.mFlexibleJointData[i].mRestingPoseParameters.GetName());
        
        int j;
        
        printf("Number of joints involved %d\n", inFlexibleJoint.mFlexibleJointData[i].mIndexList.GetSize());
        for (j=0; j<inFlexibleJoint.mFlexibleJointData[i].mIndexList.GetSize(); j++)
            printf("  item #%d: %d\n", j, inFlexibleJoint.mFlexibleJointData[i].mIndexList[j]);
        
        printf("Number of connections %d\n", inFlexibleJoint.mFlexibleJointData[i].mConnectionList.GetSize());
        for (j=0; j<inFlexibleJoint.mFlexibleJointData[i].mConnectionList.GetSize(); j++)
        {
            tlFlexJointConnection* con = &inFlexibleJoint.mFlexibleJointData[i].mConnectionList[j];
            printf("  items #%d: index1: %d, index2: %d, onbranch %d, length:%f\n", j, con->mIndex1, con->mIndex2, con->mOnBranch, con->mLength);
        }
        printf("Number of hinges %d\n", inFlexibleJoint.mFlexibleJointData[i].mHingeList.GetSize());
        for (j=0; j<inFlexibleJoint.mFlexibleJointData[i].mHingeList.GetSize(); j++)
        {
            tlFlexJointHinge* con = &inFlexibleJoint.mFlexibleJointData[i].mHingeList[j];
            printf("  items #%d: index1: %d, index2: %d, , index3: %d\n", j, con->mIndex1, con->mIndex2, con->mIndex3);
        }
    }
}

//
//
//

void DoTheWork(tlDataChunk* inchunk, tlDataChunk* outchunk)
{
    tlInventory inventory;
    
    // go through all the sub-chunks of the input and
    // process the ones you care about
    for(int ch=0; ch < inchunk->SubChunkCount(); ch++)
    {
        // create the next sub-chunk
        tlDataChunk* sub = inchunk->GetSubChunk(ch);
        
        // look at the id of the subchunk to decide if we 
        // want to do something with it or not
        switch(sub->ID())
        {
            // all the chunk ids are enumerated in the file:
            // chunks.h
        case Pure3D::Mesh::SKIN:
            {
                if (!Param->SimOnly && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                tlSkin* skin = new tlSkin(sub);
                inventory.Store(skin);
                break;
            }
        case P3D_SKELETON:
            {
                if (!Param->SimOnly && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                tlSkeleton* skel = new tlSkeleton(sub);
                inventory.Store(skel);
                break;
            }
        case P3D_COMPOSITE_DRAWABLE:
            {
                if (!Param->SimOnly && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                tlCompositeDrawable* cd = new tlCompositeDrawable(sub);
                inventory.Store(cd);
                break;
            }
        case Pure3D::Mesh::MESH:
            {
                if (!Param->SimOnly && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                inventory.Store(mesh);
                break;
            }
        case Simulation::Collision::OBJECT:
            {
                /* Instead we add the collision object in the inventory.
                   It is possible that some change can be made to it so we wait
                   before adding it to the outchunk.
                if (Param->KeepPreviousSim && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                */
                tlCollisionObject* collisionObject = new tlCollisionObject(sub);

                inventory.Store(collisionObject);
                break; // no more old chunk
            }
        case Simulation::Physics::OBJECT:
        case Simulation::Flexible::OBJECT:
            {
                if (Param->KeepPreviousSim && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                break; // no more old chunk
            }
        default:
            {
                if (!Param->SimOnly && !Param->CreateSimDataFile)
                {
                    outchunk->AppendSubChunk(sub,false);   
                }
                break;
            }
        }
    }
    
    if (Param->CreateSimDataFile)
    {
        WriteSimulationDataFile(Param->SimDataFile, Param->CreateSimDataFile, inventory);
    }
    else
    {
        if (Param->SimDataFile && ReadSimulationDataFile(Param->SimDataFile, inventory))
        {
            CreateNewChunk(outchunk, inventory);
        }
        else if (Param->FixCollisionVolume)
        {
            // add the fixed collision obejct to the inventory
            tlInventory::Iterator<tlCollisionObject> iterator(&inventory);
            tlCollisionObject* itercobj = iterator.First();
            
            while (itercobj != NULL)
            {
                itercobj->CleanUnusedOwners();
                outchunk->AppendSubChunk(itercobj->Chunk());
                itercobj = iterator.Next();
            }
        }
    }
}

void CreateNewChunk(tlDataChunk* outchunk, tlInventory& inventory)
{
    tlCollisionObject cobj;

    tlSafeEntityCaster<tlCollisionObject> caster;
    tlCollisionObject* collisionObjectInInventory = (tlCollisionObject*)inventory.Find(caster, tlEntity::MakeUID(simData.GetName()));
    
    if (simData.mCollisionJointData.GetSize() > 0)
    {
        if (currentSkin)
            cobj.FitSkin(currentSkeleton, currentSkin, &simData);
        else if (currentCompositeDrawable)
            cobj.FitCompositeDrawable(currentSkeleton, currentCompositeDrawable, &simData);
        else if (currentPrimGroupMesh)
            cobj.FitPrimGroupMesh(currentPrimGroupMesh, &simData);
        
        outchunk->AppendSubChunk(cobj.Chunk());
    }
    else if (collisionObjectInInventory)
    {
        // this is to allow addition of selfcollision info on Maya created collision object chunk.
        for (int i=0; i<simData.mSelfCollisionData.GetSize(); i++)
        {
            tlSelfCollisionJointData sd = simData.mSelfCollisionData[i];
            collisionObjectInInventory->AddSelfCollision(sd.mIndex1, sd.mIndex2, sd.mSelfOnly1, sd.mSelfOnly2);
        }
        if (Param->FixCollisionVolume)
        {
            collisionObjectInInventory->FixCollisionVolume(currentSkeleton);
            collisionObjectInInventory->CleanUnusedOwners();
        }

        outchunk->AppendSubChunk(collisionObjectInInventory->Chunk());
    }

    // add the collision obejct to the inventory
    tlInventory::Iterator<tlCollisionObject> iterator(&inventory);
    tlCollisionObject* itercobj = iterator.First();
    
    while (itercobj != NULL)
    {
        // if new collision data provided, the collisionObjectInInventory 
        // won't be added to the outchunk if any, otherwise, if it has been
        // modified, ithas been added already in the previous if
        if (itercobj != collisionObjectInInventory)
            outchunk->AppendSubChunk(itercobj->Chunk());
        itercobj = iterator.Next();
    }

    
    if (simData.mCreatePhysicsObject)
    {
        tlPhysicsObject pobj;
        
        if (simData.mRigidBodyData.mAllSet)
        {
            pobj.SetPhysicsObject(&simData);
            outchunk->AppendSubChunk(pobj.Chunk());
        }
        else
        {
            if (simData.mCollisionJointData.GetSize() > 0)
            {
                pobj.SetPhysicsObject(&simData, &cobj, currentSkeleton);
                outchunk->AppendSubChunk(pobj.Chunk());
            }
            else
            {
                if (collisionObjectInInventory)
                {
                    pobj.SetPhysicsObject(&simData, collisionObjectInInventory, currentSkeleton);
                    outchunk->AppendSubChunk(pobj.Chunk());
                }
                else
                {
                    printf("\nCan't create a physics object without a collision object\n");
                }
            }
        }
    }
    if (simData.mFlexibleJointData.GetSize() > 0 && (currentSkeleton))
    {
        tlFlexibleJoint flexibleJoint;
        flexibleJoint.SetFromSimData(currentSkeleton, &simData);
        outchunk->AppendSubChunk(flexibleJoint.Chunk());
    }
    if (simData.mCreateFlexibleObject && currentPrimGroupMesh)
    {
        tlFlexibleObject flexibleObject;
        
        if (simData.mFlexibleParametersData.GetSize() == 0)
        {
            printf("\nNo Parameters have been provided for flexible object %s, default values will be provided\n", currentPrimGroupMesh->GetName());
        }
        else
        {
            flexibleObject.SetFlexibleObjectParam(simData.mFlexibleParametersData[0]);
        }
        flexibleObject.SetExternalDensityFactor(simData.mFlexibleObjectData.mExternalDensityFactor);
        flexibleObject.SetSolver(unsigned short(simData.mFlexibleObjectData.mSolver));
        flexibleObject.SetPrimGroupMesh(currentPrimGroupMesh);
        outchunk->AppendSubChunk(flexibleObject.Chunk());
    }
}

//
//
//

void FindObject(const char* objectName, tlInventory& inventory)
{
    tlInventory::Iterator<tlSkin> iterator(&inventory);
    tlSkin* skin = iterator.First();
    
    while (skin != NULL)
    {
        tlSkeleton* skel = toollib_find<tlSkeleton>(&inventory, skin->GetSkeletonName());
        if (skel != NULL && !strcmp(objectName, skin->GetName()))
        {
            objectfound = true;
            currentSkeleton = skel;
            currentSkin = skin;
            break;
        }
        skin = iterator.Next();
    }
    if (!objectfound)
    {
        tlInventory::Iterator<tlCompositeDrawable> iterator(&inventory);
        tlCompositeDrawable* cd = iterator.First();
        while (cd != NULL)
        {
            tlSkeleton* skel = toollib_find<tlSkeleton>(&inventory, cd->GetSkeletonName());
            if (skel != NULL && !strcmp(objectName, cd->GetName()))
            {
                objectfound = true;
                currentSkeleton = skel;
                currentCompositeDrawable = cd;
                currentCompositeDrawable->ResolveReferences(&inventory);
                break;
            }
            cd = iterator.Next();
        }
    }
    if (!objectfound)
    {
        tlInventory::Iterator<tlPrimGroupMesh> iterator(&inventory);
        tlPrimGroupMesh* pg = iterator.First();
        while (pg != NULL)
        {
            if (!strcmp(objectName, pg->GetName()))
            {
                objectfound = true;
                currentPrimGroupMesh = pg;
                break;
            }
            pg = iterator.Next();
        }
    }
}

int FindSkeletonJointIndex(char* name)
{
    assert(currentSkeleton);
    int index = -1;
    if (currentSkeleton->FindJoint(name, &index) == NULL)
    {
        printf("Can't find the joint %s in the skeleton %s", name, currentSkeleton->GetName());
    }
    return index;
}

void SkinVerticesCount(tlSkin* skin, tlSkeleton* skel, int* wcount, float minWeight)
{
    for(int jnt=0; jnt<skel->GetNumJoints(); jnt++)
    {
        wcount[jnt] = 0;
    }
    for(int i=0; i<skin->NumVertices(); i++)
    {
        tlSkinVertex* v = (tlSkinVertex*)skin->GetVertex(i);
        v->ThresholdWeights(0.0001f);
        for (int j=0; j<v->NumJointWeights(); j++)
        {
            int test = v->NumJointWeights();
            tlBoneWeightingData wd = v->GetJointWeight(j);
            
            if (wd.weight > minWeight)
            {
                wcount[wd.jointindex]++;
            }
        }
    }
}

//
//
//

void FinishReadLine(FILE* file, char* buf=NULL)
{
    // this parser is pretty simple and it will work as long as there is a
    // space between the # and the keyword.
    if (buf)
    {
        int test = strlen(buf);
        if (test > 1 && buf[1] != ' ')
            printf("The line %s might not be parsed correctly. Make sure there is always a space between the # and the keyword in you simulation parameter file.\n", buf);

        assert(test <= 1 || buf[1] == ' ');
    }

    char c;
    do
    {
        c = fgetc(file);
        assert(c != 'EOF');
    } while (c != '\n');
}

void ReadFlexibleParameters(FILE* file, tlFlexibleParametersData* newData)
{
    char buf[256];
    bool finishReadData = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndFlexibleParameters") == 0)
        {
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "Stretch1Dkf") == 0)
        {
            newData->mUseLambda = false;
            fscanf(file, "%f\n", &newData->mStretch1Dkf);
        }
        else if (strcmp(buf, "Stretch1Dkd") == 0)
        {
            fscanf(file, "%f\n", &newData->mStretch1Dkd);
        }
        else if (strcmp(buf, "Bend1Dkf") == 0)
        {
            fscanf(file, "%f\n", &newData->mBend1Dkf);
        }
        else if (strcmp(buf, "Bend1Dkd") == 0)
        {
            fscanf(file, "%f\n", &newData->mBend1Dkd);
        }
        else if (strcmp(buf, "Wind1DKf") == 0)
        {
            fscanf(file, "%f\n", &newData->mWind1DKf);
        }
        else if (strcmp(buf, "Stretch2Dkf") == 0)
        {
            newData->mUseLambda = false;
            fscanf(file, "%f\n", &newData->mStretch2Dkf);
        }
        else if (strcmp(buf, "Stretch2Dkd") == 0)
        {
            fscanf(file, "%f\n", &newData->mStretch2Dkd);
        }
        else if (strcmp(buf, "Shear2Dkf") == 0)
        {
            fscanf(file, "%f\n", &newData->mShear2Dkf);
        }
        else if (strcmp(buf, "Shear2Dkd") == 0)
        {
            fscanf(file, "%f\n", &newData->mShear2Dkd);
        }
        else if (strcmp(buf, "Bend2Dkf") == 0)
        {
            fscanf(file, "%f\n", &newData->mBend2Dkf);
        }
        else if (strcmp(buf, "Bend2Dkd") == 0)
        {
            fscanf(file, "%f\n", &newData->mBend2Dkd);
        }
        else if (strcmp(buf, "Wind2DKf") == 0)
        {
            fscanf(file, "%f\n", &newData->mWind2DKf);
        }
        else if (strcmp(buf, "LambdaF") == 0)
        {
            newData->mUseLambda = true;
            fscanf(file, "%f\n", &newData->mLambdaF);
        }
        else if (strcmp(buf, "LambdaD") == 0)
        {
            fscanf(file, "%f\n", &newData->mLambdaD);
        }
        else if (strcmp(buf, "KappaF") == 0)
        {
            fscanf(file, "%f\n", &newData->mKappaF);
        }
        else if (strcmp(buf, "KappaD") == 0)
        {
            fscanf(file, "%f\n", &newData->mKappaD);
        }
        else if (strcmp(buf, "IotaF") == 0)
        {
            fscanf(file, "%f\n", &newData->mIotaF);
        }
        else if (strcmp(buf, "IotaD") == 0)
        {
            fscanf(file, "%f\n", &newData->mIotaD);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
}

void ReadFlexibleJoint(FILE* file, tlFlexibleJointData* newData)
{
    char buf[256];
    bool finishReadData = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndFlexibleJointData") == 0)
        {
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "AutomaticConnectionOnBranch") == 0)
        {
            int index;
            fscanf(file, "%d\n", &index);
            newData->mAutomaticConnectionOnBranch = index == 0 ? false : true;
        }
        else if (strcmp(buf, "AutomaticHingeOnBranch") == 0)
        {
            int index;
            fscanf(file, "%d\n", &index);
            newData->mAutomaticHingeOnBranch = index == 0 ? false : true;
        }
        else if (strcmp(buf, "AddBranch") == 0)
        {
            int index;
            fscanf(file, "%d\n", &index);
            newData->AddBranch(index);
        }
        else if (strcmp(buf, "AddFixIndex") == 0)
        {
            int index;
            fscanf(file, "%d\n", &index);
            newData->AddFixIndex(index);
        }
        else if (strcmp(buf, "AddConnection") == 0)
        {
            int index1, index2;
            fscanf(file, "%d %d\n", &index1, &index2);
            newData->AddConnection(index1, index2);
        }
        else if (strcmp(buf, "AddHinge") == 0)
        {
            int index1, index2, index3;
            fscanf(file, "%d %d %d\n", &index1, &index2, &index3);
            newData->AddHinge(index1, index2, index3);
        }
        else if (strcmp(buf, "Parameters") == 0)
        {
            fscanf(file, "%s\n", &buf);
            newData->mParameters.SetName(buf);
        }
        else if (strcmp(buf, "RestingPosParameters") == 0)
        {
            fscanf(file, "%s\n", &buf);
            newData->mRestingPoseParameters.SetName(buf);
        }
        else if (strcmp(buf, "ConnectionParameters") == 0)
        {
            fscanf(file, "%s\n", &buf);
            newData->mConnectionParameters.SetName(buf);
        }
        else if (strcmp(buf, "Gravity") == 0)
        {
            fscanf(file, "%d\n", &newData->mGravity);
        }
        else if (strcmp(buf, "SimMethod") == 0)
        {
            fscanf(file, "%d\n", &newData->mSimMethod);
        }
        else if (strcmp(buf, "UseRestingPos") == 0)
        {
            fscanf(file, "%d\n", &newData->mUseRestingPos);
        }
        else if (strcmp(buf, "RestMethod") == 0)
        {
            fscanf(file, "%d\n", &newData->mRestMethod);
        }
        else if (strcmp(buf, "UpdateMethod") == 0)
        {
            fscanf(file, "%d\n", &newData->mUpdateMethod);
        }
        else if (strcmp(buf, "UseVirtualJoint") == 0)
        {
            fscanf(file, "%d\n", &newData->mUseVirtualJoint);
        }
        else if (strcmp(buf, "Solver") == 0)
        {
            fscanf(file, "%d\n", &newData->mSolver);
        }
        else if (strcmp(buf, "ExternalDensityFactor") == 0)
        {
            fscanf(file, "%f\n", &newData->mExternalDensityFactor);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
}

void ReadFlexibleObject(FILE* file)
{
    char buf[256];
    bool finishReadData = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndFlexibleObjectData") == 0)
        {
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "Parameters") == 0)
        {
            fscanf(file, "%s\n", &buf);
            simData.mFlexibleObjectData.mParameters.SetName(buf);
        }
        else if (strcmp(buf, "Solver") == 0)
        {
            fscanf(file, "%d\n", &simData.mFlexibleObjectData.mSolver);
        }
        else if (strcmp(buf, "ExternalDensityFactor") == 0)
        {
            fscanf(file, "%f\n", &simData.mFlexibleObjectData.mExternalDensityFactor);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
}

void ReadFlexibleData(FILE* file)
{
    assert(file);
    
    if (currentPrimGroupMesh)
    {
        assert(simData.mCreatePhysicsObject == false);
        if (simData.mCreatePhysicsObject)
        {
            printf("\n");
            printf("Can't create a physics object and a flexible object on the same PrimGroupMesh.\n");
            printf("You must remove either the FlexibleData or the PhysicsData from the simdatafile.\n");
            printf("The FlexibleData will now be ignored for the object %s.\n", currentPrimGroupMesh->GetName());
        }
        simData.mCreateFlexibleObject = true;
    }
    
    char buf[256];
    bool finishReadData = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndFlexibleData") == 0)
        {
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "FlexibleJointData") == 0)
        {
            fscanf(file, "%s\n", &buf);
            tlFlexibleJointData* newData = &simData.mFlexibleJointData.NewElem();
            newData->SetName(buf);
            ReadFlexibleJoint(file, newData);
        }
        else if (strcmp(buf, "FlexibleObjectData") == 0)
        {
            fscanf(file, "%s\n", &buf);
            simData.mFlexibleObjectData.SetName(buf);
            ReadFlexibleObject(file);
        }
        else if (strcmp(buf, "Parameters") == 0)
        {
            fscanf(file, "%s\n", &buf);
            tlFlexibleParametersData* newData = &simData.mFlexibleParametersData.NewElem();
            newData->SetName(buf);
            ReadFlexibleParameters(file, newData);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
    // could test that the parameters all all presents...
}

void WriteFlexibleData(FILE* file)
{
    assert(file);
    
    if (currentSkin || currentCompositeDrawable)
    {
        fprintf(file, "\n");
        fprintf(file, "# FlexibleData\n\n");
        
        fprintf(file, "# Parameters parametersName\n");
        fprintf(file, "# LambdaF 20.0\n");
        fprintf(file, "# LambdaD 1.0\n");
        fprintf(file, "# KappaF 20.0\n");
        fprintf(file, "# KappaD 1.0\n");
        fprintf(file, "# Wind1DKf 1.0\n");
        fprintf(file, "# EndFlexibleParameters\n\n");
        
        fprintf(file, "# Parameters connectionParametersName\n");
        fprintf(file, "# LambdaF 20.0\n");
        fprintf(file, "# LambdaD 1.0\n");
        fprintf(file, "# EndFlexibleParameters\n\n");
        
        fprintf(file, "# Parameters restPosParametersName\n");
        fprintf(file, "# LambdaF 20.0\n");
        fprintf(file, "# LambdaD 1.0\n");
        fprintf(file, "# EndFlexibleParameters\n\n");
        
        fprintf(file, "# FlexibleJointData name\n");
        fprintf(file, "# Parameters parametersName\n");
        fprintf(file, "# Gravity 1\n");
        fprintf(file, "# SimMethod 0\n");
        fprintf(file, "# UseRestingPos 1\n");
        fprintf(file, "# RestMethod 1\n");
        fprintf(file, "# UpdateMethod 1\n");
        fprintf(file, "# UseVirtualJoint 0\n");
        fprintf(file, "# Solver 1\n");
        fprintf(file, "# ExternalDensityFactor 1.0\n");
        fprintf(file, "# RestingPosParameters parametersName\n");
        fprintf(file, "# ConnectionParameters parametersName\n");
        fprintf(file, "# AutomaticConnectionOnBranch 1\n");
        fprintf(file, "# AutomaticHingeOnBranch 1\n");
        fprintf(file, "# AddBranch jointIndex\n");
        fprintf(file, "# AddFixIndex jointIndex\n");
        fprintf(file, "# AddConnection jointIndex1 jointIndex2\n");
        fprintf(file, "# AddHinge jointIndex1 jointIndex2 jointIndex3\n");
        fprintf(file, "# EndFlexibleJointData\n");
        
        fprintf(file, "# EndFlexibleData\n");
    }
    else if (currentPrimGroupMesh)
    {
        fprintf(file, "\n");
        fprintf(file, "# FlexibleData\n\n");
        fprintf(file, "# LambdaF 20.0\n");
        fprintf(file, "# LambdaD 1.0\n");
        fprintf(file, "# KappaF 20.0\n");
        fprintf(file, "# KappaD 1.0\n");
        fprintf(file, "# IotaF 40.0\n");
        fprintf(file, "# IotaD 1.0\n");
        fprintf(file, "# Wind2DKf 200.0\n");
        fprintf(file, "# EndFlexibleParameters\n\n");
        
        fprintf(file, "# FlexibleObjectData objectName\n");
        fprintf(file, "# Solver 1\n");
        fprintf(file, "# ExternalDensityFactor 1.0\n");
        fprintf(file, "# EndFlexibleObjectData\n\n");
        
        fprintf(file, "# EndFlexibleData\n");
    }
}


//
//
//

void ReadPhysicsData(FILE* file)
{
    assert(file);
    
    char buf[256];
    bool finishReadData = false;
    bool cmProvided = false, inertiaProvided = false, volumeProvided = false;
    bool rigidBody = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndPhysicsData") == 0)
        {
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "RigidBody") == 0)
        {
            fscanf(file, "\n");
            simData.mCreatePhysicsObject = true;
        }
        else if (strcmp(buf, "ArticulatedPhysicsObject") == 0)
        {
            fscanf(file, "\n");
            simData.mCreatePhysicsObject = true;
        }
        else if (strcmp(buf, "CenterOfMass") == 0)
        {
            tlPoint cm;
            fscanf(file, "%f %f %f\n", &cm.x, &cm.y, &cm.z);
            simData.mRigidBodyData.mCenterOfMass = cm;
            cmProvided = true;
        }
        else if (strcmp(buf, "InertiaMatrix") == 0)
        {
            tlMatrix inertia;
            fscanf(file, "%f %f %f %f %f %f\n", &inertia[0][0], &inertia[0][1], &inertia[0][2], &inertia[1][1], &inertia[1][2], &inertia[2][2]);
            inertia[1][0] = inertia[0][1];
            inertia[2][0] = inertia[0][2];
            inertia[2][1] = inertia[1][2];
            simData.mRigidBodyData.mInertiaMatrix = inertia;
            inertiaProvided = true;
        }
        else if (strcmp(buf, "Volume") == 0)
        {
            fscanf(file, "%f\n", &simData.mRigidBodyData.mVolume);
            volumeProvided = true;
        }
        else if (strcmp(buf, "RestingSensitivity") == 0)
        {
            fscanf(file, "%f\n", &simData.mRigidBodyData.mRestingSensitivity);
        }
        else if (strcmp(buf, "Joint_short") == 0)
        {
            int dof, jointIndex;
            fscanf(file, "%s %d\n", &buf, &dof);
            jointIndex = FindSkeletonJointIndex(buf);
            simData.mPhysicsJointData.NewElem().Set(jointIndex, dof);
        }
        else if (strcmp(buf, "Joint_long") == 0)
        {
            float stiff, minangle, maxangle;
            int dof, jointIndex;
            fscanf(file, "%s %d %f %f %f\n", &buf, &dof, &stiff, &minangle, &maxangle);
            jointIndex = FindSkeletonJointIndex(buf);
            simData.mPhysicsJointData.NewElem().Set(jointIndex, dof, stiff, minangle, maxangle);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
    if (volumeProvided && cmProvided && inertiaProvided)
    {
        simData.mRigidBodyData.mAllSet = true;
    }
}

bool UsualDOFJoint(int dof, const char* jointName)
{
    bool ret = false;
    
    const char OneDOFNames[6][32]   = { "elbowl", "elbl", "lelbow", "lelb", "kneel", "lknee" };
    const char ThreeDOFNames[4][32] = { "hipl", "lhip", "shoulderl", "lshoulder" };
    
    if (dof == 1)
    {
        for (int i=0; i<6; i++)
        {
            if (_stricmp(jointName, OneDOFNames[i]) == 0)
                ret = true;
        }
    }
    if (dof == 3)
    {
        for (int i=0; i<4; i++)
        {
            if (_stricmp(jointName, ThreeDOFNames[i]) == 0)
                ret = true;
        }
    }
    return ret;
}

void WritePhysicsData(FILE* file)
{
    assert(file);
    
    if (currentSkin || currentCompositeDrawable)
    {
        fprintf(file, "\n# PhysicsData\n");
        fprintf(file, "\n# ArticulatedPhysicsObject\n\n");
        
        fprintf(file, "# There is two possible ways of specifying the joint using:\n");
        fprintf(file, "# Joint_short jointName numdof\n");
        fprintf(file, "# Joint_long  jointName numdof stiffness minangle maxangle\n\n");
        
        for (int i=0; i<currentSkeleton->GetNumJoints(); i++)
        {
            if (gCollideJoint[i])
            {
                if (UsualDOFJoint(3, currentSkeleton->GetJoint(i)->GetName()))
                    fprintf(file, "# Joint_short %s 3\n", currentSkeleton->GetJoint(i)->GetName());
                else if (UsualDOFJoint(1, currentSkeleton->GetJoint(i)->GetName()))
                    fprintf(file, "# Joint_short %s 1\n", currentSkeleton->GetJoint(i)->GetName());
                else
                    fprintf(file, "# Joint_short %s 0\n", currentSkeleton->GetJoint(i)->GetName());
            }
        }
        fprintf(file, "# EndPhysicsData\n");
    }
    else if (currentPrimGroupMesh)
    {
        fprintf(file, "\n# PhysicsData\n");
        
        fprintf(file, "# RigidBody\n");
        fprintf(file, "# Default: Inertia, volume and center of mass extracted from collision object\n");
        fprintf(file, "# Alternatively it is possible to specify the following:\n");
        fprintf(file, "# CenterOfMass x y z\n");
        fprintf(file, "# InertiaMatrix xx xy xz yy yz zz\n");
        fprintf(file, "# Volume v\n");
        fprintf(file, "# RestingSensitivity 1.0\n");
        fprintf(file, "# EndPhysicsData\n");
    }
}

//
//
//

void ReadCollisionData(FILE* file)
{
    assert(file);
    
    char buf[256], buf2[256];
    int ival, ival1, ival2, ival3, ival4;
    float fval;
    tlPoint pval;
    bool finishReadData = false;
    
    while (!finishReadData)
    {
        if (fscanf(file, "%s\n", &buf) == -1)
            break;
        
        if (strcmp(buf, "EndCollisionData") == 0)
        {
            assert (true);
            fscanf(file, "\n");
            finishReadData = true;
        }
        else if (strcmp(buf, "CollElRatio") == 0)
        {
            fscanf(file, "%f\n", &fval);
            tlCollisionObject::sCollElRatio = fval;
        }
        else if (strcmp(buf, "MinWeight") == 0)
        {
            fscanf(file, "%f\n", &fval);
            tlCollisionObject::sMinWeight = fval;
        }
        else if (strcmp(buf, "HierarchyDepth") == 0)
        {
            fscanf(file, "%d\n", &ival);
            tlCollisionObject::sHierarchyDepth = ival;
        }
        else if (strcmp(buf, "SelfCollision") == 0)
        {
            fscanf(file, "%s %s %d %d\n", &buf, &buf2, &ival3, &ival4);
            ival1 = FindSkeletonJointIndex(buf);
            ival2 = FindSkeletonJointIndex(buf2);
            if (ival1 != ival2 && ival1 >= 0 && ival2 >= 0)
            {
                simData.AddSelfCollisionData(ival1, ival2, intTObool(ival3), intTObool(ival4));
            }
            else
            {
                printf("Can't add self collision information for unknowned joint %s and %s\n", buf, buf2);
            }
        }
        else if (strcmp(buf, "CollideJoint") == 0)
        {
            fscanf(file, "%s %d\n", &buf, &ival2);
            ival1 = FindSkeletonJointIndex(buf);
            if(ival1 >= 0)
            {
                simData.AddCollisionData(ival1, ival2);
            }
            else
            {
                printf("Can't add collision joint information for unknowned joint %s\n", buf);
            }
        }
        else if (strcmp(buf, "CollideGeometry") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.AddCollisionData(0, ival);
        }
        else if (strcmp(buf, "DefaultArea") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mDefaultArea = ival;
        }
        else if (strcmp(buf, "Static") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mStatic = intTObool(ival);
        }
        else if (strcmp(buf, "CanSpin") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mCanSpin = intTObool(ival);
        }
        else if (strcmp(buf, "CanRoll") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mCanRoll = intTObool(ival);
        }
        else if (strcmp(buf, "CanSlide") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mCanSlide = intTObool(ival);
        }
        else if (strcmp(buf, "CanBounce") == 0)
        {
            fscanf(file, "%d\n", &ival);
            simData.mCollisionObjectAttribute.mCanBounce = intTObool(ival);
        }
        else if (buf[0] == '#') // ???
        {
            FinishReadLine(file, buf);
        }
        else
        {
            printf("command: %s unknown\n", buf);
            FinishReadLine(file);
        }
    }
}

void WriteCollisionData(FILE* file)
{
    assert(file);
    
    fprintf(file, "\nCollisionData\n");
    fprintf(file, "# info: Collision volume indices are:\n");
    fprintf(file, "#         BestFit  = 0\n");
    fprintf(file, "#         Sphere   = 1\n");
    fprintf(file, "#         Cylinder = 2\n");
    fprintf(file, "#         Capsule  = 3\n");
    fprintf(file, "#         OBBox    = 4\n");
    fprintf(file, "#         Wall     = 5\n");
    
    fprintf(file, "CollElRatio %f\n", tlCollisionObject::sCollElRatio);
    fprintf(file, "MinWeight %f\n", tlCollisionObject::sMinWeight);
    fprintf(file, "HierarchyDepth %d\n", tlCollisionObject::sHierarchyDepth);
    
    if (currentSkin)
    {
        int* weightVertices = new int[currentSkeleton->GetNumJoints()];
        SkinVerticesCount(currentSkin, currentSkeleton, weightVertices, tlCollisionObject::sMinWeight);
        
        gCollideJoint = new bool[currentSkeleton->GetNumJoints()];
        memset(gCollideJoint, 0, currentSkeleton->GetNumJoints()*sizeof(bool));
        
        for (int i=0; i<currentSkeleton->GetNumJoints(); i++)
        {
            if (weightVertices[i] > MINCOUNTFORCOLLISIONVOLUMEFIT)
            {
                fprintf(file, "CollideJoint %s 3\n", currentSkeleton->GetJoint(i)->GetName());
                gCollideJoint[i] = true;
            }
        }
        delete[] weightVertices;
        
        fprintf(file, "\n");
        fprintf(file, "\n# info: Add self collision using:\n");
        fprintf(file, "#        SelfCollision joint1 joint2 self1 self2\n");
        fprintf(file, "#           where joint1 and joint2 are joint names to collide\n");
        fprintf(file, "#           where self1 and self2 indicate if the hierarchy under\n");
        fprintf(file, "#           the joints should also be considered, see dof for more info\n");
        fprintf(file, "\n");
    }
    else if (currentCompositeDrawable)
    {
        gCollideJoint = new bool[currentSkeleton->GetNumJoints()];
        memset(gCollideJoint, 0, currentSkeleton->GetNumJoints()*sizeof(bool));
        
        tlCompositeDrawable::Iterator iterator(currentCompositeDrawable);
        iterator.First();
        while(!iterator.IsDone())
        {
            tlCompositeDrawableItem* curItem = iterator.CurrentItem();
            tlCompositeDrawableSkin* curSkinItem = dynamic_cast<tlCompositeDrawableSkin*>(curItem);
            if (curSkinItem)
            {
                tlSkin* skin = curSkinItem->GetSkinPtr();
                int* weightVertices = new int[currentSkeleton->GetNumJoints()];
                
                SkinVerticesCount(skin, currentSkeleton, weightVertices, tlCollisionObject::sMinWeight);
                
                for (int i=0; i<currentSkeleton->GetNumJoints(); i++)
                {
                    if (weightVertices[i] > MINCOUNTFORCOLLISIONVOLUMEFIT)
                    {
                        gCollideJoint[i] = true;
                    }
                }
                delete[] weightVertices;
            }
            tlCompositeDrawableProp* curPropItem = dynamic_cast<tlCompositeDrawableProp*>(curItem);
            if (curPropItem)
            {
                tlPrimGroupMesh* mesh = dynamic_cast<tlPrimGroupMesh*>(curPropItem->GetPropPtr());
                if (mesh)
                {
                    gCollideJoint[curPropItem->GetSkeletonJointID()] = true;
                }
            }
            iterator.Next();
        }
        for (int i=0; i<currentSkeleton->GetNumJoints(); i++)
        {
            if (gCollideJoint[i])
            {
                fprintf(file, "CollideJoint %s 3\n", currentSkeleton->GetJoint(i)->GetName());
            }
        }
        
        fprintf(file, "\n");
        fprintf(file, "\n# info: Add self collision using:\n");
        fprintf(file, "#           SelfCollision joint1 joint2 self1 self2\n");
        fprintf(file, "#           where joint1 and joint2 are joint names to collide\n");
        fprintf(file, "#           where self1 and self2 indicate if the hierarchy under\n");
        fprintf(file, "#           the joints should also be collide, see doc for more info\n");
        fprintf(file, "\n");
        fprintf(file, "DefaultArea 0\n");
        fprintf(file, "Static 0\n");
        fprintf(file, "CanSpin 1\n");
        fprintf(file, "CanRoll 1\n");
        fprintf(file, "CanSlide 1\n");
        fprintf(file, "CanBounce 1\n");
    }
    else if (currentPrimGroupMesh)
    {
        fprintf(file, "CollideGeometry 0\n");
        fprintf(file, "DefaultArea 0\n");
        fprintf(file, "Static 0\n");
        fprintf(file, "CanSpin 1\n");
        fprintf(file, "CanRoll 1\n");
        fprintf(file, "CanSlide 1\n");
        fprintf(file, "CanBounce 1\n");
    }
    
    fprintf(file, "EndCollisionData\n");
}

bool ReadSimulationDataFile(char* filename, tlInventory& inventory)
{
    FILE* file = fopen(filename, "r");
    bool ret = false;
    
    if (file)
    {
        char buf[256];
        
        fscanf(file, "%s\n", buf); // info
        if (strcmp(buf, "SimulationDataFile") != 0)
        {
            printf("Corrupted SimulationDataFile\n");
            return ret;
        }
        
        fscanf(file, "%s", &buf);
        
        if (strcmp(buf, "PrimGroupMesh") == 0)
        {
            fscanf(file, "%s\n", &buf);
            FindObject(buf, inventory);
        }
        else if (strcmp(buf, "Skin") == 0)
        {
            fscanf(file, "%s\n", &buf);
            FindObject(buf, inventory);
        }
        else if (strcmp(buf, "CompositeDrawable") == 0)
        {
            fscanf(file, "%s\n", &buf);
            FindObject(buf, inventory);
        }
        else
        {
            printf("Corrupted SimulationDataFile, don't recognize %s, expects one of the following line:\n", buf);
            printf("geomtype name (where geomtype is PrimGroupMesh, Skin or CompositeDrawable\n");
            return ret;
        }
        
        if(objectfound)
        {
            simData.SetName(buf);
            
            ret = true;
            
            while(!feof(file))
            {
                if (fscanf(file, "%s\n", &buf) == -1)
                    break;
                
                if (strcmp(buf, "CollisionData") == 0)
                {
                    ReadCollisionData(file);
                }
                else if (strcmp(buf, "PhysicsData") == 0)
                {
                    ReadPhysicsData(file);
                }
                else if (strcmp(buf, "FlexibleData") == 0)
                {
                    ReadFlexibleData(file);
                }
                else if (strcmp(buf, "StringData") == 0)
                {
                    fscanf(file, "%s\n", &buf);
                    simData.mStringData.SetName(buf);
                }
                else if (buf[0] == '#') // ???
                {
                    FinishReadLine(file, buf);
                  }
                else
                {
                    printf("command: %s unknown\n", buf);
                    FinishReadLine(file);
                }
            }
        }
        fclose(file);
    }
    else
    {
        printf("file: %s not found\n", filename);
    }
    return ret;
}

void WriteSimulationDataFile(char* fileName, char* objectName, tlInventory& inventory)
{
    FindObject(objectName, inventory);
    
    if(!objectfound)
        return;
    
    FILE* file = fopen(fileName, "w");
    
    if (file)
    {
        fprintf(file, "\nSimulationDataFile\n"); // info
        
        if (currentPrimGroupMesh)
        {
            fprintf(file, "\nPrimGroupMesh %s\n", objectName); 
        }
        else if (currentSkin)
        {
            fprintf(file, "\nSkin %s\n", objectName); 
        }
        else if (currentCompositeDrawable)
        {
            fprintf(file, "\nCompositeDrawable %s\n", objectName); 
        }
        fprintf(file, "\nStringData NoData\n");
        
        WriteCollisionData(file);
        WritePhysicsData(file);
        WriteFlexibleData(file);
    }
    else
    {
        printf("file: %s can't be opened\n", fileName);
    }
}



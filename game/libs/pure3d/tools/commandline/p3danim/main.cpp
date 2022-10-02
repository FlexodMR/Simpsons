/*===========================================================================
    File: main.cpp

    This program modifies transform animations in p3d files

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "toollib.hpp"
#include "Param.hpp"

Parameters* Param;

enum
{
    PC,
    PS2,
    XBOX,
    GC,
    MAX_PLATFORMS
};

struct MemoryStats
{
    int numAnimations;
    int numGroups;
    int numChannels[3];
    int numIntChannels[3];
    int numFloat1Channels[3];
    int numFloat2Channels[3];
    int numVectorChannels[3];
    int numQuaternionChannels[3];
    int numStringChannels[3];
    int numBoolChannels[3];
    int numColourChannels[3];
    int numEventChannels[3];
    int totalMemUsed[MAX_PLATFORMS];
    int channelMemUsed[MAX_PLATFORMS][3];
} stats;

const float PI_2   = 3.14159265358979323846f * 2.0f;
inline float DegToRadian(const float a)
{
    return a * (PI_2 / 360.0f);
}

void ResetStats()
{
    int i;
    stats.numAnimations = 0;
    stats.numGroups = 0;
    for (i = 0; i < 3; i++)
    {
        stats.numChannels[i] = 0;
        stats.numIntChannels[i] = 0;
        stats.numFloat1Channels[i] = 0;
        stats.numFloat2Channels[i] = 0;
        stats.numVectorChannels[i] = 0;
        stats.numQuaternionChannels[i] = 0;
        stats.numStringChannels[i] = 0;
        stats.numBoolChannels[i] = 0;
        stats.numColourChannels[i] = 0;
        stats.numEventChannels[i] = 0;
    }
    for (i = 0; i < MAX_PLATFORMS; i++)
    {
        stats.totalMemUsed[i] = 0;
        stats.channelMemUsed[i][0] = 0;
        stats.channelMemUsed[i][1] = 0;
        stats.channelMemUsed[i][2] = 0;
    }
}

void GatherStats(tlAnimation* anim)
{
    int i, j, k, m;
    stats.numAnimations++;
    stats.numGroups += anim->GetNumAnimationGroups();
    for (i = 0; i < anim->GetNumAnimationGroups(); i++)
    {
        tlAnimationGroup* group = anim->GetAnimationGroup(i);
        stats.numChannels[0] += group->GetNumChannels();
        for (j = 0; j < group->GetNumChannels(); j++)
        {
            tlChannelContainer<int>* intChannels = group->GetIntChannels();
            tlChannelContainer<float>* float1Channels = group->GetFloat1Channels();
            tlChannelContainer<tlPoint2D>* float2Channels = group->GetFloat2Channels();
            tlChannelContainer<tlPoint>* vectorChannels = group->GetVectorChannels();
            tlChannelContainer<tlQuat>* quaternionChannels = group->GetQuaternionChannels();
            tlChannelContainer<tlString>* stringChannels = group->GetStringChannels();
            tlChannelContainer<bool>* boolChannels = group->GetBoolChannels();
            tlChannelContainer<tlColour>* colourChannels = group->GetColourChannels();
            tlChannelContainer<tlEvent>* eventChannels = group->GetEventChannels();

            for (k = 0; k < intChannels->GetNumChannels(); k++)
            {
                tlChannel<int>* channel = intChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numIntChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numIntChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numIntChannels[0]++;
            }

            for (k = 0; k < float1Channels->GetNumChannels(); k++)
            {
                tlChannel<float>* channel = float1Channels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numFloat1Channels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numFloat1Channels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numFloat1Channels[0]++;
            }

            for (k = 0; k < float2Channels->GetNumChannels(); k++)
            {
                tlChannel<tlPoint2D>* channel = float2Channels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numFloat2Channels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numFloat2Channels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numFloat2Channels[0]++;
            }

            for (k = 0; k < vectorChannels->GetNumChannels(); k++)
            {
                tlChannel<tlPoint>* channel = vectorChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numVectorChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numVectorChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numVectorChannels[0]++;
            }

            for (k = 0; k < quaternionChannels->GetNumChannels(); k++)
            {
                tlChannel<tlQuat>* channel = quaternionChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numQuaternionChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numQuaternionChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numQuaternionChannels[0]++;
            }

            for (k = 0; k < stringChannels->GetNumChannels(); k++)
            {
                tlChannel<tlString>* channel = stringChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numStringChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numStringChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numStringChannels[0]++;
            }

            for (k = 0; k < boolChannels->GetNumChannels(); k++)
            {
                tlChannel<bool>* channel = boolChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numBoolChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numBoolChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numBoolChannels[0]++;
            }

            for (k = 0; k < colourChannels->GetNumChannels(); k++)
            {
                tlChannel<tlColour>* channel = colourChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numColourChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numColourChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numColourChannels[0]++;
            }

            for (k = 0; k < eventChannels->GetNumChannels(); k++)
            {
                tlChannel<tlEvent>* channel = eventChannels->GetChannelByIndex(k);
                if (channel->IsStatic())
                {
                    stats.numChannels[2]++;
                    stats.numEventChannels[2]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][2] += mem;
                    }
                }
                else
                {
                    stats.numChannels[1]++;
                    stats.numEventChannels[1]++;
                    for (m = 0; m < MAX_PLATFORMS; m++)
                    {
                        float mem = channel->CalculateMemoryImageSize(m);
                        stats.channelMemUsed[m][0] += mem;
                        stats.channelMemUsed[m][1] += mem;
                    }
                }
                stats.numEventChannels[0]++;
            }
        }
    }
    for (i = 0; i < MAX_PLATFORMS; i++)
    {
        // add the size of tAnimation
        stats.totalMemUsed[i] += ANIM_SIZES[i];
        // add the array of tAnimationGroup
        stats.totalMemUsed[i] += (anim->GetNumAnimationGroups()*4);
        // add the actual size of all the animation groups and channels
        stats.totalMemUsed[i] += anim->CalculateMemoryImageSize(i);

/*
        //NAMES
        stats.totalMemUsed[i] += ((strlen(anim->GetName())+1) * anim->GetNumAnimationGroups());

        stats.totalMemUsed[i] += (strlen(anim->GetName())+1);
*/
    }
}

void PrintStats()
{
    printf("Total Number Of Animations:\n");
    printf("\t%d\n",stats.numAnimations);
    printf("Total Number Of Animation Groups:\n");
    printf("\t%d\n",stats.numGroups);
    printf("Number Of Channels:\n");
    printf("\tTotal : %d\n",stats.numChannels[0]);
    printf("\tDynamic : %d\n",stats.numChannels[1]);
    printf("\tStatic : %d\n",stats.numChannels[2]);
    printf("\tNumber Of Int Channels:\n");
    printf("\t\tTotal : %d\n",stats.numIntChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numIntChannels[1]);
    printf("\t\tStatic : %d\n",stats.numIntChannels[2]);
    printf("\tNumber Of Float1 Channels:\n");
    printf("\t\tTotal : %d\n",stats.numFloat1Channels[0]);
    printf("\t\tDynamic : %d\n",stats.numFloat1Channels[1]);
    printf("\t\tStatic : %d\n",stats.numFloat1Channels[2]);
    printf("\tNumber Of Float2 Channels:\n");
    printf("\t\tTotal : %d\n",stats.numFloat2Channels[0]);
    printf("\t\tDynamic : %d\n",stats.numFloat2Channels[1]);
    printf("\t\tStatic : %d\n",stats.numFloat2Channels[2]);
    printf("\tNumber Of Vector Channels:\n");
    printf("\t\tTotal : %d\n",stats.numVectorChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numVectorChannels[1]);
    printf("\t\tStatic : %d\n",stats.numVectorChannels[2]);
    printf("\tNumber Of Quaternion Channels:\n");
    printf("\t\tTotal : %d\n",stats.numQuaternionChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numQuaternionChannels[1]);
    printf("\t\tStatic : %d\n",stats.numQuaternionChannels[2]);
    printf("\tNumber Of String Channels:\n");
    printf("\t\tTotal : %d\n",stats.numStringChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numStringChannels[1]);
    printf("\t\tStatic : %d\n",stats.numStringChannels[2]);
    printf("\tNumber Of Bool Channels:\n");
    printf("\t\tTotal : %d\n",stats.numBoolChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numBoolChannels[1]);
    printf("\t\tStatic : %d\n",stats.numBoolChannels[2]);
    printf("\tNumber Of Colour Channels:\n");
    printf("\t\tTotal : %d\n",stats.numColourChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numColourChannels[1]);
    printf("\t\tStatic : %d\n",stats.numColourChannels[2]);
    printf("\tNumber Of Event Channels:\n");
    printf("\t\tTotal : %d\n",stats.numEventChannels[0]);
    printf("\t\tDynamic : %d\n",stats.numEventChannels[1]);
    printf("\t\tStatic : %d\n",stats.numEventChannels[2]);
    printf("Total Memory Used:\n");
    printf("\tPC : %d\n",stats.totalMemUsed[PC]);
    printf("\tPS2 : %d\n",stats.totalMemUsed[PS2]);
    printf("\tXBOX : %d\n",stats.totalMemUsed[XBOX]);
    printf("\tGC : %d\n",stats.totalMemUsed[GC]);
    printf("Approximate Channel Memory Used:\n");
    printf("\tPC : \n");
    printf("\t\tDynamic : %d\n",stats.channelMemUsed[PC][1]);
    printf("\t\tStatic : %d\n",stats.channelMemUsed[PC][2]);
    printf("\tPS2 : \n");
    printf("\t\tDynamic : %d\n",stats.channelMemUsed[PS2][1]);
    printf("\t\tStatic : %d\n",stats.channelMemUsed[PS2][2]);
    printf("\tXBOX : \n");
    printf("\t\tDynamic : %d\n",stats.channelMemUsed[XBOX][1]);
    printf("\t\tStatic : %d\n",stats.channelMemUsed[XBOX][2]);
    printf("\tGC : \n");
    printf("\t\tDynamic : %d\n",stats.channelMemUsed[GC][1]);
    printf("\t\tStatic : %d\n",stats.channelMemUsed[GC][2]);
}

void ProcessAnimation(tlAnimation* anim)
{
    if (!anim)
        return;

    if (anim->GetAnimationType() == Pure3DAnimationTypes::POSE_TRANSFORM_PTRN)
    {
        tlPoseAnim* poseAnim = dynamic_cast<tlPoseAnim*>(anim);
        assert(poseAnim);
        if (poseAnim)
        {                   
            // now, based on the command-line parameters
            // we do various processing on the higher level object
            for(int i=0; i < poseAnim->GetNumAnimationGroups(); i++)
            {
                tlJointAnimGroup* jnt = (tlJointAnimGroup*)poseAnim->GetAnimationGroup(i);

                if(glob(&Param->KeepJointPats,jnt->GetName()))
                {
                    if(Param->Verbosity>1)
                    {
                        printf("Keeping joint %s\n",jnt->GetName());
                    }
                }
                else
                {                  
                    if(Param->RemoveRot)
                    {
                        jnt->DeleteRotationChannel();
                    }
                    else
                    {
                        if(glob(&Param->StaticRotationPats,jnt->GetName()))
                        {
                            tlQuaternionChannel* rotation = jnt->GetRotationChannel();
                            if (rotation)
                            {
                                rotation->SetNumKeys(1);
                            }
                        }
                    }

                    if(Param->RemoveTrans)
                    {
                        jnt->DeleteTranslationChannel();
                    }
                    else 
                    {
                        if(glob(&Param->StaticTranslationPats,jnt->GetName()))
                        {
                            tlVectorChannel* translation = jnt->GetTranslationChannel();
                            if (translation)
                            {
                                translation->SetNumKeys(1);
                            }
                        }

                        if(glob(&Param->DeleteXTrans,jnt->GetName()))
                        {
                            jnt->DeleteXTrans();
                        }

                        if(glob(&Param->DeleteYTrans,jnt->GetName()))
                        {
                            jnt->DeleteYTrans();
                        }

                        if(glob(&Param->DeleteZTrans,jnt->GetName()))
                        {
                            jnt->DeleteZTrans();
                        }
                    }
                }
            }
        }
    }

    if(Param->Optimize)
    {
        for(int i=0; i < anim->GetNumAnimationGroups(); i++)
        {
            tlAnimationGroup* group = anim->GetAnimationGroup(i);
            group->OptimizeFloat1Channels(Param->Float1Tolerance);
            group->OptimizeFloat2Channels(Param->Float2Tolerance);
            group->OptimizeVectorChannels(Param->VectorTolerance);
            group->OptimizeQuaternionChannels(DegToRadian(Param->QuaternionTolerance));
            group->OptimizeStringChannels();
            group->OptimizeBoolChannels();
            group->OptimizeColourChannels(Param->ColourTolerance);
        }
    }

    if(Param->Scale != 1.0f)
    {
        anim->ScaleKeyTimes(Param->Scale);
    }

    if(Param->Shift)
    {
        anim->ShiftKeys(Param->Shift);
    }

    if (Param->Start > 0)
    {
        short start, stop;
        anim->GetFrameRange(start,stop);
        if (Param->End > Param->Start)
        {
            anim->SetFrameRange(Param->Start, Param->End, false);
        }
        else
        {
            anim->SetFrameRange(Param->Start, stop, false);
        }
    }
    else if (Param->End > 0)
    {
        short start, stop;
        anim->GetFrameRange(start,stop);
        anim->SetFrameRange(start, Param->End, false);
    }

    if(Param->LoopKeys)
    {
        anim->LoopKeys();
    }

    if(Param->CompressRot)
    {
        for(int i=0; i < anim->GetNumAnimationGroups(); i++)
        {
            tlAnimationGroup* group = anim->GetAnimationGroup(i);
            tlChannelContainer<tlQuat>* quats = group->GetQuaternionChannels();
            for(int j = 0; j < quats->GetNumChannels(); j++)
            {
                tlQuaternionChannel* channel = dynamic_cast<tlQuaternionChannel*>(quats->GetChannelByIndex(j));
                if (channel)
                {
                    channel->SetFormat(Pure3DAnimationChannels::Quaternion::ONE_DOT_FIFTEEN);
                }
            }
        }
    }

    if(Param->Stats)
    {
        GatherStats(anim);
    }
}

int main(int argc, char* argv[])
{
    // register default chunk heandler
    tlDataChunk::RegisterDefaultChunks();

    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if(Param->Stats)
        {
            ResetStats();
        }

        if(Param->Verbosity>0)
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }

        if(Param->Verbosity>1)
        {
            printf("Loading...\n");
        }

        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        if(Param->Verbosity>1)
        {
            printf("tlDataChunk()...\n");
        }
        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

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

        if(Param->Verbosity>1)
        {
            printf("Processing chunks...\n");
        }

        tlStringTable deletedAnimations;

        for( int chunk = 0; chunk < inchunk->SubChunkCount(); chunk ++)
        {
            tlDataChunk* sub = inchunk->GetSubChunk(chunk);

            tlAnimationLoader animLoader;
            tlFrameControllerLoader controllerLoader;
            tlAnimation* anim = dynamic_cast<tlAnimation*>(animLoader.Load(sub));
            tlFrameController* controller = dynamic_cast<tlFrameController*>(controllerLoader.Load(sub));
            
            if (anim)
            {
                if((Param->IgnoreAnimTypes.Count() == 0) || (!glob(&Param->IgnoreAnimTypes,anim->GetAnimationType().AsChar())))
                {
                    if((Param->AnimPatterns.Count() == 0) || glob(&Param->AnimPatterns,anim->GetName()))
                    {
                        if(Param->Verbosity>2)
                        {
                            printf("Processing anim %s ...\n", anim->GetName());
                        }

                        if (Param->AppendAnimTypePrefix)
                        {
                            anim->AppendAnimTypePrefix();
                        }

                        if (Param->AppendAnimTypeSuffix)
                        {
                            anim->AppendAnimTypeSuffix();
                        }
                            
                        ProcessAnimation(anim);
                        
                        if (Param->ForceStatic)
                        {
                            anim->MakeStatic();
                        }

                        if (Param->RemoveStatic)
                        {
                            for (int i = 0; i < anim->GetNumAnimationGroups(); i++)
                            {
                                anim->GetAnimationGroup(i)->RemoveStaticChannels();
                            }
                            anim->RemoveStaticGroups();
                            if (anim->GetNumAnimationGroups()==0)
                            {
                                char* name = (char*)anim->GetName();
                                deletedAnimations.AppendUnique(name);
                                delete anim;
                                anim = NULL;
                            }
                        }
                    }
                }
                if (anim)
                {
                    outchunk->AppendSubChunk(anim->Chunk());
                    delete anim;
                }
            }
            else if (controller)
            {
                if((Param->AnimPatterns.Count() == 0) || glob(&Param->AnimPatterns,controller->AnimationName()))
                {
                    if (Param->AppendAnimTypePrefix)
                    {
                        controller->AppendAnimTypePrefix();
                    }
                    if (Param->AppendAnimTypeSuffix)
                    {
                        controller->AppendAnimTypeSuffix();
                    }
                }

                const char* name = controller->AnimationName();
                if (!deletedAnimations.Find(name))
                {
                    outchunk->AppendSubChunk(controller->Chunk());
                }
                delete controller;
            }            
            else if (sub->ID()==Pure3D::ParticleSystem::SYSTEM_FACTORY)
            {
                tlParticleSystemFactory partSysFactory(sub);

                if((Param->IgnoreAnimTypes.Count() == 0) || (!glob(&Param->IgnoreAnimTypes,"EFX")))
                {
                    if((Param->AnimPatterns.Count() == 0) || glob(&Param->AnimPatterns,partSysFactory.GetName()))
                    {
                        for (int i = 0; i < partSysFactory.GetNumEmitters(); i++)
                        {
                            ProcessAnimation(partSysFactory.GetEmitterFactoryPtr(i)->GetEmitterAnimation());
                            ProcessAnimation(partSysFactory.GetEmitterFactoryPtr(i)->GetGeneratorAnimation());
                        }
                    }
                }                
                outchunk->AppendSubChunk(partSysFactory.Chunk());
            }
            else
            {                
                // this is not a chunk that we care about 
                // so simply copy it to the output wrapper chunk
                // the optional parameter to AppendSubChunk
                // indicates that we have merely copied a pointer
                // so the destructor of outchunk should not
                // destroy this sub-chunk as that duty will be 
                // taken care of by the destructor of inchunk
                outchunk->AppendSubChunk(sub,FALSE);   
            }
        }
        
        outchunk->SortSubChunks();

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }
        
        // create the new output file
        char buf[P3DMAXNAME];
        bool writeFile = true;

        if(Param->Stats)
        {
            printf("***********File: %s**************\n",Param->Files[ i ]);
            PrintStats();
            writeFile = false;
        }

        if(Param->OutputName)
        {
            sprintf(buf,Param->OutputName);
            writeFile = true;
        } 
        else 
        {
            strcpy(buf,Param->Files[i]);
        }

        if (writeFile)
        {
            tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);
            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", 
                         buf);
                exit(-1);
            }

            if(Param->Verbosity>1)
            {
                printf("Writing ...\n");
            }

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);
        }

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
    
    } // end of main for loop


    // Cleanup

    delete Param;
    return 0;
}


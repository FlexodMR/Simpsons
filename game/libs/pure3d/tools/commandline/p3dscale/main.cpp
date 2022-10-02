/*===========================================================================

    File:: main.cpp

    This program scales geometries and animations in p3d files.

    Copyright (c) 1997 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <float.h>
#include <math.h>
#include "toollib.hpp"
#include "ChunkManip.hpp"
#include "Param.hpp"

static const float floatEpsilon = (float) pow(10, -FLT_DIG);

#define TEST_FLT_EQUAL(a, b) (fabs((a) - (b)) <= floatEpsilon)

Parameters* Param;

int
main(int argc, char* argv[])
{
    // Process parameters
    Param = new Parameters(argc,argv);

    // load chunk handlers for default chunks
    tlDataChunk::RegisterDefaultChunks();

    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }

        // open each file
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        tlDataChunk* inchunk = new tlDataChunk(&input);

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

        // build an output chunk
        tlDataChunk* outchunk = new tlDataChunk;
        if(Param->WriteHistory){
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        // process each chunk in the input file
        for(int ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
            switch(sub->ID())
            {
                case Pure3D::Animation::AnimationData::ANIMATION:
                {
                    tlAnimationChunk* animCh = dynamic_cast<tlAnimationChunk*>(sub);
                    switch(animCh->GetAnimationType())
                    {
                        case Pure3DAnimationTypes::POSE_TRANSFORM_PTRN:
                        {
                            tlPoseAnim pose(sub);
                            pose.Scale(Param->xScale,Param->yScale,Param->zScale);
                            outchunk->AppendSubChunk(pose.Chunk());
                        }
                        case Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN:
                        {
                            tlScenegraphTransformAnim scene(sub);
                            scene.Scale(Param->xScale,Param->yScale,Param->zScale);
                            outchunk->AppendSubChunk(scene.Chunk());
                        }
                        case Pure3DAnimationTypes::CAMERA_CAM:
                        {
                            tlCameraAnim camera(sub);
                            camera.Scale(Param->xScale,Param->yScale,Param->zScale);
                            outchunk->AppendSubChunk(camera.Chunk());
                        }
                        default:
                        {
                            outchunk->AppendSubChunk(sub,FALSE);
                            break;
                        }
                    }
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh mesh(sub);
                    mesh.Scale(Param->xScale,Param->yScale,Param->zScale);
                    outchunk->AppendSubChunk(mesh.Chunk());
                    break;
                }
                case Pure3D::Mesh::SKIN:
                {
                    tlSkin skin(sub);
                    skin.Scale(Param->xScale,Param->yScale,Param->zScale);
                    outchunk->AppendSubChunk(skin.Chunk());
                    break;
                }
                case P3D_SKELETON:
                {
                    tlSkeleton skeleton(sub);
                    skeleton.Scale(Param->xScale,Param->yScale,Param->zScale);
                    outchunk->AppendSubChunk(skeleton.Chunk16());
                    break;
                }
                default:
                    outchunk->AppendSubChunk(sub,FALSE);   // FALSE means don't delete this, it's just a pointer
                    // to the data in filechunk, which will delete it
                    break;
            }
        }

        // close the input file
        input.Close();

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } else {
            strcpy(buf,Param->Files[i]);
        }

        // open the output file
        tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);
        if(!output.IsOpen()) {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // Write the new file
        outchunk->Write(&output);
        delete inchunk;
        delete outchunk;
    }

    // Cleanup
    delete Param;
    return 0;
}


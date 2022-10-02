/*===========================================================================
    File: main.cpp 

    This tool subdivides all the triangles in a mesh


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
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

        int ch;
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh mesh(sub);
                    tlTriMesh trimesh(mesh);
                    tlTable<tlTriangle*> faces = trimesh.GetFaces();
                    tlTriMesh newtrimesh;
                    newtrimesh.Resize(faces.Count() * 4);
                    newtrimesh.SetName(mesh.GetName());
                    int polycount = 0;

                    for(int t = 0; t < faces.Count(); t++)
                    {
                        tlTriangle newtri[4];
                        if(faces[t]->Area() > Param->Area)
                        {
                            int count;
                            if(Param->MaxEdge == 0.0f)
                            {
                                faces[t]->Subdivide(newtri);
                                count = 4;
                            } else {
                                bool edges[3];
                                for(int e = 0 ; e < 3; e++)
                                {
                                    edges[e] = faces[t]->EdgeLength(e) > Param->MaxEdge;
                                }
                                count = faces[t]->SplitEdges(newtri, edges);
                            }
                            for(int i = 0; i < count; i++)
                            {
                                tlTriangle* tri = new tlTriangle(newtri[i]);
                                newtrimesh.AddFace(tri);
                            }
                            polycount += count;
                        } else {
                            newtrimesh.AddFace(faces[t]);
                            polycount++;
                        }
                    }

                    if(Param->Verbosity > 1)
                    {
                        printf("Mesh %s went from %d polys to %d\n", mesh.GetName(), faces.Count(), polycount);
                    }

                    tlPrimGroupMesh newmesh(newtrimesh);
                    outchunk->AppendSubChunk(newmesh.Chunk());
                    break;
                }
                
                default:

                    // this is not a chunk that we care about
                    // so simply copy it to the output wrapper chunk
                    // the optional parameter to AppendSubChunk
                    // indicates that we have merely copied a pointer
                    // so the destructor of outchunk should not
                    // destroy this sub-chunk as that duty will be
                    // taken care of by the destructor of inchunk
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
            }
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } else {
            strcpy(buf,Param->Files[i]);
        }

        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

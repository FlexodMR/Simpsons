/*===========================================================================
    File: main.cpp 

    This tool creates shadow chunks from a p3d skin.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "tlShadowSkinChunk.hpp"
#include "tlPrimGroupChunk.hpp"
#include "tlSkinChunk.hpp"
#include "tlBBoxChunk.hpp"
#include "tlBSphereChunk.hpp"
#include "tlMeshChunk.hpp"

#include "Param.hpp"

Parameters* Param;

//returns true if edge ea, eb is in triangle t.
bool bEdgeMatch(unsigned short ea, unsigned short eb, tlTopologyStruct& t)
{
    return (eb == t.v0 && ea == t.v1) ||
           (eb == t.v1 && ea == t.v2) ||
           (eb == t.v2 && ea == t.v0);
}


void ResolveMatch(unsigned short* neighbour, unsigned canidate, unsigned poly, unsigned* origPrimGroups)
{
    if( *neighbour != (UWORD)-1)
    {
        if(origPrimGroups)
        {
            bool currentIsSame = origPrimGroups[poly] == origPrimGroups[*neighbour];
            bool newIsSame = origPrimGroups[poly] == origPrimGroups[canidate];

            if(currentIsSame && !newIsSame)
            {
                if( Param->Verbosity > 0 )
                    printf("-------WARNING------- triangle %d has extra neighbour %d, correcting based on primgroup\n", poly, canidate);
            } else if (!currentIsSame && newIsSame)
            {
                *neighbour = canidate;

                if( Param->Verbosity > 0 )
                    printf("-------WARNING------- triangle %d has extra neighbour %d, correcting based on primgroup\n", poly, canidate);
            }
            else
            {
                printf("-------ERROR------- triangle %d has extra neighbour %d\n", poly, canidate);
            }
        }
        else
        {
            printf("-------ERROR------- triangle %d has extra neighbour %d\n", poly, canidate);
        }
    }
    else 
    {
        *neighbour  = canidate;
    }
}

//Updates the neighbour information in an array of tlTopologyStruct
void FindNeighbours(unsigned short numTri, tlTopologyStruct* pTopology, unsigned* origPrimGroups)
{
    assert(pTopology);
    unsigned int i,j;

    //Compute edge information
    for(i=0;i<numTri;i++)
    {
        tlTopologyStruct &ti = pTopology[i];

        //Make sure we don't get degenerate triangles
        if(ti.v0==ti.v1 || ti.v1==ti.v2 || ti.v2==ti.v0)
        {
            printf("-------ERROR------- : Found degenerate triangle!! #%d\n",i);
        }

        //Find neighbour
        for(j=0;j<numTri;j++)    //I think this should be j<m_NumTri Nope!
        {
            if(i!=j)
            {
                tlTopologyStruct &tj = pTopology[j];

                if(bEdgeMatch(ti.v0, ti.v1, tj))
                {
                    ResolveMatch(&ti.n0, j, i, origPrimGroups);
                }

                if(bEdgeMatch(ti.v1, ti.v2, tj))
                {
                    ResolveMatch(&ti.n1, j, i, origPrimGroups);
                }

                if(bEdgeMatch(ti.v2, ti.v0, tj))
                {
                    ResolveMatch(&ti.n2, j, i, origPrimGroups);
                }
            }
        }
    }

    int badEdges = 0;
    for(i=0;i<numTri;i++)
    {
        tlTopologyStruct &ti = pTopology[i];
        if(ti.n0 == (UWORD)-1) badEdges++;
        if(ti.n1 == (UWORD)-1) badEdges++;
        if(ti.n2 == (UWORD)-1) badEdges++;
    }

    if( Param->Verbosity > 0 )
        printf("Mesh optimization: found %d bad edges\n", badEdges);
}


//SkinToShadowSkin takes the first primgroup in a skin, strips
//off unneeded components, and outputs a shadowskin
tlShadowSkinChunk* SkinToShadowSkin(tlSkin* inSkin)
{
    if( Param->Verbosity > 0 )
        printf("Processing skin : '%s'\n", inSkin->GetName());

    tlSkin* skin = inSkin->Rebuild(true);

    //Count the total number of triangles
    int numTriangles = 0;
    int i;
    for(i = 0; i < skin->NumPrimGroups(); i++)
    {
        numTriangles += skin->GetPrimGroup(i)->GetTriangleCount();
    };

    int numSourceVertices = 0;
    for(i = 0; i < skin->NumPrimGroups(); i++)
    {
        numSourceVertices+= skin->GetPrimGroup(i)->NumVertices();
    };

    //Source mesh
    tlPoint* pSourceVertices = new tlPoint[numSourceVertices];
    tlPoint*  pSourceWeights = new tlPoint[numSourceVertices * 4];
    unsigned* pSourceMatrixIndices = new unsigned[numSourceVertices];

    memset(pSourceMatrixIndices, 0, sizeof(unsigned)*numSourceVertices);
    memset(pSourceWeights, 0, sizeof(tlPoint)*numSourceVertices);
    unsigned* origPrimGroup = new unsigned[numTriangles];

    int countTris = 0;
    for(i = 0; i < skin->NumPrimGroups(); i++)
    {
        for(int j = 0; j < skin->GetPrimGroup(i)->GetTriangleCount(); j++)
        {
            origPrimGroup[countTris++] = i;
        }
    };
    
    int countVerts = 0;
    for(i = 0; i < skin->NumPrimGroups(); i++)
    {
        for(int j = 0; j < skin->GetPrimGroup(i)->NumVertices(); j++)
        {
            tlSkinVertex* v= (tlSkinVertex*)skin->GetPrimGroup(i)->GetVertex(j);

            pSourceVertices[countVerts] = v->GetCoord();
            
            unsigned char* index = (unsigned char*)&pSourceMatrixIndices[countVerts]; 
            float* weights = (float*)&pSourceWeights[countVerts];

            for(int i = 0; i < v->NumJointWeights(); i++ )
            {
                index[3-i] = (unsigned char)v->GetJointWeight(i).jointindex;
                if(i != 3) *weights++ = v->GetJointWeight(i).weight; 
            }
            countVerts++;
        }
    };
    
    //Dest mesh
    tlPoint*       pDestVertices = new tlPoint[numSourceVertices];
    tlPoint*       pDestWeights = new tlPoint[numSourceVertices];
    unsigned long* pDestMatrixIndices  = new unsigned long[numSourceVertices];
    unsigned int   numDestVertices = 0;

    unsigned* remap = new unsigned[numSourceVertices];
    //Optimize the mesh!
    {
        //working data
        bool* pIgnore = new bool[numSourceVertices];
        for(i=0;i<numSourceVertices;i++)
            pIgnore[i] = false;

        //Remove duplicate vertices
        int total = 0;
        for(i=0;i<numSourceVertices;i++)
        {
            if(!pIgnore[i])
            {
                for(int j = i + 1; j < numSourceVertices; j++)
                {
                    if((pSourceVertices[i] == pSourceVertices[j]) &&
                        (pSourceWeights[i] == pSourceWeights[j]) &&
                        (pSourceMatrixIndices[i] == pSourceMatrixIndices[j]))
                    {
                        remap[j] = numDestVertices;
                        pIgnore[j] = true;
                    }
                }
                //Copy the vertex to the done list
                pDestVertices[numDestVertices] = pSourceVertices[i];
                pDestWeights[numDestVertices] = pSourceWeights[i];
                pDestMatrixIndices[numDestVertices] = pSourceMatrixIndices[i];
                remap[i] = numDestVertices;
                numDestVertices++;
            }
        }

        if( Param->Verbosity > 0 )
            printf("Mesh optimization: reduced %d to %d vertices\n", numSourceVertices, numDestVertices);
    }

    //Warn about (and fixup) any vertex that is bound to more than 3 bones
    for(i=0;i<numDestVertices;i++)
    {
        float weight = pDestWeights[i][0] + pDestWeights[i][1] + pDestWeights[i][2];
        if(weight > 1.00001f || weight < 0.999999f)
        {
            if( Param->Verbosity > 0 )
                printf("Force vertex %d to 3 bones. Weight is: %8.8f\n", i, 1.0f - weight);
            
            pDestWeights[i][0] /= weight;
            pDestWeights[i][1] /= weight;
            pDestWeights[i][2] /= weight;
        }
    }

    //The destination chunks
    tlShadowSkinChunk *pShadow = new tlShadowSkinChunk;
    tlTopologyChunk* pShadowTopologyChunk = new tlTopologyChunk;                //NumTriangles
    tlPositionListChunk* pShadowPositionListChunk = new tlPositionListChunk;    //NumVertices
    tlWeightListChunk* pShadowWeightListChunk = new tlWeightListChunk;            //NumVertices. Directly mapped to the skeleton
    tlMatrixListChunk* pShadowMatrixListChunk = new tlMatrixListChunk;            //NumVertices

    //Update the optimized and resolved vertices
    pShadowPositionListChunk->SetPositions(pDestVertices, numDestVertices);
    pShadowPositionListChunk->SetNumPositions(numDestVertices);
    pShadowWeightListChunk->SetWeights(pDestWeights, numDestVertices);
    pShadowWeightListChunk->SetNumWeights(numDestVertices);
    pShadowMatrixListChunk->SetMatrices(pDestMatrixIndices, numDestVertices);
    pShadowMatrixListChunk->SetNumMatrices(numDestVertices);

    tlTopologyStruct* pTopology = new tlTopologyStruct[numTriangles];
    //Setup the initial topology data
    countTris = 0;
    for(i = 0; i < skin->NumPrimGroups(); i++)
    {
        for(int j = 0; j < skin->GetPrimGroup(i)->GetTriangleCount(); j++)
        {
            unsigned int a,b,c;
            //Setup the countTrisndex
            skin->GetPrimGroup(i)->GetTriangle(countTris, &a, &b, &c);
            assert(a<65536);assert(b<65536);assert(c<65536);
            pTopology[countTris].v0 = (UWORD)remap[a];
            pTopology[countTris].v1 = (UWORD)remap[b];
            pTopology[countTris].v2 = (UWORD)remap[c];
            pTopology[countTris].n0 = pTopology[countTris].n1 = pTopology[countTris].n2 = -1;
            countTris++;
        }
    }

    //Compute the topology data
    if(!Param->Explode)
        FindNeighbours(numTriangles, pTopology, origPrimGroup);

    //Setup the topology chunk
    pShadowTopologyChunk->SetNumTopology(numTriangles);
    pShadowTopologyChunk->SetTopology(pTopology, numTriangles);

    //Stuff the chunks we have into the shadow chunk
    pShadow->SetName(skin->GetName());
    pShadow->SetSkeletonName(skin->GetSkeletonName());
    pShadow->SetNumTriangles(numTriangles);
    pShadow->SetNumVertices(numDestVertices);
    pShadow->AppendSubChunk(pShadowPositionListChunk, true);
    pShadow->AppendSubChunk(pShadowWeightListChunk, true);
    pShadow->AppendSubChunk(pShadowTopologyChunk, true);
    pShadow->AppendSubChunk(pShadowMatrixListChunk, true);

    tlBBoxChunk* box = new tlBBoxChunk;
    box->SetBox(skin->Box());

    tlBSphereChunk* sphere = new tlBSphereChunk;
    sphere->SetSphere(skin->Sphere());

    pShadow->AppendSubChunk(box, false);
    pShadow->AppendSubChunk(sphere, false);
    
    return pShadow;
}


//MeshToShadowMesh takes the first primgroup in a skin, strips
//off unneeded components, and outputs a shadowmesh
tlShadowMeshChunk* MeshToShadowMesh(tlPrimGroupMesh* pSource)
{
    if( Param->Verbosity > 0 )
        printf("Processing mesh : '%s'\n", pSource->GetName());

    tlPrimGroupMesh* mesh = pSource->Rebuild(true);


    //Count the total number of triangles
    int numTriangles = 0;
    int i;
    for(i = 0; i < mesh->NumPrimGroups(); i++)
    {
        numTriangles += mesh->GetPrimGroup(i)->GetTriangleCount();
    };

    int numSourceVertices = 0;
    for(i = 0; i < mesh->NumPrimGroups(); i++)
    {
        numSourceVertices+= mesh->GetPrimGroup(i)->NumVertices();
    };

    //Source mesh
    tlPoint* pSourceVertices = new tlPoint[numSourceVertices];
    unsigned* origPrimGroup = new unsigned[numTriangles];

    int countTris = 0;
    for(i = 0; i < mesh->NumPrimGroups(); i++)
    {
        for(int j = 0; j < mesh->GetPrimGroup(i)->GetTriangleCount(); j++)
        {
            origPrimGroup[countTris++] = i;
        }
    };
    
    int countVerts = 0;
    for(i = 0; i < mesh->NumPrimGroups(); i++)
    {
        for(int j = 0; j < mesh->GetPrimGroup(i)->NumVertices(); j++)
        {
            tlVertex* v= mesh->GetPrimGroup(i)->GetVertex(j);

            pSourceVertices[countVerts] = v->GetCoord();
            countVerts++;
        }
    };
    
    //Dest mesh
    tlPoint*       pDestVertices = new tlPoint[numSourceVertices];
    unsigned int   numDestVertices = 0;

    //Optimize the mesh!
    unsigned* remap = new unsigned[numSourceVertices];
    {
        //working data
        bool* pIgnore = new bool[numSourceVertices];
        for(i=0;i<numSourceVertices;i++)
            pIgnore[i] = false;

        //Remove duplicate vertices
        int total = 0;
        for(i=0;i<numSourceVertices;i++)
        {
            if(!pIgnore[i])
            {
                for(int j = i + 1; j < numSourceVertices; j++)
                {
                    if(pSourceVertices[i] == pSourceVertices[j])
                    {
                        remap[j] = numDestVertices;
                        pIgnore[j] = true;
                    }
                }
                //Copy the vertex to the done list
                pDestVertices[numDestVertices] = pSourceVertices[i];
                remap[i] = numDestVertices;
                numDestVertices++;
            }
        }

        if( Param->Verbosity > 0 )
            printf("Mesh optimization: reduced %d to %d vertices\n", numSourceVertices, numDestVertices);
    }

    tlShadowMeshChunk *pShadow = new tlShadowMeshChunk;
    
    //The destination chunks
    tlTopologyChunk* pShadowTopologyChunk = new tlTopologyChunk;                //NumTriangles
    tlPositionListChunk* pShadowPositionListChunk = new tlPositionListChunk;    //NumVertices

    //Update the optimized and resolved vertices
    pShadowPositionListChunk->SetPositions(pDestVertices, numDestVertices);
    pShadowPositionListChunk->SetNumPositions(numDestVertices);

    tlTopologyStruct* pTopology = new tlTopologyStruct[numTriangles];
    //Setup the initial topology data
    countTris = 0;
    for(i = 0; i < mesh->NumPrimGroups(); i++)
    {
        for(int j = 0; j < mesh->GetPrimGroup(i)->GetTriangleCount(); j++)
        {
            unsigned int a,b,c;
            //Setup the countTrisndex
            mesh->GetPrimGroup(i)->GetTriangle(countTris, &a, &b, &c);
            assert(a<65536);assert(b<65536);assert(c<65536);
            pTopology[countTris].v0 = (UWORD)remap[a];
            pTopology[countTris].v1 = (UWORD)remap[b];
            pTopology[countTris].v2 = (UWORD)remap[c];
            pTopology[countTris].n0 = pTopology[countTris].n1 = pTopology[countTris].n2 = -1;
            countTris++;
        }
    }


    //Compute the topology data
    if(!Param->Explode)
        FindNeighbours(numTriangles, pTopology, origPrimGroup);

    //Setup the topology chunk
    pShadowTopologyChunk->SetNumTopology(numTriangles);
    pShadowTopologyChunk->SetTopology(pTopology, numTriangles);

    //Stuff the chunks we have into the shadow chunk
    pShadow->SetNumTriangles(numTriangles);
    pShadow->SetNumVertices(numDestVertices);
    pShadow->SetName(mesh->GetName());
    pShadow->AppendSubChunk(pShadowPositionListChunk, true);
    pShadow->AppendSubChunk(pShadowTopologyChunk, true);

    tlBBoxChunk* box = new tlBBoxChunk;
    box->SetBox(mesh->Box());

    tlBSphereChunk* sphere = new tlBSphereChunk;
    sphere->SetSphere(mesh->Sphere());

    pShadow->AppendSubChunk(box, false);
    pShadow->AppendSubChunk(sphere, false);

    return pShadow;
}


int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    if((Param->ShadowMesh.Count() == 0) && (Param->ShadowSkin.Count() == 0) && (Param->CompDrawToSkin.Count() == 0))
    {
        char star[] = "*";
        char* s = star;
        Param->ShadowMesh.Append(s);
        Param->ShadowSkin.Append(s);
    }

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
        tlDataChunk* outchunk = new tlDataChunk();
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

        tlInventory meshes;

        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case Pure3D::Mesh::SKIN:
                {
                    if(glob(&Param->ShadowSkin,sub->GetName()))
                    {
                        tlSkinChunk* pSkin = dynamic_cast<tlSkinChunk*>(sub);
                        assert(pSkin);
                        tlSkin* skin = new tlSkin(pSkin );
                        tlShadowSkinChunk* pShadowSkin = SkinToShadowSkin(skin);
                        assert(pShadowSkin);
                        outchunk->AppendSubChunk(pShadowSkin , true );
                    }

                    if(Param->CompDrawToSkin.Count() != 0)
                        meshes.Store(new tlSkin(dynamic_cast<tlSkinChunk*>(sub)));

                break;
                }
                case Pure3D::Mesh::MESH:
                {
                    if(glob(&Param->ShadowMesh, sub->GetName()))
                    {
                        tlMeshChunk* pMesh = dynamic_cast<tlMeshChunk*>(sub);
                        assert(pMesh);
                        tlPrimGroupMesh* mesh= new tlPrimGroupMesh(pMesh); 
                        tlShadowMeshChunk* pShadowMesh = MeshToShadowMesh(mesh);
                        assert(pShadowMesh);
                        outchunk->AppendSubChunk(pShadowMesh);
                    }

                    if(Param->CompDrawToSkin.Count() != 0)
                        meshes.Store(new tlPrimGroupMesh(dynamic_cast<tlMeshChunk*>(sub)));

                    break;
                }
                case P3D_COMPOSITE_DRAWABLE :
                {
                    if(glob(&Param->CompDrawToSkin, sub->GetName()))
                    {
                        tlCompositeDrawable* compdraw = new tlCompositeDrawable(sub);
                        tlTriMesh* triMesh = new tlTriMesh;

                        compdraw->ResolveReferences(&meshes);
                        
                        tlTable<tlCompositeDrawableSkin*> subSkins = compdraw->GetSubSkins();
                        tlTable<tlCompositeDrawableProp*> subProps = compdraw->GetSubProps();

                        for(int i = 0; i < subSkins.Count(); i++)
                        {
                            triMesh->AppendMesh(*subSkins[i]->GetSkinPtr());
                        }
/*
                        for(int j = 0; j < subProps.Count(); j++)
                        {
                            tlPrimGroupMesh* mesh = dynamic_cast<tlPrimGroupMesh*>(subProps[j]->GetPropPtr());
                            tlTriMesh t(*mesh);
                            
                            for(int i = 0; i < t.GetFaces().Count(); i++)
                            {
                                 tlTriangle* face = new tlTriangle(t.GetFace(i));
                                 for(int v = 0; v < 3; v++)
                                 {
                                     tlSkinVertex* sv = new tlSkinVertex(*face->GetVertex(v));
                                     sv->SetJointIndex(0, subProps[j]->GetSkeletonJointID());
                                     face->SetVertex(v, sv);
                                 }
//                                 face->SetVertexFormat(face->GetVertexFormat() | PDDI_VERTEX_INDICES);
                                 triMesh->AddFace(face);
                            }
                            triMesh->AppendMesh(*mesh);
                        }
*/
                        tlSkin* skin = new tlSkin(*triMesh, compdraw->GetSkeletonName());
                        skin->SetName(compdraw->GetName());
                        tlShadowSkinChunk* skinChunk = SkinToShadowSkin(skin);
                        assert(skinChunk);
                        outchunk->AppendSubChunk(skinChunk);
                        delete triMesh;
                        delete skin;
                    }
                    break;
                }
                default:
                    break;
            }

            // this is not a chunk that we care about
            // so simply copy it to the output wrapper chunk
            // the optional parameter to AppendSubChunk
            // indicates that we have merely copied a pointer
            // so the destructor of outchunk should not
            // destroy this sub-chunk as that duty will be
            // taken care of by the destructor of inchunk
            outchunk->AppendSubChunk(sub,FALSE);
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
        tlFile output(new tlFileByteStream(buf,omWRITE),tlFile::CHUNK32);

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


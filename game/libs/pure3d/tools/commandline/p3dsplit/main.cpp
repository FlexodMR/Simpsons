/*===========================================================================
   File: main.cpp 

   This tool splits up geometry


   Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

//#include <tlCompoundMesh.hpp>
//#include <tlPrimGroupMesh.hpp>
#include <tlPlane.hpp> 
//#include <tlColour.hpp>
#include <radmath/geometry.hpp>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"


#define NUMBASEMESHES 50000
#define NUMBASESKELETONS 256
#define NUMDEINSTANCEDMESHES 50000
#define NUMNEWMESHES 50000


Parameters* Param;

// World cutting factors
int xDiv = 0;
//int yDiv = 0;
int zDiv = 0;

int splitType;


//tlColour operator-(const tlColour& a, const tlColour& b)
//{
//   return tlColour(a.red-b.red,a.green-b.green,a.blue-b.blue,a.alpha-b.alpha);
//}


//tlMatrix getWorldMatrix(tlSkeleton* skeleton, int joint)
//{
   // Recursively traverse from the root down, mutiplying the upper node matrix 
   // by the current node matrix.
//   if(joint!=0)
//      return getWorldMatrix(skeleton, skeleton->GetJoint(joint)->GetParent())*skeleton->GetJoint(joint)->GetRestPose();
//   else
//      return skeleton->GetJoint(joint)->GetRestPose();
//}



void SplitPoly(tlPlane& plane, tlTriangle& poly, tlTriMesh* front, tlTriMesh* back)
{
   // Count of vertices on each side of the plane
   int      vercount[3] = {0,0,0};

   // If every face need to be split up then a single side
   // could possible contain 6 vertices
   tlPoint  verPos[3][6];
   tlUV     verUV0[3][6];
   tlUV     verUV1[3][6];
   tlColour verColour[3][6];
   tlPoint  verNormal[3][6];


   unsigned long vertexFormat = poly.GetVertexFormat();

   // Check to see where the first vertex lies accroding to the plane.
   rmt::Plane::Side side = plane.CheckSide(poly.GetVertex(0)->GetCoord());
   if( side == rmt::Plane::Side::Front )
   {
	   side = rmt::Plane::Side::Back;
   }
   else if( side == rmt::Plane::Side::Back )
   {
	   side = rmt::Plane::Side::Front;
   }

   // For every 3 vertices in a triangle check to see if the face between
   // two faces needs to split up into sperate vertices.
   for(int i = 0; i < 3; i++)
   {
      int i2 = (i + 1) % 3;
	  rmt::Plane::Side newside = plane.CheckSide(poly.GetVertex(i2)->GetCoord());
	  if( newside == rmt::Plane::Side::Front )
	  {
		  newside = rmt::Plane::Side::Back;
	  }
	  else if( newside == rmt::Plane::Side::Back )
	  {
		  newside = rmt::Plane::Side::Front;
	  }

      // If the two checked vertices lie on the same side of the plane
      // just copy over the vertices data.
      if(side == newside || splitType == 1)
      {
         verPos[side][vercount[side]]  = poly.GetVertex(i)->GetCoord();
         verUV0[side][vercount[side]]  = poly.GetVertex(i)->GetUV(0);
         verUV1[side][vercount[side]]  = poly.GetVertex(i)->GetUV(1);
         verColour[side][vercount[side]] = poly.GetVertex(i)->GetColour();
         verNormal[side][vercount[side]] = poly.GetVertex(i)->GetNormal();
         vercount[side]++;
      }

      // If the two vertices don't lie on the same side of the plane then
      // create two new vertices.
      else
      {
         // Distance from point0 to the intersection of the plane with the face between the two points
		  float t;
		  bool found;
          found = plane.Intersect(poly.GetVertex(i)->GetCoord(), poly.GetVertex(i2)->GetCoord(), &t);

         // Calculate the coordinate of intersection.
         tlPoint mid = poly.GetVertex(i)->GetCoord() + ((poly.GetVertex(i2)->GetCoord() - poly.GetVertex(i)->GetCoord()) * t);
         
         // Calculate the uv value at intersection.
         tlUV miduv0 = poly.GetVertex(i)->GetUV(0) + ((poly.GetVertex(i2)->GetUV(0) - poly.GetVertex(i)->GetUV(0)) * t);
         tlUV miduv1 = poly.GetVertex(i)->GetUV(1) + ((poly.GetVertex(i2)->GetUV(1) - poly.GetVertex(i)->GetUV(1)) * t);
         
         // Calculate the color value at intersection.
         tlColour midcolour = poly.GetVertex(i)->GetColour() + ((poly.GetVertex(i2)->GetColour() - poly.GetVertex(i)->GetColour()) * t);

         // Calculate the normal at intersection.
         tlPoint normal = poly.GetVertex(i)->GetNormal() + ((poly.GetVertex(i2)->GetNormal() - poly.GetVertex(i)->GetNormal()) * t);

         // Normalize the vector.
         if ( normal.Length() )
         {
             normal = normal/normal.Length();
         }

         // Add the original vertex
         verPos[side][vercount[side]]  = poly.GetVertex(i)->GetCoord();
         verUV0[side][vercount[side]]  = poly.GetVertex(i)->GetUV(0);
         verUV1[side][vercount[side]]  = poly.GetVertex(i)->GetUV(1);
         verColour[side][vercount[side]]  = poly.GetVertex(i)->GetColour();
         verNormal[side][vercount[side]]  = poly.GetVertex(i)->GetNormal();
         vercount[side]++;

         // Add the two new vertices
         verPos[side][vercount[side]] = mid;
         verUV0[side][vercount[side]] = miduv0;
         verUV1[side][vercount[side]] = miduv1;
         verColour[side][vercount[side]] = midcolour;
         verNormal[side][vercount[side]] = normal;
         vercount[side]++;

         side = newside;

         verPos[side][vercount[side]] = mid;
         verUV0[side][vercount[side]] = miduv0;
         verUV1[side][vercount[side]] = miduv1;
         verColour[side][vercount[side]] = midcolour;
         verNormal[side][vercount[side]] = normal;
         vercount[side]++;
      }
   }

   if(vercount[ rmt::Plane::Side::Front ] >= 3)
   {
      // If there is only a single tri to be created
      if(vercount[ rmt::Plane::Side::Front ] == 3)
      {
         tlTriangle* face = new tlTriangle;

         face->SetVertexFormat(vertexFormat);

         // Copy over the material properties
         face->SetMaterial((char*)poly.GetMaterial());
         
         for(int i = 0; i < vercount[ rmt::Plane::Side::Front ]; i++)
         {
            tlVertex* vertex = new tlVertex;

            vertex->SetCoord(verPos[ rmt::Plane::Side::Front ][i]);
            vertex->SetColour(verColour[ rmt::Plane::Side::Front ][i]);
            vertex->SetUV(0,verUV0[ rmt::Plane::Side::Front ][i]);
            vertex->SetUV(1,verUV1[ rmt::Plane::Side::Front ][i]);
            vertex->SetNormal(verNormal[ rmt::Plane::Side::Front ][i]);

            face->SetVertex(i, vertex);
         }

         front->AddFace(face);
      }
      else
      {
         for(int i = 2; i < vercount[ rmt::Plane::Side::Front ]; i++)
         {
            tlTriangle* face = new tlTriangle;

            face->SetVertexFormat(vertexFormat);

            // Copy over the material properties
            face->SetMaterial((char*)poly.GetMaterial());

            tlVertex* vertex = new tlVertex;

            vertex->SetCoord(verPos[ rmt::Plane::Side::Front ][0]);
            vertex->SetColour(verColour[ rmt::Plane::Side::Front ][0]);
            vertex->SetUV(0, verUV0[ rmt::Plane::Side::Front ][0]);
            vertex->SetUV(1, verUV1[ rmt::Plane::Side::Front ][0]);
            vertex->SetNormal(verNormal[ rmt::Plane::Side::Front ][0]);

            face->SetVertex(0, vertex);

            for(int j = 1; j < 3; j++)
            {
               vertex = new tlVertex;

               vertex->SetCoord(verPos[ rmt::Plane::Side::Front ][j + (i - 2)]);
               vertex->SetColour(verColour[ rmt::Plane::Side::Front ][j + (i - 2)]);
               vertex->SetUV(0, verUV0[ rmt::Plane::Side::Front ][j + (i - 2)]);
               vertex->SetUV(1, verUV1[ rmt::Plane::Side::Front ][j + (i - 2)]);
               vertex->SetNormal(verNormal[ rmt::Plane::Side::Front ][j + (i - 2)]);

               face->SetVertex(j, vertex);
            }

            front->AddFace(face);
         }
      }
   }

   if(vercount[ rmt::Plane::Side::Back ] >= 3)
   {
      // If there is only a single tri to be created
      if(vercount[ rmt::Plane::Side::Back ] == 3)
      {
         tlTriangle* face = new tlTriangle;

         face->SetVertexFormat(vertexFormat);

         // Copy over the material properties
         face->SetMaterial((char*)poly.GetMaterial());
         
         for(int i = 0; i < vercount[ rmt::Plane::Side::Back ]; i++)
         {
            tlVertex* vertex = new tlVertex;

            vertex->SetCoord(verPos[ rmt::Plane::Side::Back ][i]);
            vertex->SetColour(verColour[ rmt::Plane::Side::Back ][i]);
            vertex->SetUV(0,verUV0[ rmt::Plane::Side::Back ][i]);
            vertex->SetUV(1,verUV1[ rmt::Plane::Side::Back ][i]);
            vertex->SetNormal(verNormal[ rmt::Plane::Side::Back ][i]);

            face->SetVertex(i, vertex);
         }
         back->AddFace(face);
      }
      else
      {
         for(int i = 2; i < vercount[ rmt::Plane::Side::Back ]; i++)
         {
            tlTriangle* face = new tlTriangle;

            face->SetVertexFormat(vertexFormat);

            // Copy over the material properties
            face->SetMaterial((char*)poly.GetMaterial());

            tlVertex* vertex = new tlVertex;

            vertex->SetCoord(verPos[ rmt::Plane::Side::Back ][0]);
            vertex->SetColour(verColour[ rmt::Plane::Side::Back ][0]);
            vertex->SetUV(0, verUV0[ rmt::Plane::Side::Back ][0]);
            vertex->SetUV(1, verUV1[ rmt::Plane::Side::Back ][0]);
            vertex->SetNormal(verNormal[ rmt::Plane::Side::Back ][0]);

            face->SetVertex(0, vertex);

            for(int j = 1; j < 3; j++)
            {
               vertex = new tlVertex;

               vertex->SetCoord(verPos[ rmt::Plane::Side::Back ][j + (i - 2)]);
               vertex->SetColour(verColour[ rmt::Plane::Side::Back ][j + (i - 2)]);
               vertex->SetUV(0, verUV0[ rmt::Plane::Side::Back ][j + (i - 2)]);
               vertex->SetUV(1, verUV1[ rmt::Plane::Side::Back ][j + (i - 2)]);
               vertex->SetNormal(verNormal[ rmt::Plane::Side::Back ][j + (i - 2)]);


               face->SetVertex(j, vertex);
            }

            back->AddFace(face);
         }
      }
   }

}


enum polyClassifation { FRONT, BACK, IN, SPAN };

polyClassifation  Classify(tlTriangle* poly, tlPlane& plane)
{
   int fpoints = 0;
   int bpoints = 0;

   // Determine how many of the points lie in front of or behind the plane.
   for(int i = 0; i < 3; i++)
   {
      switch(plane.CheckSide(poly->GetVertex(i)->GetCoord()))
      {
         case rmt::Plane::Side::Back:
           fpoints++;
           break;
         case rmt::Plane::Side::Front:
           bpoints++;
           break;
      }
   }

   // All the points are in front of the plane.
   if(fpoints && !bpoints)
      return FRONT;

   // All the points are behind the plane.
   if(!fpoints && bpoints)
      return BACK;

   // The points lie on the plane 
   if(!fpoints && !bpoints)
      return IN;

   // The plane spans the polygon 
   return SPAN;
}


void SplitMesh(tlPlane& plane, tlTriMesh& in, tlTriMesh* front, tlTriMesh* back)
{

   // Get the number of faces in the mesh
   int numFaces = in.GetFaces().Count();


   // Face table pointer
   tlTable<tlTriangle*> faces = in.GetFaces();

   // For every face check to see if the face
   // lies behind, in front of, or spans the plane
   for(int i = 0; i < numFaces; i++)
   {
      tlTriangle* poly = faces[i];
      switch(Classify(poly, plane))
      {
         case FRONT:
           front->AddFace(poly);
           break;
         case IN:
         case BACK:
           back->AddFace(poly);
           break;

         // Split the face if it spans the plane
         case SPAN:
           SplitPoly(plane, *poly, front, back);
           break;
      }
   }
}


tlBox findBoundingBox(tlTriMesh* mesh)
{
   tlBox box;
   tlPoint point;
   
   int numFaces = mesh->GetFaces().Count();


   tlTable<tlTriangle*> faces = mesh->GetFaces();


   box.low = box.high = faces[0]->GetVertex(0)->GetCoord();

   for(int i=0; i<numFaces; i++)
   {
      for(int j=0; j<3; j++)
      {
         point = faces[i]->GetVertex(j)->GetCoord();

         if(point.x > box.high.x)
            box.high.x = point.x;

         if(point.x < box.low.x)
            box.low.x = point.x;

         if(point.y > box.high.y)
            box.high.y = point.y;

         if(point.y < box.low.y)
            box.low.y = point.y;

         if(point.z > box.high.z)
            box.high.z = point.z;

         if(point.z < box.low.z)
            box.low.z = point.z;
      }
   }

   return box;
}


void processMeshes(int nDeinstancedMeshes, tlPrimGroupMesh** deinstancedMeshes, int* nNewMeshes, tlPrimGroupMesh** newMeshes, char* geoName)
{

   tlTriMesh* origWorld = new tlTriMesh;

   origWorld->SetName(geoName);


   int i, j, k;
   int count = 0;

   for(i = 0; i < nDeinstancedMeshes; i++)
   {
      for( j = 0; j < deinstancedMeshes[i]->NumPrimGroups(); j++)
      {
         const tlPrimGroup* primGroup = deinstancedMeshes[i]->GetPrimGroup(j);

         count += primGroup->GetIndexCount()/3;
      }
   }

   origWorld->Resize(count);

 
   tlTriangle* faces = new tlTriangle[count];
   int curFace = 0;


   // Create a single trimesh from all the deinstanced primgroup meshes.
   for(i = 0; i < nDeinstancedMeshes; i++)
   {
      for(j = 0; j < deinstancedMeshes[i]->NumPrimGroups(); j++)
      {
         const tlPrimGroup* primGroup = deinstancedMeshes[i]->GetPrimGroup(j);

         for(k = 0; k < primGroup->GetIndexCount()/3; k++)
         {

            tlVertex* verts[3];
            unsigned int v1, v2, v3;

            primGroup->GetTriangle(k,&v1, &v2, &v3);

            verts[0] = (tlVertex*) primGroup->GetVertex(v1);
            verts[1] = (tlVertex*) primGroup->GetVertex(v2);
            verts[2] = (tlVertex*) primGroup->GetVertex(v3);

            faces[curFace].SetVertex(0, verts[0]);
            faces[curFace].SetVertex(1, verts[1]);
            faces[curFace].SetVertex(2, verts[2]);
            faces[curFace].SetMaterial((char*)primGroup->GetShader());
            faces[curFace].SetVertexFormat(primGroup->GetVertexType());

            origWorld->AddFace(&faces[curFace]);
            curFace++;
         }
      }
   }

  
   // Get the new bounding box of the new world
   tlBox box = findBoundingBox(origWorld);

   box.low.x = (rmt::Floor(box.low.x/(double)xDiv)) * (double)xDiv;
   box.low.z = (rmt::Floor(box.low.z/(double)zDiv)) * (double)zDiv;
   
   double zMeshDist =  fabs(box.high.z - box.low.z);
   double xMeshDist =  fabs(box.high.x - box.low.x);

   int numXDiv, numZDiv;

   numXDiv = (int)ceil((xMeshDist/(double) xDiv));
   numZDiv = (int)ceil((zMeshDist/(double) zDiv));

   if(numXDiv > 200 || numZDiv > 200)
   {
       printf("Too many divisions\n");
   }



   tlTriMesh* zTmpStart = origWorld;
   tlTriMesh* tmpFront = new tlTriMesh;
   tlTriMesh* tmpBack;


   float zDist = (float) fabs(box.high.z - box.low.z);
   float zInc = (float)zDiv;
   float zD = box.low.z + zInc;


   // For the number of z axis divisions
   for(int zSeg = 0; zSeg < numZDiv; zSeg++)
   {

        tmpBack = new tlTriMesh;
        //tmpBack->Resize(200);


        tlPlane plane( rmt::Vector( 0, 0, 1 ), zD);

        SplitMesh(plane,*zTmpStart,tmpFront,tmpBack);
        //delete zTmpStart;


        tlTriMesh* xTmpStart = tmpBack;
        tlTriMesh* tmpFront2;
        tlTriMesh* tmpBack2;


        tmpFront2 = new tlTriMesh;
        //tmpFront2->Resize(200);
 
        float xDist = (float) fabs(box.high.x - box.low.x);
        float xInc = (float)xDiv;
        float xD = box.low.x + xInc;

        // For the number of x axis divisions
        for(int xSeg = 0; xSeg < numXDiv; xSeg++)
        {
            tmpBack2 = new tlTriMesh;
            //tmpBack2->Resize(200);



            tlPlane plane( rmt::Vector( 1, 0, 0 ), xD);

            SplitMesh(plane,*xTmpStart,tmpFront2,tmpBack2);
            //delete xTmpStart;

            char s[32];
            sprintf(s,"%s_%.3d",geoName,*nNewMeshes);
            tmpBack2->SetName(s);

            // Make sure there's actually some geometry with this mesh
            if(tmpBack2->GetFaces().Count())
            {
                newMeshes[*nNewMeshes] = new tlPrimGroupMesh(*tmpBack2);
               *nNewMeshes+=1;
            }

            // Delete the mesh I just created a primgroup for.
            //delete tmpBack2;

            xTmpStart = tmpFront2;
            tmpFront2 = new tlTriMesh;
            //tmpFront2->Resize(200);


            xD += xInc;
       }


      // Finished with this buffer.
      //delete tmpFront2;
      
      zTmpStart = tmpFront;
      tmpFront = new tlTriMesh;
      //tmpFront->Resize(200);


      
      zD += zInc;
   }

   //delete tmpFront;
}





int main(int argc, char* argv[])
{
   // the constructor of this class processes command-line
   // parameters
   Param = new Parameters(argc,argv);

   tlDataChunk::RegisterDefaultChunks();


   int nBaseMeshes = 0;
   tlPrimGroupMesh* baseMeshes[NUMBASEMESHES];

   int nBaseSkeletons = 0;
   tlSkeleton* baseSkeletons[NUMBASESKELETONS];

   int nDeinstancedMeshes = 0;
   tlPrimGroupMesh* deinstancedMeshes[NUMDEINSTANCEDMESHES];

   int nNewMeshes = 0;
   tlPrimGroupMesh* newMeshes[NUMNEWMESHES];


   splitType = Param->splitType;


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

      // Get the user's input.
      xDiv = Param->xDiv;
      //yDiv = Param->yDiv;
      zDiv = Param->zDiv;


      // Make sure all the num of subdivisions are greater than zero.
      //assert(xDiv && yDiv && zDiv);
      assert(xDiv && zDiv);


      char geoName[256];


      float sanityCheck = 10000.0f;
      tlBox box;


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
            // Create an instance of the mesh so that we can look it up
         case Pure3D::Mesh::MESH :
              assert(nBaseMeshes+1<NUMBASEMESHES);
              baseMeshes[nBaseMeshes] = new tlPrimGroupMesh(sub);


              baseMeshes[nBaseMeshes]->UpdateBounds();
              box = baseMeshes[nBaseMeshes]->Box();

              // See if this object is valid
              
              if( box.low.x < (-1*sanityCheck) || box.low.x > sanityCheck ||
                  box.low.z < (-1*sanityCheck) || box.low.z > sanityCheck ||
                  box.high.x < (-1*sanityCheck) || box.high.x > sanityCheck ||
                  box.high.z < (-1*sanityCheck) || box.high.z > sanityCheck)
              {
                  printf("------> TROUBLE (Position to big)%s\n", baseMeshes[nBaseMeshes]->GetName());
              }

              nBaseMeshes++;

               break;

            // Create an instance of the skeleton so that we can look it up
//            case P3D_SKELETON :
//               assert(nBaseSkeletons+1<NUMBASESKELETONS);
//               baseSkeletons[nBaseSkeletons++] = new tlSkeleton(sub);
//               break;

            // Make a copy of every mesh within the compoundmesh struct.
            // Each of these meshes is transformed to world space coordinates.
//            case P3D_COMPOUND_MESH:
//               {
//                  tlCompoundMesh* cMesh = new tlCompoundMesh(sub);
                  
//                  tlSkeleton* skeleton = NULL;

                  // Find the skeleton associated with this mesh
//                  for(int k=0; k < nBaseSkeletons; k++)
//                  {                              
//                     if(strcmp(cMesh->GetName(), baseSkeletons[k]->GetName()) == 0)
//                        skeleton = baseSkeletons[k];
//                  }

                  // Make sure we have a skeleton for this mesh.
//                  assert(skeleton != NULL);


                  // Transform the vertices of each node to world space
//                  for(int i = 0; i < cMesh->GetNumNodes(); i++)
//                  {
//                     for(int j = 0; j < nBaseMeshes; j++)
//                     {
//                        if(strcmp(cMesh->GetNode(i)->GetDrawableName(), baseMeshes[j]->GetName()) == 0)
//                        {
//                           tlPrimGroupMesh* mesh = new tlPrimGroupMesh(baseMeshes[j]->Chunk16());

                           
                           // Get the joint index within the skeleton for the specific compound mesh
//                           int joint = cMesh->GetNode(i)->GetSkeletonJointIndex();

//                           tlMatrix worldMatrix = getWorldMatrix(skeleton, joint);

                           // Transform each of the vertices
//                           for(int k=0; k<mesh->NumVertices(); k++)
//                           {
//                              tlPoint newPoint = mesh->GetVertex(k)->GetCoord()*worldMatrix;
//                              mesh->GetVertex(k)->SetCoord(newPoint);
//                           }

//                           assert(nDeinstancedMeshes+1<NUMDEINSTANCEDMESHES);

                           // Store the transformed mesh
//                           deinstancedMeshes[nDeinstancedMeshes++] = mesh;

//                           break;
//                        }
//                     }
//                  }

//                  delete cMesh;
//               }
//               break;
            
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

      // Determine which meshes need to be split.
//      processMeshes(nDeinstancedMeshes, deinstancedMeshes, &nNewMeshes, newMeshes, geoName);



      if(nBaseMeshes>0)
      {
        if(Param->geoName)
            strcpy(geoName, Param->geoName);
        else
            strcpy(geoName, baseMeshes[0]->GetName());


        processMeshes(nBaseMeshes, baseMeshes, &nNewMeshes, newMeshes, geoName);
      }

               
      for(int k=0; k<nNewMeshes; k++)
      {
         outchunk->AppendSubChunk(newMeshes[k]->Chunk());
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

   int j;

   // Clean up all the base meshes.
   for(j=0; j<nBaseMeshes; j++)
      delete baseMeshes[j];

   // Clean up all the base skeletons.
   for(j=0; j<nBaseSkeletons; j++)
      delete baseSkeletons[j];

   // Clean up all the deinstanced meshes.
   for(j=0; j<nDeinstancedMeshes; j++)
      delete deinstancedMeshes[j];

   // Clean up all the new meshes.
   for(j=0; j<nNewMeshes; j++)
      delete newMeshes[j];
   
   delete Param;
   return 0;
}

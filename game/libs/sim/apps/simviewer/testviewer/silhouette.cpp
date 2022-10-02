// Toon rendering
// 21-Feb-2000 Neall

#include "silhouette.hpp"

#include <pure3d.hpp>
#include <radmath.hpp>
#include <file.hpp>
#include <chunk.hpp>

#include <chunks.h>

#include <assert.h>
#include <stdio.h>

using namespace RadicalMathLibrary;

tSilhouetteGeometry::tSilhouetteGeometry(tGeometry* g) : 
      geo(g), nEdge(0), edge(NULL), silVertices(NULL)
{
   geo->AddRef();
   material = p3d::device->NewMaterial(p3d::pddi);

   // build a scaled version of the vertex list
   // push the vertices out along the surface normals
   P3DASSERT(geo->GetVertexList()->HasNormals());
   silVertices = new tVertexList(*geo->GetVertexList());
   silVertices->AddRef();
   for(unsigned i=0; i < silVertices->GetNumVertices(); i++)
   {
      Vector n = silVertices->Normal(i);
      n.Scale(0.35f);
      silVertices->Position(i).Add(n);
   }

   // Toonify the materials.
   for(int j=0; j < geo->GetNumMaterial(); j++)
   {
      tMaterial* material = geo->GetMaterial(j);
      material->SetEmissive(material->GetDiffuse());
      material->SetDiffuse(tColour(0,0,0));
      material->EnableLighting(true);
   }
}

tSilhouetteGeometry::~tSilhouetteGeometry()
{
   geo->Release();
   material->Release();
   if(silVertices)
   {
      silVertices->Release();
   }
   delete[] edge;
}

void tSilhouetteGeometry::Display()
{
   assert(geo);

   p3d::pddi->PushState(PDDI_STATE_LIGHTING);
   p3d::pddi->EnableLight(0, false);
   p3d::pddi->SetAmbientLight(tColour(0,0,0));
   Technique1();
   p3d::pddi->PopState(PDDI_STATE_LIGHTING);
}

//-------------------------------------------------------------------
// technique 1
// Scale object along surface normals, to make a bigger copy.  Draw
// the backfaces of the resized object with all materials set to the
// edge colour, draw the front faces of the original object.
//-------------------------------------------------------------------
void tSilhouetteGeometry::Technique1()
{
   // if the object has more than 64 materials, make this bigger:
   pddiColour emissive[64];

   // Draw the silhouette pass.
   // Cache away the emissive colours, and set it to black.  The 
   // diffuse is set to translucent black for a bit of anti-aliasing.
   int i;
   for(i=0; i < geo->GetNumMaterial(); i++)
   {
      emissive[i] = geo->GetMaterial(i)->GetEmissive();
      geo->GetMaterial(i)->SetDiffuse(tColour(0,0,0,0xcf));
      geo->GetMaterial(i)->SetEmissive(tColour(0,0,0));
      geo->GetMaterial(i)->SetBlendMode(PDDI_BLEND_ALPHA);
   }

   tVertexList* small = geo->GetVertexList();   
   small->AddRef();
   p3d::pddi->SetCullMode(PDDI_CULL_INVERTED);
   geo->SetVertexList(silVertices);

   geo->Display();

   // Restore the materials, and draw the colour pass.
   for(i=0; i < geo->GetNumMaterial(); i++)
   {
      geo->GetMaterial(i)->SetEmissive(emissive[i]);
      geo->GetMaterial(i)->SetDiffuse(tColour(0,0,0));
      geo->GetMaterial(i)->SetBlendMode(PDDI_BLEND_NONE);
   }

   p3d::pddi->SetCullMode(PDDI_CULL_NORMAL);
   geo->SetVertexList(small);
   small->Release();
   geo->Display();
   //geo->DisplayNormals();
}

void tSilhouetteGeometry::FindSilhouetteEdges()
{
   assert(geo);
   Vector* normal = geo->GetFaceNormals();
   if(!normal)
   {
      return;
   }

   // get eye vector into object space
   Matrix vmi = *p3d::stack->GetMatrix();   
   vmi.InvertOrtho();
   Vector view = vmi.Row(3);

   for(int i=0; i < nEdge; i++)
   {
      bool faceVisisble1 = (view.DotProduct(normal[edge[i].nIdx[0]]) > edge[i].d[0]);
      bool faceVisisble2 = (view.DotProduct(normal[edge[i].nIdx[1]]) > edge[i].d[1]);
      edge[i].silhouette = (faceVisisble1 ^ faceVisisble2) || (edge[i].nIdx[1] == -1);
      //edge[i].silhouette = true;
   }
}

void tSilhouetteGeometry::RenderSilhouetteEdges()
{
   pddiVertex_C line[2];

   tVertexList* vl = geo->GetVertexList();
   for(int i=0; i < nEdge; i++)
   {
      if(edge[i].silhouette)
      {
         line[0].v = *(pddiVector*)&vl->Position(edge[i].vIdx[0]);
         line[1].v = *(pddiVector*)&vl->Position(edge[i].vIdx[1]);
         line[0].c.Set(0,0,0);
         line[1].c.Set(0,0,0);
         p3d::pddi->DrawPrims(material, PDDI_PRIM_LINES, PDDI_VERTEX_C, line, 2);
      }
   }
}

//-------------------------------------------------------------------
// loading code for the edge information
//-------------------------------------------------------------------
unsigned tSilhouetteGeometryLoader::GetChunkID()
{
   return P3D_EDGE_LIST;
}

tLoadStatus tSilhouetteGeometryLoader::Load(tReadChunk& chunk, tEntityStore* store, void**)
{
   assert(chunk.GetID() == P3D_EDGE_LIST);

   tFile* f = chunk.GetFile();
 
   char name[128];
   f->GetPString(name);
   
   tGeometry* geo = p3d::find<tGeometry>(store, name);
   if(!geo)
   {
      chunk.Skip();
      return LOAD_ERROR;
   }

   tSilhouetteGeometry* silGeo = new tSilhouetteGeometry(geo);
   silGeo->SetName("toon");

   int nEdge = f->GetLong();
   silGeo->nEdge = nEdge;
   silGeo->edge = new tSilhouetteGeometry::Edge[nEdge];    

   tVertexList* vl = geo->GetVertexList();
   Vector* normal = geo->GetFaceNormals();
   assert(normal);

   for(int i=0; i < nEdge; i++)
   {
      silGeo->edge[i].silhouette = false;
      silGeo->edge[i].vIdx[0] = f->GetLong();
      silGeo->edge[i].vIdx[1] = f->GetLong();
      silGeo->edge[i].nIdx[0] = f->GetLong();
      silGeo->edge[i].nIdx[1] = f->GetLong();
      // compute 'd' value for polygon plane equation
      silGeo->edge[i].d[0] = vl->Position(silGeo->edge[i].vIdx[0]).DotProduct(normal[silGeo->edge[i].nIdx[0]]);
      silGeo->edge[i].d[1] = vl->Position(silGeo->edge[i].vIdx[0]).DotProduct(normal[silGeo->edge[i].nIdx[1]]);      
   }

   store->Store(silGeo);
   return LOAD_OK;
}

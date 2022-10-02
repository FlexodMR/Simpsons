// Toon rendering
// 21-Feb-2000 Neall

#ifndef _SILHOUETTE_HPP
#define _SILHOUETTE_HPP

#include <p3d/drawable.hpp>
#include <p3d/loadmanager.hpp>

class tGeometry;
class tVertexList;
class pddiMaterial;

class tSilhouetteGeometry : public tDrawable
{
public:
   tSilhouetteGeometry(tGeometry*);
   virtual ~tSilhouetteGeometry();

   virtual void Display();

protected:
   tGeometry* geo;
   pddiMaterial* material;

   struct Edge
   {
      bool silhouette;
      int vIdx[2]; // index into geometry vertex list
      int nIdx[2]; // index into geometry face normal list
      float d[2];
   };

   int nEdge;
   Edge* edge;

   tVertexList* silVertices;

   void FindSilhouetteEdges();
   void RenderSilhouetteEdges();
   void Technique1();
   friend class tSilhouetteGeometryLoader;
};

class tSilhouetteGeometryLoader : public tChunkHandler
{
public:
   virtual tLoadStatus Load(tReadChunk& chunk, tEntityStore* store, void** data = NULL);
   virtual unsigned GetChunkID();
};

#endif
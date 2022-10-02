/*
 * choreoviewer/chengine/octtree.hpp
 */

#ifndef CHOREOVIEWER_CHENGINE_OCTTREE_HPP
#define CHOREOVIEWER_CHENGINE_OCTTREE_HPP


#include <radmath/radmath.hpp>
#include <p3d/p3dtypes.hpp>


class tEntity;
class tDrawable;
class tGeometry;

namespace Scenegraph
{
    class Node;
    class Scenegraph;
}

class CollOctnode;


class CollOctree
{
public:

    CollOctree(const rmt::Vector& mid = rmt::Vector(0.1f, -0.1f, 0.1f),
        float maxExtent = 1024.0f,
        float minExtent = 1.0f,
        int leafThreshold = 5);
    virtual ~CollOctree();

    bool AddTriangle(const rmt::Vector& p0,
                     const rmt::Vector& p1,
                     const rmt::Vector& p2,
                     int flag);
    static bool IsValidGeometry(tGeometry* geo);
    static bool IsValidDrawable(tDrawable* drawable);
    static bool IsValidEntity(tEntity* entity);
    bool AddMesh(const rmt::Matrix& m, tGeometry* geo, int flag);
    bool AddMesh(tGeometry* geo, int flag);
    bool AddSceneGraphNode(Scenegraph::Node* node, int flag);
    bool AddSceneGraph(Scenegraph::Scenegraph* sceneGraph, int flag);
    bool AddDrawable(tDrawable* drawable, int flag);
    bool AddEntity(tEntity* entity, int flag);

    bool RemoveTriangles(int flag);
    bool Clear();

    typedef void (*DrawLineFunction)(const rmt::Vector&, const rmt::Vector&, tColour, void*);

    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        rmt::Vector& point,
        rmt::Vector& normal,
        int* nodeCount = 0,
        int* triCount = 0,
        bool drawDebug = false,
        DrawLineFunction drawLineFunc = 0,
        void* drawLineFuncContext = 0) const;

    // with max ray distance specified
    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        float rayMaxDist,
        rmt::Vector& point,
        rmt::Vector& normal,
        int* nodeCount = 0,
        int* triCount = 0,
        bool drawDebug = false,
        DrawLineFunction drawLineFunc = 0,
        void* drawLineFuncContext = 0) const;

private:

    float m_MinExtent;
    int m_LeafThreshold;
    CollOctnode* m_Root;
};


#endif // CHOREOVIEWER_CHENGINE_OCTTREE_HPP

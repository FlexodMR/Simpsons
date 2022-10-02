/*===========================================================================
    File:: tlHeightField.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLHEIGHTFIELD_HPP
#define _TLHEIGHTFIELD_HPP


#include "tlTable.hpp"
#include "tlBox.hpp"


class tlPoint;
class tlPrimGroupMesh;
class tlFile;


class tlHeightFieldListener
{
public:

    virtual ~tlHeightFieldListener();

    virtual void SetMeshName(const char* mname) = 0;
    virtual void SetProgress(int z, int total_z) = 0;
};


class tlHeightField
{
public:

    tlHeightField();
    tlHeightField(int w, int l);
    tlHeightField(int w, int l, const tlTable<tlPrimGroupMesh*>& mesh_list);
    tlHeightField(const tlHeightField& hf);

    virtual ~tlHeightField();

    tlHeightField& operator = (const tlHeightField& hf);

    int GetWidth() const { return width; }
    int GetLength() const { return length; }

    // Sets integral dimensions of heightfield
    // Equates to total number of sampling points used
    void SetDimensions(int w, int l, const float* h = 0);

    // Get/Set height data
    float GetHeight(int x, int z) const;
    void SetHeight(int x, int z, float y);

    // Sets the world-coordinate bounding box of the heightfield
    // ie., integer coords x=0,z=0 correspond to low bounding box point
    //      while coords x=width-1,z=length-1 correspond to upper point
    const tlBox& GetBoundingBox() const;
    void SetBoundingBox(const tlBox& box);
    void SetBoundingBox(const tlPrimGroupMesh& mesh);
    // Sets bounding box to be largest axis-aligned box that encloses
    // the entire set of meshes
    void SetBoundingBox(const tlTable<tlPrimGroupMesh*>& mesh_list);

    // Expands bounding box to include passed mesh's bounding boxes
    void AddBoundingBox(const tlPrimGroupMesh& mesh);
    void AddBoundingBox(const tlTable<tlPrimGroupMesh*>& mesh_list);

    // tests vertical ray intersection at world coords x, z with
    // triangle (v0, v1, v2)
    static bool Intersects(float x, float z,
                                  const tlPoint& v0,
                                  const tlPoint& v1,
                                  const tlPoint& v2,
                                  float& y);

    // Control parameter -- higher tree depths will result in
    // more memory usage but faster speed
    int GetTreeDepth() const;
    void SetTreeDepth(int q);

    // Adds mesh data to heightfield by point-sampling the mesh.
    // Averages heights when meshes overlap a given sampling point.
    // Uses a quadtree to classify mesh data in order to speed up sampling
    void AddMesh(const tlPrimGroupMesh& mesh);
    void AddMeshList(const tlTable<tlPrimGroupMesh*>& mesh_list);

    // Output data format parameter -- specifies height ranges for
    // output data.  By default, heights are automatically scaled
    // to range from 0 - 2047 31/32, which equates to 0 - 65535
    // (fixed-point) in the actual output data.
    float GetOutputHeightMin() const;
    void SetOutputHeightMin(float h_min);
    float GetOutputHeightMax() const;
    void SetOutputHeightMax(float h_max);

    // Fills non-intersected samples by averaging surrounding intersected
    // sample points.  Call this multiple times if you have > 1 sample-width edges.
    // Returns true if untouched samples still exist.
    bool FillEdges();

    // Loads/Saves SLET-compatible heightfield format
    // Note that this results in heights scale on-the-fly
    // to integral values of 0-65535
    void Load(tlFile& fp);
    void Save(tlFile& fp) const;

    void Load(const char* filename);
    void Save(const char* filename) const;

    // Simple transformations on the heightfield data
    void ScaleY(float scale);
    void OffsetY(float ofs);

    void SetListener(tlHeightFieldListener* hfl) { listener = hfl; }
    tlHeightFieldListener* GetListener() const { return listener; }

private:

    tlBox bounding_box;
    int width, length;
    float* heights;
    bool* heights_touched;

    int tree_depth;
    int output_height_min, output_height_max;

    tlHeightFieldListener* listener;

    void Init();

    // Different from SetHeight() (above) in that it only
    // updates the heightfield if the incoming value is greater
    // than the existing value
    void SetHeightFromMesh(int x, int z, float y);

    // Node triangle list item
    struct Triangle
    {
        int prim_group;
        int index;

        Triangle() { }
        Triangle(int pg, int i): prim_group(pg), index(i) { }
    };

    struct TriangleList
    {
        int count;
        Triangle* triangles;

        TriangleList(): count(0), triangles(0) { }
    };

    // Internal tree structure used when point-sampling meshes
    class Node
    {
    public:

        Node(float xmin, float zmin, float xmax, float zmax);
        ~Node();

        bool AddTriangle(int depth, float x_range_min, float z_range_min,
                              const tlPrimGroupMesh& mesh, const Triangle& tri);
        void GetTriangles(float x, float z, TriangleList* tri_list,
                                int* tri_list_count) const;

    private:

        TriangleList list;
        int triangle_capacity;
        float x_min, z_min;     // lower x,z coords
        float x_max, z_max;     // upper x,z coords
        Node* nodes[2];      // sub-nodes

        void InsertTriangle(const Triangle& tri);
        bool FullyContained(const tlPrimGroupMesh& mesh, const Triangle& tri);
        bool AddTriangle(bool axis, int depth, float x_range_min, float z_range_min,
                              const tlPrimGroupMesh& mesh, const Triangle& tri);
    };

    // Some useful constants
    enum
    {
        DEFAULT_TREE_DEPTH = 8,
        DEFAULT_OUTPUT_HEIGHT_MIN = 0,
        DEFAULT_OUTPUT_HEIGHT_MAX = 65535
    };
};


#endif


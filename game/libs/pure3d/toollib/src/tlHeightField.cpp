/*===========================================================================
    File:: tlHeightField.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <string.h>
#include <float.h>

#include "tlPrimGroupMesh.hpp"
#include "tlFile.hpp"
#include "tlFileByteStream.hpp"
#include "tlVertex.hpp"

#include "tlHeightField.hpp"


/*
 * class tlHeightFieldListener
 * ===========================
 */

tlHeightFieldListener::~tlHeightFieldListener()
{
}


/*
 * class tlHeightField::Node - utility quadtree class
 * ==================================================
 */

tlHeightField::Node::Node(float xmin, float zmin,
                                  float xmax, float zmax):
    list(), triangle_capacity(0),
    x_min(xmin), z_min(zmin), x_max(xmax), z_max(zmax)
{
    memset(nodes, 0, sizeof(nodes));
}


tlHeightField::Node::~Node()
{
    if (list.triangles != NULL)
    {
        delete[] list.triangles;
    }

    for (int i = 0; i < 2; ++i)
    {
        if (nodes[i] != NULL)
        {
            delete nodes[i];
        }
    }
}


void tlHeightField::Node::InsertTriangle(const tlHeightField::Triangle& tri)
{
    // Expand triangle capacity as necessary
    // -- if necessary, we double capacity each time, thus cutting down on
    //    memory costs when only containing a few tris, but cutting down on
    //    mem. allocation speed hits when a node happens to contain many
    if ((list.count + 1) > triangle_capacity)
    {
        if (triangle_capacity == 0)
        {
            triangle_capacity = list.count + 1;
            list.triangles = new Triangle [triangle_capacity];
        }
        else
        {
            triangle_capacity += triangle_capacity;

            // allocate memory and copy over data
            Triangle* tmp = new Triangle [triangle_capacity];
            memcpy(tmp, list.triangles, list.count * sizeof(Triangle));
            delete[] list.triangles;

            list.triangles = tmp;
        }
    }

    list.triangles[list.count] = tri;
    ++list.count;
}


bool tlHeightField::Node::FullyContained(const tlPrimGroupMesh& mesh,
                                                      const tlHeightField::Triangle& tri)
{
    // retrieve the triangle vertex indices
    const tlPrimGroup* pgrp = mesh.GetPrimGroup(tri.prim_group);
    unsigned v[3];
    pgrp->GetTriangle(tri.index, v, v + 1, v + 2);

    // A triangle is fully contained only if all its points are also
    // fully contained within this node
    for (int i = 0; i < 3; ++i)
    {
        const tlPoint& p = mesh.GetVertex(v[i])->GetCoord();

        if ((p.x < x_min) || (p.x > x_max) ||
             (p.z < z_min) || (p.z > z_max))
        {
            return false;
        }
    }

    return true;
}


// wrapper entry function
bool tlHeightField::Node::AddTriangle(int depth,
                                                  float x_range_min, float z_range_min,
                                                  const tlPrimGroupMesh& mesh,
                                                  const tlHeightField::Triangle& tri)
{
    return AddTriangle(false, depth, x_range_min, z_range_min, mesh, tri);
}


// actual workhorse for classifying triangles -- performs axis flipping
// at each recursive pass
bool tlHeightField::Node::AddTriangle(bool axis, int depth,
                                                  float x_range_min, float z_range_min,
                                                  const tlPrimGroupMesh& mesh,
                                                  const tlHeightField::Triangle& tri)
{
    // Check if triangle is fully contained by this node
    if (!FullyContained(mesh, tri))
        return false;

    // If we've hit the smallest quadtree node size, then
    // keep the tri and stop subdividing space
    --depth;
    if (depth == 0)
    {
        InsertTriangle(tri);
        return true;
    }

    float x_range = x_max - x_min;

    if (x_range <= x_range_min)
    {
        InsertTriangle(tri);
        return true;
    }

    float z_range = z_max - z_min;

    if (z_range <= z_range_min)
    {
        InsertTriangle(tri);
        return true;
    }

    // Check to see if tri fits fully into a child node
    bool accepted = false;
    float x_mid = x_min + (x_range * 0.5f);
    float z_mid = z_min + (z_range * 0.5f);

    for (int i = 0; i < 2; ++i)
    {
        if (nodes[i] == NULL)
        {
            nodes[i] = new Node(axis ? (i ? x_mid : x_min) : x_min,
                                      axis ? z_min : (i ? z_mid : z_min),
                                      axis ? (i ? x_max : x_mid) : x_max,
                                      axis ? z_max : (i ? z_max : z_mid));
        }

        if (nodes[i]->AddTriangle(!axis, depth, x_range_min, z_range_min,
                                          mesh, tri))
        {
            accepted = true;
        }
    }

    // If the tri doesn't fit fully into any child nodes, then
    // we'll keep it
    if (!accepted)
    {
        InsertTriangle(tri);
    }

    return true;
}


void tlHeightField::Node::GetTriangles(float x, float z,
                                                    tlHeightField::TriangleList* tri_list,
                                                    int* tri_list_count) const
{
    if ((x < x_min) || (x > x_max) ||
         (z < z_min) || (z > z_max))
        return;

    // append our triangle list to the list of lists -- yikes!
    if (list.triangles != NULL)
    {
        tri_list[*tri_list_count] = list;
        ++(*tri_list_count);
    }

    // let our children append their lists, as necessary
    for (int i = 0; i < 2; ++i)
    {
        if (nodes[i] != NULL)
        {
            nodes[i]->GetTriangles(x, z, tri_list, tri_list_count);
        }
    }
}


/*
 * tlHeightField
 * =============
 */

void tlHeightField::Init()
{
    heights = NULL;
    heights_touched = NULL;
    tree_depth = DEFAULT_TREE_DEPTH;
    output_height_min = DEFAULT_OUTPUT_HEIGHT_MIN;
    output_height_max = DEFAULT_OUTPUT_HEIGHT_MAX;
    listener = NULL;
    bounding_box.Invalidate();
}


tlHeightField::tlHeightField()
{
    Init();
    SetDimensions(0, 0);
}


tlHeightField::tlHeightField(int w, int l)
{
    Init();
    SetDimensions(w, l);
}


tlHeightField::tlHeightField(int w, int l,
                                      const tlTable<tlPrimGroupMesh*>& mesh_list)
{
    Init();
    SetDimensions(w, l);
    SetBoundingBox(mesh_list);
    AddMeshList(mesh_list);
}


tlHeightField::tlHeightField(const tlHeightField& hf)
{
    Init();
    *this = hf;
}


tlHeightField::~tlHeightField()
{
    if (heights != NULL)
    {
        delete[] heights;
    }
}


tlHeightField& tlHeightField::operator = (const tlHeightField& hf)
{
    if (&hf == this)
        return *this;

    bounding_box = hf.bounding_box;

    SetDimensions(hf.width, hf.length, hf.heights);

    tree_depth = hf.tree_depth;
    output_height_min = hf.output_height_min;
    output_height_max = hf.output_height_max;

    // hmmm, should I copy the listener?
    // This listener code is pretty basic and not very robust at this point,
    // so I won't worry about it until we establish a more rigorous model

    return *this;
}


void tlHeightField::SetDimensions(int w, int l, const float* h)
{
    if (heights != NULL)
    {
        delete[] heights;
    }
    width = w;
    length = l;

    if (width < 0)
    {
        width = 0;
    }
    if (length < 0)
    {
        length = 0;
    }

    if ((width == 0) || (length == 0))
    {
        heights = NULL;
        heights_touched = NULL;
    }
    else
    {
        heights_touched = new bool [width * length];
        memset(heights_touched, 0, width * length * sizeof(heights_touched[0]));

        heights = new float [width * length];

        if (h != NULL)
        {
            memcpy(heights, h, width * length * sizeof(float));
        }
        else
        {
            // zero out the array
            memset(heights, 0, width * length * sizeof(float));
        }
    }
}


float tlHeightField::GetHeight(int x, int z) const
{
    if ((heights == NULL) ||
         (x < 0) || (x >= width) ||
         (z < 0) || (z >= length))
    {
        return 0.0f;
    }

    return heights[x + (z * width)];
}


void tlHeightField::SetHeight(int x, int z, float y)
{
    if (heights == NULL)
        return;

    int ofs = x + (z * width);

    heights[ofs] = y;
    heights_touched[ofs] = true;
}


void tlHeightField::SetHeightFromMesh(int x, int z, float y)
{
    int ofs = x + (z * width);

    if (!heights_touched[ofs] || (heights[ofs] < y))
    {
        heights[ofs] = y;
        heights_touched[ofs] = true;
    }
}


const tlBox& tlHeightField::GetBoundingBox() const
{
    return bounding_box;
}


void tlHeightField::SetBoundingBox(const tlBox& box)
{
    bounding_box = box;
    bounding_box.low.y = 0.0f;
    bounding_box.high.y = 0.0f;
}


void tlHeightField::SetBoundingBox(const tlPrimGroupMesh& mesh)
{
    bounding_box = mesh.Box();
    bounding_box.low.y = 0.0f;
    bounding_box.high.y = 0.0f;
}


void tlHeightField::SetBoundingBox(const tlTable<tlPrimGroupMesh*>& mesh_list)
{
    bounding_box.low.x = FLT_MAX;
    bounding_box.low.y = 0.0f;
    bounding_box.low.z = FLT_MAX;

    bounding_box.high.x = -FLT_MAX;
    bounding_box.high.y = 0.0f;
    bounding_box.high.z = -FLT_MAX;

    AddBoundingBox(mesh_list);
}


void tlHeightField::AddBoundingBox(const tlPrimGroupMesh& mesh)
{
    const tlBox& box = mesh.Box();

    // decrease lower bounds
    if (box.low.x < bounding_box.low.x)
    {
        bounding_box.low.x = box.low.x;
    }
    if (box.low.z < bounding_box.low.z)
    {
        bounding_box.low.z = box.low.z;
    }

    // increase upper bounds
    if (box.high.x > bounding_box.high.x)
    {
        bounding_box.high.x = box.high.x;
    }
    if (box.high.z > bounding_box.high.z)
    {
        bounding_box.high.z = box.high.z;
    }
}


void tlHeightField::AddBoundingBox(const tlTable<tlPrimGroupMesh*>& mesh_list)
{
    for (int i = 0; i < mesh_list.Count(); ++i)
    {
        AddBoundingBox(*(mesh_list[i]));
    }
}


bool tlHeightField::Intersects(float x, float z,
                                         const tlPoint& v0,
                                         const tlPoint& v1,
                                         const tlPoint& v2,
                                         float &y)
{
    // Note:  This code does NOT cull back-facing triangles.
    // All instances of the (0,1,0) vector here indicates the
    // direction of the projected ray (up!)

    tlPoint e1 = v1 - v0;
    tlPoint e2 = v2 - v0;

    // this is the cross product of (0,1,0) with e2
    tlPoint p(e2.z, 0.0f, -e2.x);

    // dot product of e1 with p
    float a = (e1.x * p.x) + (e1.z * p.z);

    // reject determinants that might result in singularities
    const float epsilon = 1.0e-5f;
    if ((a > -epsilon) && (a < epsilon))
    {
        return false;
    }

    float f = 1.0f / a;

    // Set s to be (x,0,z) - v0
    tlPoint s(x - v0.x, -v0.y, z - v0.z);

    // calculate barycentric coordinates of intersection
    // within triangle
    float u = f * ((s.x * p.x) + (s.z * p.z));
    if ((u < 0.0f) || (u > 1.0f))
    {
        return false;
    }

    // cross-product of s and e1
    tlPoint q = CrossProd(s,e1);

    // this is actually f * ((0,1,0) dotproduct q)
    float v = f * q.y;

    if ((v < 0.0f) || ((u + v) > 1.0f))
    {
        return false;
    }

    y = f * DotProd(e2,q);
    return true;
}


int tlHeightField::GetTreeDepth() const
{
    return tree_depth;
}


void tlHeightField::SetTreeDepth(int q)
{
    if (q > 0)
    {
        tree_depth = q;
    }
}


void tlHeightField::AddMesh(const tlPrimGroupMesh& mesh)
{
    if (heights == NULL)
        return;

    if (listener != NULL)
    {
        listener->SetMeshName(mesh.GetName());
    }

    const tlBox& box = mesh.Box();

    float bbox_width = bounding_box.high.x - bounding_box.low.x;
    float bbox_length = bounding_box.high.z - bounding_box.low.z;

    // Calculate world-space range between sampling points
    float x_scale, z_scale;

    if (width > 1)
    {
        x_scale = bbox_width / (float)(width-1);
    }
    else
    {
        x_scale = bbox_width;
    }
    if (length > 1)
    {
        z_scale = bbox_length / (float)(length-1);
    }
    else
    {
        z_scale = bbox_length;
    }

    // Classify triangles into x-z space so we can quickly
    // perform intersection tests later
    Node root(box.low.x, box.low.z, box.high.x, box.high.z);
    Triangle tri;

    for (tri.prim_group = 0;
          tri.prim_group < mesh.NumPrimGroups();
          ++tri.prim_group)
    {
        const tlPrimGroup* pgrp = mesh.GetPrimGroup(tri.prim_group);

        if (pgrp->HasTriangles())
        {
            for (tri.index = 0; tri.index < pgrp->GetTriangleCount(); ++tri.index)
            {
                root.AddTriangle(tree_depth, x_scale, z_scale, mesh, tri);
            }
        }
    }

    // Calculate our coordinate ranges...
    int i_min = (int)(((box.low.x - bounding_box.low.x) / bbox_width) * width);
    int i_max = (int)((((box.high.x - bounding_box.low.x) / bbox_width) + 0.5f) * width);
    int k_min = (int)(((bounding_box.high.z - box.high.z) / bbox_length) * length);
    int k_max = (int)((((bounding_box.high.z - box.low.z) / bbox_length) + 0.5f) * length);

    // These checks are only really necessary if we're adding a mesh
    // whose bounding box wasn't added to the heightfield's bounding box
    if (i_min < 0) i_min = 0;
    else if (i_min >= width) i_min = width - 1;
    if (i_max < 0) i_max = 0;
    else if (i_max >= width) i_max = width - 1;
    if (k_min < 0) k_min = 0;
    else if (k_min >= length) k_min = length - 1;
    if (k_max < 0) k_max = 0;
    else if (k_max >= length) k_max = length - 1;

    // Loop over all the sampled heightfield points,
    // testing what triangles are intersected
    float x, z = box.high.z;
    float y, tmp_y;
    bool intersected;

    // Need up to (tree_depth * 2) tri lists, since each
    // sampling point can "overlap" up to 2 nodes and will descend
    // only up to the max depth of the tree
    int TRIANGLE_LIST_COUNT_MAX = tree_depth * 4;
    TriangleList* tri_list = new TriangleList[TRIANGLE_LIST_COUNT_MAX];
    int tri_list_count;

    for (int k = k_min; k <= k_max; ++k)
    {
        if (listener != NULL)
        {
            listener->SetProgress(k - k_min, k_max - k_min + 1);
        }

        x = box.low.x;

        for (int i = i_min; i <= i_max; ++i)
        {
            y = 0.0f;
            intersected = false;

            // Get the list of triangles that might intersect with this sampling point
            tri_list_count = 0;
            root.GetTriangles(x, z, tri_list, &tri_list_count);
            assert(tri_list_count <= TRIANGLE_LIST_COUNT_MAX);

            // Iterate through all the possible triangles
            for (int tl = 0; tl < tri_list_count; ++tl)
            {
                for (int t = 0; t < tri_list[tl].count; ++t)
                {
                    const tlPrimGroup* pgrp =
                        mesh.GetPrimGroup(tri_list[tl].triangles[t].prim_group);
                    unsigned v[3];
                    pgrp->GetTriangle(tri_list[tl].triangles[t].index,
                                            v, v + 1, v + 2);

                    // if any intersect, select only the highest intersecting
                    // triangle from this mesh
                    if (Intersects(x, z,
                                        mesh.GetVertex(v[0])->GetCoord(),
                                        mesh.GetVertex(v[1])->GetCoord(),
                                        mesh.GetVertex(v[2])->GetCoord(),
                                        tmp_y))
                    {
                        if ((!intersected) || (tmp_y > y))
                        {
                            intersected = true;
                            y = tmp_y;
                        }
                    }
                }
            }

            if (intersected)
            {
                SetHeightFromMesh(i, k, y);
            }

            x += x_scale;
        }

        z -= z_scale;
    }

    delete[] tri_list;

    if (listener != NULL)
    {
        listener->SetProgress(1, 1);
    }
}


void tlHeightField::AddMeshList(const tlTable<tlPrimGroupMesh*>& mesh_list)
{
    if (heights == NULL)
        return;

    for (int i = 0; i < mesh_list.Count(); ++i)
    {
        AddMesh(*(mesh_list[i]));
    }
}


float tlHeightField::GetOutputHeightMin() const
{
    float rc = (float)(output_height_min >> 5);
    rc += (float)(output_height_min & 0x01f) / 32.0f;

    return rc;
}


void tlHeightField::SetOutputHeightMin(float h_min)
{
    int int_part = (int)h_min;
    output_height_min = (int_part << 5) +
                              (int)((h_min - int_part) * 32.0f);

    if (output_height_min < 0)
    {
        output_height_min = 0;
    }
    else if (output_height_min > 65535)
    {
        output_height_min = 65535;
    }

    if (output_height_min > output_height_max)
    {
        output_height_max = output_height_min;
    }
}


float tlHeightField::GetOutputHeightMax() const
{
    float rc = (float)(output_height_max >> 5);
    rc += (float)(output_height_max & 0x01f) / 32.0f;

    return rc;
}


void tlHeightField::SetOutputHeightMax(float h_max)
{
    int int_part = (int)h_max;
    output_height_max = (int_part << 5) +
                              (int)((h_max - int_part) * 32.0f);

    if (output_height_max < 0)
    {
        output_height_max = 0;
    }
    else if (output_height_max > 65535)
    {
        output_height_max = 65535;
    }

    if (output_height_max < output_height_min)
    {
        output_height_min = output_height_max;
    }
}


bool tlHeightField::FillEdges()
{
    int sz = width * length;
    bool* heights_touched_new = new bool [sz];
    memcpy(heights_touched_new, heights_touched, sz * sizeof(bool));

    int i, k, x, z;
    int ofs = 0, tmp_ofs;
    int n_samples;
    float total_height;
    bool untouched_remaining = false;

    for (k = 0; k < length; ++k)
    {
        for (i = 0; i < width; ++i)
        {
            // find samples that did not intersect
            if (!heights_touched[ofs])
            {
                n_samples = 0;
                total_height = 0.0f;

                // average the surrounding samples
                for (z = k-1; z < k+2; ++z)
                {
                    for (x = i-1; x < i+2; ++x)
                    {
                        if ((x >= 0) && (x < width) &&
                             (z >= 0) && (z < length))
                        {
                            tmp_ofs = (z * width) + x;

                            if (heights_touched[tmp_ofs])
                            {
                                ++n_samples;
                                total_height += heights[tmp_ofs];
                            }
                        }
                    }
                }

                if (n_samples > 0)
                {
                    heights[ofs] = total_height / n_samples;
                    heights_touched_new[ofs] = true;
                }
                else
                {
                    untouched_remaining = true;
                }
            }

            ++ofs;
        }
    }

    // heights_touched_new now contains the correct info
    delete[] heights_touched;
    heights_touched = heights_touched_new;

    return untouched_remaining;
}


void tlHeightField::Load(tlFile& fp)
{
    width = 0;
    length = 0;

    fp.GetBytes(&width, 2);
    fp.GetBytes(&length, 2);

    SetDimensions(width, length);

    unsigned short height;
    int hf_size = width * length;

    for (int i = 0; i < hf_size; ++i)
    {
        fp.GetBytes(&height, 2);
        heights[i] = height;
    }

    memset(heights_touched, 0, width * length * sizeof(heights_touched[0]));
}


void tlHeightField::Save(tlFile& fp) const
{
    fp.PutBytes(&width, 2);
    fp.PutBytes(&length, 2);

    // First, determine min and max height values
    // so we can scale them properly.
    int hf_size = width * length;
    float height_min = FLT_MAX;
    float height_max = -FLT_MAX;

    int i;
    for (i = 0; i < hf_size; ++i)
    {
        if (heights_touched[i])
        {
            if (heights[i] < height_min)
            {
                height_min = heights[i];
            }
            if (heights[i] > height_max)
            {
                height_max = heights[i];
            }
        }
    }

    float height_dif = height_max - height_min;

    if (height_dif == 0.0f)
    {
        // means we have a uniform heightfield
        // - doesn't much matter what we output.
        for (i = 0; i < hf_size; ++i)
        {
            fp.PutBytes(&output_height_min, 2);
        }
    }
    else
    {
        unsigned short height;
        float conv_factor = (float)(output_height_max - output_height_min) /
                                  height_dif;

        for (i = 0; i < hf_size; ++i)
        {
            if (heights_touched[i])
            {
                height = (unsigned short)(((heights[i] - height_min) * conv_factor) +
                                                  output_height_min);
            }
            else
            {
                height = output_height_min;
            }

            fp.PutBytes(&height, 2);
        }
    }
}


void tlHeightField::Load(const char* filename)
{
    tlFileByteStream* fstream = new tlFileByteStream(filename, omREAD);
    tlFile fp(fstream,tlFile::FROMFILE);

    Load(fp);
}


void tlHeightField::Save(const char* filename) const
{
    tlFileByteStream* fstream = new tlFileByteStream(filename, omWRITE);
    tlFile fp(fstream, tlFile::CHUNK32);

    Save(fp);
}


void tlHeightField::ScaleY(float scale)
{
    int hf_size = width * length;

    for (int i = 0; i < hf_size; ++i)
    {
        heights[i] *= scale;
    }
}


void tlHeightField::OffsetY(float ofs)
{
    int hf_size = width * length;

    for (int i = 0; i < hf_size; ++i)
    {
        heights[i] += ofs;
    }
}


// End of file.


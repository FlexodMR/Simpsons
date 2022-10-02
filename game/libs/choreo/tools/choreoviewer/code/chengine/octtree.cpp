/*
 * choreoviewer/chengine/octtree.hpp
 */

#include <chengine/octtree.hpp>

#include <p3d/error.hpp>
#include <p3d/geometry.hpp>
#include <p3d/primgroup.hpp>
#include <p3d/vertexlist.hpp>
#include <p3d/scenegraph/scenegraph.hpp>

#include <string.h>
#include <float.h>


//---------------------------------------------------------------------------
// class CollTriangle - interface
//---------------------------------------------------------------------------

class CollTriangle
{
public:

    CollTriangle()
        { }
    
    CollTriangle(const rmt::Vector& p0,
        const rmt::Vector& p1,
        const rmt::Vector& p2,
        int flag = 0);
    
    const rmt::Vector& GetPoint(int i) const
        { return m_Points[i]; }
    const rmt::Vector& GetNormal() const
        { return m_Normal; }
    int GetFlag() const
        { return m_Flag; }

    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        float& t) const;
    
    void Display(tColour c,
        CollOctree::DrawLineFunction drawLineFunc,
        void* drawLineFuncContext) const;
    
private:
    
    rmt::Vector m_Points[3];
    rmt::Vector m_Normal;
    int m_Flag;
};


//---------------------------------------------------------------------------
// class CollTriangle - implementation
//---------------------------------------------------------------------------

CollTriangle::CollTriangle(const rmt::Vector& p0,
    const rmt::Vector& p1,
    const rmt::Vector& p2,
    int flag):
    m_Flag(flag)
{
    m_Points[0] = p0;
    m_Points[1] = p1;
    m_Points[2] = p2;
    
    rmt::Vector e1 = m_Points[1];
    e1.Sub(m_Points[0]);
    
    rmt::Vector e2 = m_Points[2];
    e2.Sub(m_Points[0]);
    
    m_Normal.CrossProduct(e1, e2);
    m_Normal.NormalizeSafe();
}

bool CollTriangle::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    float &t) const
{
    static const float epsilon = 0.000001f;
    
    rmt::Vector e1 = m_Points[1];
    e1.Sub(m_Points[0]);
    
    rmt::Vector e2 = m_Points[2];
    e2.Sub(m_Points[0]);
    
    rmt::Vector p;
    p.CrossProduct(rayDir, e2);
    
    float det = e1.DotProduct(p);
    if (det < epsilon)
        return false;
    
    rmt::Vector s = rayOrg;
    s.Sub(m_Points[0]);
    
    float u = s.DotProduct(p);
    if ((u < 0.0f) || (u > det))
        return false;
    
    rmt::Vector q;
    q.CrossProduct(s, e1);
    
    float v = rayDir.DotProduct(q);
    if ((v < 0.0f) || ((u + v) > det))
        return false;
    
    t = e2.DotProduct(q);
    float invDet = 1.0f / det;
    t *= invDet;
    
    return true;
}

void CollTriangle::Display(tColour c,
    CollOctree::DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    (*drawLineFunc)(GetPoint(0), GetPoint(1), c, drawLineFuncContext);
    (*drawLineFunc)(GetPoint(1), GetPoint(2), c, drawLineFuncContext);
    (*drawLineFunc)(GetPoint(2), GetPoint(0), c, drawLineFuncContext);
}


//---------------------------------------------------------------------------
// class CollTriangleList - interface
//---------------------------------------------------------------------------

class CollTriangleList
{
public:
    
    CollTriangleList();
    ~CollTriangleList();
    
    bool AddTriangle(const CollTriangle& triangle);
    bool RemoveTriangles(int flag);
    bool Clear();
    
    int GetTriangleCount() const
        { return m_TriangleCount; }
    const CollTriangle* GetTriangle(int i) const
        { return (m_Triangles + i); }
    
    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        float& t,
        rmt::Vector& normal,
        int* triCount) const;
    
    void Display(tColour c,
        CollOctree::DrawLineFunction drawLineFunc,
        void* drawLineFuncContext) const;
    
private:
    
    int m_TriangleMaxCount;
    int m_TriangleCount;
    CollTriangle* m_Triangles;
};


//---------------------------------------------------------------------------
// class CollTriangleList - implementation
//---------------------------------------------------------------------------

CollTriangleList::CollTriangleList():
    m_TriangleMaxCount(0),
    m_TriangleCount(0),
    m_Triangles(0)
{
}

CollTriangleList::~CollTriangleList()
{
    delete[] m_Triangles;
}

bool CollTriangleList::AddTriangle(const CollTriangle& triangle)
{
    // reallocate if necessary
    if (m_TriangleCount >= m_TriangleMaxCount)
    {
        if (m_TriangleMaxCount <= 0)
        {
            m_TriangleMaxCount = 1;
        }
        else
        {
            m_TriangleMaxCount *= 2;
        }
        
        CollTriangle* newTriangles = new CollTriangle [m_TriangleMaxCount];
        memcpy(newTriangles, m_Triangles, sizeof(CollTriangle) * m_TriangleCount);
        delete[] m_Triangles;
        m_Triangles = newTriangles;
    }
    
    // add triangle
    m_Triangles[m_TriangleCount] = triangle;
    ++m_TriangleCount;
    
    return true;
}

bool CollTriangleList::RemoveTriangles(int flag)
{
    bool rc = false;

    int i = 0;
    while (i < m_TriangleCount)
    {
        if (m_Triangles[i].GetFlag() == flag)
        {
            rc = true;
            --m_TriangleCount;

            memmove(m_Triangles + i,
                m_Triangles + i + 1,
                (m_TriangleCount - i) * sizeof(CollTriangle));
        }
        else
        {
            ++i;
        }
    }

    return rc;
}

bool CollTriangleList::Clear()
{
    m_TriangleCount = 0;
    return true;
}

bool CollTriangleList::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    float& t,
    rmt::Vector& normal,
    int* triCount) const
{
    if (triCount != 0)
    {
        *triCount += m_TriangleCount;
    }
    
    bool intersected = false;
    
    for (int i = 0; i < m_TriangleCount; ++i)
    {
        float tmpT;
        
        if (m_Triangles[i].Intersect(rayOrg, rayDir, tmpT))
        {
            if ((tmpT >= 0.0f) && (tmpT < t))
            {
                intersected = true;
                t = tmpT;
                normal = m_Triangles[i].GetNormal();
            }
        }
    }
    
    return intersected;
}

void CollTriangleList::Display(tColour c,
    CollOctree::DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    for (int i = 0; i < m_TriangleCount; ++i)
    {
        m_Triangles[i].Display(c, drawLineFunc, drawLineFuncContext);
    }
}


//---------------------------------------------------------------------------
// class CollAABBox - interface
//---------------------------------------------------------------------------

class CollAABBox
{
public:
    
    CollAABBox()
        { }
    CollAABBox(const rmt::Vector& mid,
        float halfLength);
    
    const rmt::Vector& GetMid() const
        { return m_Mid; }
    void SetMid(const rmt::Vector& mid)
        { m_Mid = mid; }
    float GetHalfLength() const
        { return m_HalfLength; }
    void SetHalfLength(float hl)
        { m_HalfLength = hl; }

    bool Contains(const rmt::Vector& point) const;
    bool Contains(const CollTriangle& triangle) const;

    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        float &t) const;
    
    void Display(tColour c,
        CollOctree::DrawLineFunction drawLineFunc,
        void* drawLineFuncContext) const;
    
private:
    
    rmt::Vector m_Mid;
    float m_HalfLength;
};


//---------------------------------------------------------------------------
// class CollAABBox - implementation
//---------------------------------------------------------------------------

CollAABBox::CollAABBox(const rmt::Vector& mid, float halfLength):
    m_Mid(mid),
    m_HalfLength(halfLength)
{
}

bool CollAABBox::Contains(const rmt::Vector& point) const
{
    float hl = m_HalfLength;
    return (((m_Mid.x - hl) < point.x) && ((m_Mid.x + hl) > point.x) &&
        ((m_Mid.y - hl) < point.y) && ((m_Mid.y + hl) > point.y) &&
        ((m_Mid.z - hl) < point.z) && ((m_Mid.z + hl) > point.z));
}

// FIXME:  i need to implement proper tri-aabb detection here
bool CollAABBox::Contains(const CollTriangle& triangle) const
{
    if (Contains(triangle.GetPoint(0)))
        return true;
    if (Contains(triangle.GetPoint(1)))
        return true;
    if (Contains(triangle.GetPoint(2)))
        return true;

    rmt::Vector rayOrg, rayDir;
    float t, mag;

    // test triangle edges against box
    rayOrg = triangle.GetPoint(0);
    rayDir = triangle.GetPoint(1);
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t < mag))
            return true;
    }

    rayOrg = triangle.GetPoint(1);
    rayDir = triangle.GetPoint(2);
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t < mag))
            return true;
    }

    rayOrg = triangle.GetPoint(2);
    rayDir = triangle.GetPoint(0);
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t < mag))
            return true;
    }

    // test box diagonals against triangle
    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(-m_HalfLength, -m_HalfLength, -m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(+m_HalfLength, +m_HalfLength, +m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(+m_HalfLength, +m_HalfLength, +m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(-m_HalfLength, -m_HalfLength, -m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(-m_HalfLength, +m_HalfLength, -m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(+m_HalfLength, -m_HalfLength, +m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(+m_HalfLength, -m_HalfLength, +m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(-m_HalfLength, +m_HalfLength, -m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(-m_HalfLength, -m_HalfLength, +m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(+m_HalfLength, +m_HalfLength, -m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(+m_HalfLength, +m_HalfLength, -m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(-m_HalfLength, -m_HalfLength, +m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(-m_HalfLength, +m_HalfLength, +m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(+m_HalfLength, -m_HalfLength, -m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    rayOrg = m_Mid;
    rayOrg.Add(rmt::Vector(+m_HalfLength, -m_HalfLength, -m_HalfLength));
    rayDir = m_Mid;
    rayDir.Add(rmt::Vector(-m_HalfLength, +m_HalfLength, +m_HalfLength));
    rayDir.Sub(rayOrg);
    mag = rayDir.NormalizeSafe();
    if (triangle.Intersect(rayOrg, rayDir, t))
    {
        if ((t >= 0.0f) && (t <= mag))
        {
            return true;
        }
    }

    return false;
}

bool CollAABBox::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    float &t) const
{
    float tMin = -FLT_MAX;
    float tMax = FLT_MAX;
    
    rmt::Vector p = m_Mid;
    p.Sub(rayOrg);
    
    const float* pP = (const float*)&p;
    const float* pRayDir = (const float*)&rayDir;
    
    for (int i = 0; i < 3; ++i)
    {
        if (!rmt::Epsilon(pRayDir[i], 0.0f))
        {
            float invf = 1.0f / pRayDir[i];
            
            float t1 = (pP[i] + m_HalfLength) * invf;
            float t2 = (pP[i] - m_HalfLength) * invf;
            
            if (t1 > t2)
            {
                if (t2 > tMin)
                {
                    tMin = t2;
                }
                
                if (t1 < tMax)
                {
                    tMax = t1;
                }
            }
            else
            {
                if (t1 > tMin)
                {
                    tMin = t1;
                }
                
                if (t2 < tMax)
                {
                    tMax = t2;
                }
            }
            
            if ((tMin > tMax) ||
                (tMax < 0.0f))
            {
                t = 0.0f;
                return false;
            }
        }
        else if (((-pP[i] - m_HalfLength) > 0.0f) ||
            ((-pP[i] + m_HalfLength) < 0.0f))
        {
            t = 0.0f;
            return false;
        }
    }
    
    if (tMin > 0.0f)
    {
        t = tMin;
    }
    else
    {
        t = tMax;
    }
    
    return true;
}

void CollAABBox::Display(tColour c,
    CollOctree::DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    rmt::Vector amin = GetMid();
    amin.x -= GetHalfLength();
    amin.y -= GetHalfLength();
    amin.z -= GetHalfLength();
    
    rmt::Vector amax = GetMid();
    amax.x += GetHalfLength();
    amax.y += GetHalfLength();
    amax.z += GetHalfLength();
    
    drawLineFunc(rmt::Vector(amin.x,amin.y,amin.z), rmt::Vector(amax.x,amin.y,amin.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amin.x,amax.y,amin.z), rmt::Vector(amax.x,amax.y,amin.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amin.x,amin.y,amax.z), rmt::Vector(amax.x,amin.y,amax.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amin.x,amax.y,amax.z), rmt::Vector(amax.x,amax.y,amax.z), c, drawLineFuncContext);
    
    drawLineFunc(rmt::Vector(amin.x,amin.y,amin.z), rmt::Vector(amin.x,amax.y,amin.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amax.x,amin.y,amin.z), rmt::Vector(amax.x,amax.y,amin.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amin.x,amin.y,amax.z), rmt::Vector(amin.x,amax.y,amax.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amax.x,amin.y,amax.z), rmt::Vector(amax.x,amax.y,amax.z), c, drawLineFuncContext);
    
    drawLineFunc(rmt::Vector(amin.x,amin.y,amin.z), rmt::Vector(amin.x,amin.y,amax.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amax.x,amin.y,amin.z), rmt::Vector(amax.x,amin.y,amax.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amin.x,amax.y,amin.z), rmt::Vector(amin.x,amax.y,amax.z), c, drawLineFuncContext);
    drawLineFunc(rmt::Vector(amax.x,amax.y,amin.z), rmt::Vector(amax.x,amax.y,amax.z), c, drawLineFuncContext);
}


//---------------------------------------------------------------------------
// class CollOctnode - interface
//---------------------------------------------------------------------------

class CollOctnode
{
public:
    
    CollOctnode(const CollAABBox& aabbox);
    ~CollOctnode();
    
    const CollAABBox& GetAABBox() const
    { return m_AABBox; }
    
    bool AddTriangle(const CollTriangle& triangle,                     
        float minExtent, int leafThreshold);

    bool RemoveTriangles(int flag);
    bool Clear();
    
    bool Intersect(const rmt::Vector& rayOrg,
        const rmt::Vector& rayDir,
        float rayMaxDist,
        float& t,
        rmt::Vector& normal,
        int* nodeCount,
        int* triCount,
        bool drawDebug,
        CollOctree::DrawLineFunction drawLineFunc,
        void* drawLineFuncContext) const;
    
private:
    
    tColour c;
    CollAABBox m_AABBox;
    CollOctnode* m_Children[2][2][2];
    CollTriangleList m_TriangleList;
};


//---------------------------------------------------------------------------
// class CollOctnode - implementation
//---------------------------------------------------------------------------

static const tColour g_colours[] =
{
    tColour(255,0,0),
    tColour(0,255,0),
    tColour(0,0,255),
    tColour(255,255,0),
    tColour(0,255,255),
    tColour(255,0,255),
    tColour(191,191,191),
    tColour(255,127,0),
    tColour(255,255,255),
    tColour(255,127,127),
    tColour(127,255,127),
    tColour(127,127,255),
    tColour(255,255,127),
    tColour(127,255,255),
    tColour(255,127,255),
    tColour(255,191,127),
    tColour(127,127,127),
};
static int g_colour_index = 0;
static const int g_colour_max = sizeof(g_colours) / sizeof(tColour);

CollOctnode::CollOctnode(const CollAABBox& aabbox):
    m_AABBox(aabbox)
{
    memset(m_Children, 0, sizeof(m_Children));
    c = g_colours[g_colour_index];
    g_colour_index = (g_colour_index + 1) % g_colour_max;
}

CollOctnode::~CollOctnode()
{
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            for (int k = 0; k < 2; ++k)
            {
                delete m_Children[i][j][k];
            }
        }
    }
}

bool CollOctnode::AddTriangle(const CollTriangle& triangle, float minExtent, int leafThreshold)
{
    // exit early if triangle not contained within threshold
    if (!m_AABBox.Contains(triangle))
    {
        return false;
    }
    
    if (m_AABBox.GetHalfLength() <= minExtent)
    {
        m_TriangleList.AddTriangle(triangle);
        return true;
    }

    int x, y, z;
    int triAddedCount = 0;
    bool triAdded[2][2][2];
    CollAABBox aabboxes[2][2][2];
    memset(triAdded, 0, sizeof(triAdded));

    for (x = 0; x < 2; ++x)
    {
        for (y = 0; y < 2; ++y)
        {
            for (z = 0; z < 2; ++z)
            {
                CollOctnode* child = m_Children[x][y][z];
                
                if (child == 0)
                {
                    float hl = m_AABBox.GetHalfLength() * 0.5f;

                    if (hl >= minExtent)
                    {
                        rmt::Vector mid = m_AABBox.GetMid();
                        mid.x += ((x * 2) - 1) * hl;
                        mid.y += ((y * 2) - 1) * hl;
                        mid.z += ((z * 2) - 1) * hl;

                        CollAABBox* aabbox = &(aabboxes[x][y][z]);
                        aabbox->SetMid(mid);
                        aabbox->SetHalfLength(hl);
                        if (aabbox->Contains(triangle))
                        {
                            triAdded[x][y][z] = true;
                            ++triAddedCount;
                        }
                    }
                }
                else
                {
                    if (child->GetAABBox().Contains(triangle))
                    {
                        triAdded[x][y][z] = true;
                        ++triAddedCount;
                    }
                }
            }
        }
    }

    if ((triAddedCount > 0) && (triAddedCount <= leafThreshold))
    {
        for (x = 0; x < 2; ++x)
        {
            for (y = 0; y < 2; ++y)
            {
                for (z = 0; z < 2; ++z)
                {
                    if (triAdded[x][y][z])
                    {
                        CollOctnode* child = m_Children[x][y][z];

                        if (child == 0)
                        {
                            child = new CollOctnode(aabboxes[x][y][z]);
                            m_Children[x][y][z] = child;
                        }

                        child->AddTriangle(triangle, minExtent, leafThreshold);
                    }
                }
            }
        }

        return true;
    }
    
    m_TriangleList.AddTriangle(triangle);
    return true;
}

bool CollOctnode::RemoveTriangles(int flag)
{
    bool rc = false;

    for (int x = 0; x < 2; ++x)
    {
        for (int y = 0; y < 2; ++y)
        {
            for (int z = 0; z < 2; ++z)
            {
                CollOctnode* child = m_Children[x][y][z];

                if (child != 0)
                {
                    rc = (child->RemoveTriangles(flag) || rc);
                }
            }
        }
    }

    return (m_TriangleList.RemoveTriangles(flag) || rc);
}

bool CollOctnode::Clear()
{
    for (int x = 0; x < 2; ++x)
    {
        for (int y = 0; y < 2; ++y)
        {
            for (int z = 0; z < 2; ++z)
            {
                delete m_Children[x][y][z];
                m_Children[x][y][z] = 0;
            }
        }
    }

    return m_TriangleList.Clear();
}

bool CollOctnode::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    float rayMaxDist,
    float& t,
    rmt::Vector& normal,
    int* nodeCount,
    int* triCount,
    bool drawDebug,
    CollOctree::DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    if (nodeCount != 0)
    {
        ++(*nodeCount);
    }
    
    float tmpT;
    if (!m_AABBox.Intersect(rayOrg, rayDir, tmpT))
    {
        return false;
    }
    if (tmpT < 0.0f)
    {
        return false;
    }
    
    if (!m_AABBox.Contains(rayOrg) &&
        ((tmpT > t) || (tmpT > rayMaxDist)))
    {
        return false;
    }
    
    if (drawDebug &&
        (drawLineFunc != 0))
    {
        m_AABBox.Display(c, drawLineFunc, drawLineFuncContext);
        m_TriangleList.Display(c, drawLineFunc, drawLineFuncContext);
    }
    
    bool intersected = m_TriangleList.Intersect(rayOrg, rayDir, t, normal, triCount);
    
    for (int x = 0; x < 2; ++x)
    {
        for (int y = 0; y < 2; ++y)
        {
            for (int z = 0; z < 2; ++z)
            {
                CollOctnode* child = m_Children[x][y][z];
                
                if (child != 0)
                {
                    if (child->Intersect(rayOrg, rayDir, rayMaxDist, t, normal, nodeCount, triCount, drawDebug, drawLineFunc, drawLineFuncContext))
                    {
                        intersected = true;
                    }
                }
            }
        }
    }
    
    return intersected;
}


//---------------------------------------------------------------------------
// class CollOctree - implementation
//---------------------------------------------------------------------------

CollOctree::CollOctree(const rmt::Vector& mid,
    float maxExtent,
    float minExtent,
    int leafThreshold):
    m_MinExtent(minExtent),
    m_LeafThreshold(leafThreshold)
{
    m_Root = new CollOctnode(CollAABBox(mid, maxExtent));
}

CollOctree::~CollOctree()
{
    delete m_Root;
}

bool CollOctree::AddTriangle(const rmt::Vector& p0,
                           const rmt::Vector& p1,
                           const rmt::Vector& p2,
                           int flag)
{
    CollTriangle triangle(p0, p1, p2, flag);
    float mag2 = (triangle.GetNormal().x * triangle.GetNormal().x) +
        (triangle.GetNormal().y * triangle.GetNormal().y) +
        (triangle.GetNormal().z * triangle.GetNormal().z);
    if (rmt::Epsilon(mag2, 0.0f))
    {
        // reject degenerate triangles
        return false;
    }
    
    return m_Root->AddTriangle(triangle, m_MinExtent, m_LeafThreshold);
}

bool CollOctree::IsValidGeometry(tGeometry* geo)
{
    if (geo == 0)
        return false;

    for (int i = 0; i < geo->GetNumPrimGroup(); ++i)
    {
        tPrimGroupStreamed* pgs = dynamic_cast<tPrimGroupStreamed*>(geo->GetPrimGroup(i));
        if (pgs != 0)
        {
            if (pgs->GetPrimType() == PDDI_PRIM_TRIANGLES)
                return true;
            if (pgs->GetPrimType() == PDDI_PRIM_TRISTRIP)
                return true;
        }
    }

    return false;
}

bool CollOctree::IsValidDrawable(tDrawable* drawable)
{
    tGeometry* geo = dynamic_cast<tGeometry*>(drawable);
    if (geo != 0)
    {
        return IsValidGeometry(geo);
    }

    sg::Scenegraph* sceneGraph = dynamic_cast<sg::Scenegraph*>(drawable);
    return (sceneGraph != 0);
}

bool CollOctree::IsValidEntity(tEntity* entity)
{
    tDrawable* drawable = dynamic_cast<tDrawable*>(entity);
    return IsValidDrawable(drawable);
}

bool CollOctree::AddMesh(const rmt::Matrix& m, tGeometry* geo, int flag)
{
    if (geo == 0)
        return false;

    for (int i = 0; i < geo->GetNumPrimGroup(); ++i)
    {
        tPrimGroupStreamed* pgs = dynamic_cast<tPrimGroupStreamed*>(geo->GetPrimGroup(i));
        if (pgs != 0)
        {
            if (pgs->GetPrimType() == PDDI_PRIM_TRIANGLES)
            {
                tVertexList* vlist = pgs->GetVertexList();

                rmt::Vector in[3];
                rmt::Vector out[3];

                if (pgs->GetNumIndices() > 0)
                {
                    unsigned triCount = pgs->GetNumIndices() / 3;
                    for (unsigned v = 0; v < triCount; ++v)
                    {
                        in[0] = vlist->GetPositions()[pgs->GetIndices()[(v * 3)]];
                        in[1] = vlist->GetPositions()[pgs->GetIndices()[(v * 3) + 1]];
                        in[2] = vlist->GetPositions()[pgs->GetIndices()[(v * 3) + 2]];

                        m.Transform(3, in, out);

                        AddTriangle(out[0], out[1], out[2], flag);
                    }
                }
                else
                {
                    int triCount = vlist->GetNumVertex() / 3;
                    for (int v = 0; v < triCount; ++v)
                    {
                        in[0] = vlist->GetPositions()[(v * 3)];
                        in[1] = vlist->GetPositions()[(v * 3) + 1];
                        in[2] = vlist->GetPositions()[(v * 3) + 2];

                        m.Transform(3, in, out);

                        AddTriangle(out[0], out[1], out[2], flag);
                    }
                }
            }
            else if (pgs->GetPrimType() == PDDI_PRIM_TRISTRIP)
            {
                tVertexList* vlist = pgs->GetVertexList();

                rmt::Vector in[3];
                rmt::Vector out[3];

                if (pgs->GetNumIndices() > 0)
                {
                    unsigned triCount = pgs->GetNumIndices() - 2;
                    for (unsigned v = 0; v < triCount; ++v)
                    {
                        in[0] = vlist->GetPositions()[pgs->GetIndices()[v]];
                        in[1 + (v % 2)] = vlist->GetPositions()[pgs->GetIndices()[v + 1]];
                        in[2 - (v % 2)] = vlist->GetPositions()[pgs->GetIndices()[v + 2]];

                        m.Transform(3, in, out);

                        AddTriangle(out[0], out[1], out[2], flag);
                    }
                }
                else
                {
                    int triCount = vlist->GetNumVertex() - 2;
                    for (int v = 0; v < triCount; ++v)
                    {
                        in[0] = vlist->GetPositions()[v];
                        in[1 + (v % 2)] = vlist->GetPositions()[v + 1];
                        in[2 - (v % 2)] = vlist->GetPositions()[v + 2];

                        m.Transform(3, in, out);

                        AddTriangle(out[0], out[1], out[2], flag);
                    }
                }
            }
        }
    }

    return true;
}

bool CollOctree::AddMesh(tGeometry* geo, int flag)
{
    rmt::Matrix m;
    m.Identity();

    return AddMesh(m, geo, flag);
}

bool CollOctree::AddSceneGraphNode(sg::Node* node, int flag)
{
    if (node == 0)
        return false;

    // check to see if we have any drawables
    sg::Drawable* drawNode = dynamic_cast<sg::Drawable*>(node);
    if (drawNode != 0)
    {
        // verify its a mesh
        tGeometry* geo = dynamic_cast<tGeometry*>(drawNode->GetDrawable());
        if (geo != 0)
        {
            AddMesh(drawNode->GetWorldTransform(), geo, flag);
        }
    }

    // do children
    for (unsigned i = 0; i < node->GetNumChildren(); ++i)
    {
        AddSceneGraphNode(node->GetChild(i), flag);
    }

    return true;
}

bool CollOctree::AddSceneGraph(sg::Scenegraph* sceneGraph, int flag)
{
    if (sceneGraph == 0)
        return false;

    sceneGraph->UpdateTransform();
    return AddSceneGraphNode(sceneGraph->GetRoot(), flag);
}

bool CollOctree::AddDrawable(tDrawable* drawable, int flag)
{
    tGeometry* geo = dynamic_cast<tGeometry*>(drawable);
    if (geo != 0)
    {
        return AddMesh(geo, flag);
    }

    sg::Scenegraph* sceneGraph = dynamic_cast<sg::Scenegraph*>(drawable);
    if (sceneGraph != 0)
    {
        return AddSceneGraph(sceneGraph, flag);
    }

    return false;
}

bool CollOctree::AddEntity(tEntity* entity, int flag)
{
    tDrawable* drawable = dynamic_cast<tDrawable*>(entity);
    return AddDrawable(drawable, flag);
}

bool CollOctree::RemoveTriangles(int flag)
{
    return m_Root->RemoveTriangles(flag);
}

bool CollOctree::Clear()
{
    return m_Root->Clear();
}

bool CollOctree::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    rmt::Vector& point,
    rmt::Vector& normal,
    int* nodeCount,
    int* triCount,
    bool drawDebug,
    DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    return Intersect(rayOrg, rayDir, FLT_MAX, point, normal,
        nodeCount, triCount, drawDebug, drawLineFunc, drawLineFuncContext);
}

bool CollOctree::Intersect(const rmt::Vector& rayOrg,
    const rmt::Vector& rayDir,
    float rayMaxDist,
    rmt::Vector& point,
    rmt::Vector& normal,
    int* nodeCount,
    int* triCount,
    bool drawDebug,
    CollOctree::DrawLineFunction drawLineFunc,
    void* drawLineFuncContext) const
{
    if (nodeCount != 0)
    {
        *nodeCount = 0;
    }
    if (triCount != 0)
    {
        *triCount = 0;
    }
    
    float t = rayMaxDist;
    bool intersect = m_Root->Intersect(rayOrg, rayDir, rayMaxDist, t, normal,
                                       nodeCount, triCount,
                                       drawDebug, drawLineFunc, drawLineFuncContext);
    
    if (intersect)
    {
        point = rayDir;
        point.Scale(t);
        point.Add(rayOrg);
        
        return true;
    }
    else
    {
        return false;
    }
}


// End of file.

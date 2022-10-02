/*
 * choreoviewer/chengine/cvterrain.cpp
 */


#include <chengine/cvterrain.hpp>
#include <chengine/octtree.hpp>
#include <chcommon/interface.hpp>
#include <chengine/cvcontext.hpp>
#include <chengine/linebatcher.hpp>

#include <p3d/utility.hpp>
#include <p3d/drawable.hpp>

#include <stdlib.h>
#include <malloc.h>
#include <string.h>


//---------------------------------------------------------------------------
// class CVTerrain - implementation
//---------------------------------------------------------------------------

CVTerrain::CVTerrain(tContext* context):
    m_Context(context),

    m_IsDebugEnabled(false),
    m_NodeCount(0),
    m_TriCount(0),

    m_MaxEnabledGeometryCount(0),
    m_EnabledGeometryCount(0),
    m_EnabledGeometries(0)
{
    m_Octree = new CollOctree;
}

CVTerrain::~CVTerrain()
{
    for (int i = m_EnabledGeometryCount - 1; i >= 0; --i)
    {
        m_EnabledGeometries[i]->Release();
    }

    free(m_EnabledGeometries);
    delete m_Octree;
}

int CVTerrain::GetGeometryCount() const
{
    int geoCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj != 0)
    {
        if (CollOctree::IsValidEntity(dynamic_cast<tEntity*>(obj)))
        {
            ++geoCount;
        }

        obj = itor.Next();
    }

    return geoCount;
}

tDrawable* CVTerrain::GetGeometry(int index) const
{
    int geoCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj != 0)
    {
        if (CollOctree::IsValidEntity(dynamic_cast<tEntity*>(obj)))
        {
            if (geoCount == index)
                return dynamic_cast<tDrawable*>(obj);
            ++geoCount;
        }

        obj = itor.Next();
    }

    return 0;
}

int CVTerrain::FindEnabledGeometryIndex(tDrawable* geo) const
{
    for (int i = 0; i < m_EnabledGeometryCount; ++i)
    {
        if (geo == m_EnabledGeometries[i])
            return i;
    }

    return -1;
}

bool CVTerrain::IsGeometryEnabled(int index) const
{
    tDrawable* geo = GetGeometry(index);
    return (FindEnabledGeometryIndex(geo) >= 0);
}

int CVTerrain::AddEnabledGeometry(tDrawable* geo)
{
    // reallocate if necessary
    if (m_EnabledGeometryCount >= m_MaxEnabledGeometryCount)
    {
        if (m_MaxEnabledGeometryCount <= 0)
        {
            m_MaxEnabledGeometryCount = 1;
        }
        else
        {
            m_MaxEnabledGeometryCount *= 2;
        }
        
        m_EnabledGeometries = (tDrawable**)realloc(m_EnabledGeometries,
            m_MaxEnabledGeometryCount * sizeof(tDrawable*));
    }
    
    // add geo
    m_EnabledGeometries[m_EnabledGeometryCount] = geo;
    geo->AddRef();
    ++m_EnabledGeometryCount;

    // add geo
    m_Octree->AddDrawable(geo, (int)geo);
    
    return true;
}

void CVTerrain::RemoveEnabledGeometry(int index)
{
    // remove geo's triangles
    m_Octree->RemoveTriangles((int)m_EnabledGeometries[index]);

    // release geo
    m_EnabledGeometries[index]->Release();

    // dec geo count
    --m_EnabledGeometryCount;
    
    // shift array contents
    memmove(m_EnabledGeometries + index,
            m_EnabledGeometries + index + 1,
            (m_EnabledGeometryCount - index) * sizeof(tDrawable*));
}

void CVTerrain::SetIsGeometryEnabled(int index, bool enabled)
{
    tDrawable* geo = GetGeometry(index);
    int rIndex = FindEnabledGeometryIndex(geo);

    if (enabled)
    {
        if (rIndex >= 0)
            return;
        AddEnabledGeometry(geo);
    }
    else
    {
        RemoveEnabledGeometry(rIndex);
    }
}

void CVTerrain::Clear()
{
    for (int i = m_EnabledGeometryCount - 1; i >= 0; --i)
    {
        m_EnabledGeometries[i]->Release();
    }
    m_EnabledGeometryCount = 0;

    m_Octree->Clear();
}

static void CVTerrainDrawLine(const rmt::Vector& a, const rmt::Vector& b, tColour c, void* context)
{
    g_CVContext->GetCVLineBatcher()->DrawLine(a, b, c);
}

bool CVTerrain::Intersect(const rmt::Vector& rayOrg,
                          const rmt::Vector& rayDir,
                          rmt::Vector& point,
                          rmt::Vector& normal,
                          bool debug)
{
    if (debug)
    {
        return m_Octree->Intersect(rayOrg, rayDir, point, normal,
            &m_NodeCount, &m_TriCount, m_IsDebugEnabled, &CVTerrainDrawLine);
    }
    else
    {
        return m_Octree->Intersect(rayOrg, rayDir, point, normal);
    }
}

void CVTerrain::Display()
{
    for (int i = 0; i < m_EnabledGeometryCount; ++i)
    {
        m_EnabledGeometries[i]->Display();
    }

    if (m_IsDebugEnabled)
    {
        char tmp[256];
        sprintf(tmp, "Nodes Tested = %d", m_NodeCount);
        p3d::pddi->DrawString(tmp, 10, 10);
        sprintf(tmp, "Triangles Tested = %d", m_TriCount);
        p3d::pddi->DrawString(tmp, 10, 30);
    }
}


//---------------------------------------------------------------------------
// CVTerrain - DLL interface
//---------------------------------------------------------------------------

int CV_CALLCONV CVTerrainGetCount()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->GetCVTerrain()->GetGeometryCount();
}

int CV_CALLCONV CVTerrainGetName(int index, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;

    tDrawable* geo = g_CVContext->GetCVTerrain()->GetGeometry(index);
    CVContext::GetEntityName(geo, name, maxLen);

    return 0;
}

int CV_CALLCONV CVTerrainIsEnabled(int index)
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->GetCVTerrain()->IsGeometryEnabled(index);
}

int CV_CALLCONV CVTerrainSetIsEnabled(int index, int enabled)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->GetCVTerrain()->SetIsGeometryEnabled(index, (enabled != 0));
    return 0;
}

int CV_CALLCONV CVTerrainGetStats()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->GetCVTerrain()->IsDebugEnabled();
}

int CV_CALLCONV CVTerrainSetStats(int stats)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->GetCVTerrain()->SetIsDebugEnabled(stats != 0);
    return 1;
}


// End of file.

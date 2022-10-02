/*
 * choreoviewer/chengine/cvterrain.hpp
 */


#ifndef CHOREOVIEWER_CHENGINE_CVTERRAIN_HPP
#define CHOREOVIEWER_CHENGINE_CVTERRAIN_HPP


#include <radmath/radmath.hpp>


class tDrawable;
class tContext;
class CollOctree;


//---------------------------------------------------------------------------
// class CVTerrain
//---------------------------------------------------------------------------

class CVTerrain
{
public:

    CVTerrain(tContext* context);
    virtual ~CVTerrain();

    bool IsDebugEnabled() const
        { return m_IsDebugEnabled; }
    void SetIsDebugEnabled(bool isEnabled)
        { m_IsDebugEnabled = isEnabled; }

    int GetGeometryCount() const;
    tDrawable* GetGeometry(int index) const;
    bool IsGeometryEnabled(int index) const;
    void SetIsGeometryEnabled(int index, bool enabled);

    void Clear();

    bool Intersect(const rmt::Vector& rayOrg,
                   const rmt::Vector& rayDir,
                   rmt::Vector& point,
                   rmt::Vector& normal,
                   bool debug = false);

    void Display();

private:

    int FindEnabledGeometryIndex(tDrawable* geo) const;
    int AddEnabledGeometry(tDrawable* geo);
    void RemoveEnabledGeometry(int index);

    tContext* m_Context;

    bool m_IsDebugEnabled;
    int m_NodeCount;
    int m_TriCount;

    int m_MaxEnabledGeometryCount;
    int m_EnabledGeometryCount;
    tDrawable** m_EnabledGeometries;

    CollOctree* m_Octree;
};


#endif

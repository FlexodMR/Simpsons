/*
 * choreoviewer/chengine/cvcontext.hpp
 */


#ifndef CHOREOVIEWER_CHENGINE_CVCONTEXT_HPP
#define CHOREOVIEWER_CHENGINE_CVCONTEXT_HPP


#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>

#include <radmath/radmath.hpp>
#include <p3d/p3dtypes.hpp>


class tEntity;
class tPlatform;
class tContext;
class tView;
class tPointCamera;
class tDirectionalLight;
class tPose;
class pddiShader;

class CVTerrain;
class CVPuppet;
class CVLineBatcher;


//---------------------------------------------------------------------------
// class CVContext
//---------------------------------------------------------------------------

class CVContext
{
public:

    enum
    {
        MAX_FPS_COUNT = 10
    };

    CVContext(HWND hwnd);
    virtual ~CVContext();

    tContext* GetContext()
        { return m_Context; }

    bool Open();
    bool Close();

    void ViewResize(int w, int h);

    bool IsPDDIStatsEnabled() const;
    void SetIsPDDIStatsEnabled(bool enabled);

    bool LoadP3DFile(const char* path);
    bool LoadChoreoScript(const char* path);
	bool SaveChoreoScript(const char* path);

    void Update();

    void MouseDown(int button, int shift, int x, int y);
    void MouseMove(int button, int shift, int x, int y);
    void MouseUp(int button, int shift, int x, int y);
    void MouseWheel(int scroll);

    float SimulationGetFPS() const;
    float SimulationGetRate() const
        { return m_SimRate; }
    void SimulationSetRate(float simRate);

    bool IsCameraLocked() const
        { return m_IsCameraLocked; }
    void SetIsCameraLocked(bool cameraLock)
        { m_IsCameraLocked = cameraLock; }

    static bool GetEntityName(tEntity* entity, char* name, int maxLen);

    void InventoryClear();
    int InventoryGetEntityCount() const;
    bool InventoryGetEntity(int index,
                            char* name, int nameLen,
                            char* type, int typeLen) const;

    CVTerrain* GetCVTerrain() const
        { return m_CVTerrain; }
    CVPuppet* GetCVPuppet() const
        { return m_CVPuppet; }
    CVLineBatcher* GetCVLineBatcher() const
        { return m_CVLineBatcher; }

    float GetModelScale() const
        { return m_ModelScale; }
    void SetModelScale(float modelScale)
        { m_ModelScale = modelScale; }

    tPointCamera* GetCamera() const
        { return m_Camera; }

    bool GetPerformanceStats() const
        { return m_PerformanceStats; }
    void SetPerformanceStats(bool perfStats)
        { m_PerformanceStats = perfStats; }

private:

    void CameraPan(int dx, int dy);
    void CameraZoom(int dz);
    void CameraRotate(int dx, int dy);

    HWND m_HWnd;

    tContext* m_Context;
    tView* m_View;
    tPointCamera* m_Camera;
    tDirectionalLight* m_Light;
    pddiShader* m_Shader;

    float m_CurrentTime;

    rmt::Vector m_CameraTarget;
    float m_CameraRotateX;
    float m_CameraRotateY;
    float m_CameraDistance;

    int m_MouseCapture;
    int m_MouseX;
    int m_MouseY;

    bool m_IsCameraLocked;

    CVTerrain* m_CVTerrain;
    CVPuppet* m_CVPuppet;
    CVLineBatcher* m_CVLineBatcher;

    float m_ModelScale;

    float m_FPS[MAX_FPS_COUNT];
    int m_FPSIndex;
    float m_SimRate;

    bool m_PerformanceStats;
};


extern CVContext* g_CVContext;


#endif

/*
 * choreoviewer/chengine/cvcontext.cpp
 */


#include <chengine/cvcontext.hpp>
#include <chcommon/interface.hpp>
#include <chengine/cvterrain.hpp>
#include <chengine/cvpuppet.hpp>
#include <chengine/linebatcher.hpp>

#include <typeinfo>

#include <radtime.hpp>

#include <p3d/context.hpp>
#include <p3d/utility.hpp>
#include <p3d/view.hpp>
#include <p3d/directionallight.hpp>
#include <p3d/pointcamera.hpp>
#include <p3d/geometry.hpp>
#include <p3d/anim/drawablepose.hpp>

#include <choreo/load.hpp>
#include <choreo/bank.hpp>
#include <choreo/locomotion.hpp>
#include <choreo/utility.hpp>


#ifdef RAD_DEBUG
static const char* pddiDLL = "pddidx8d.dll";
#endif

#ifdef RAD_TUNE
static const char* pddiDLL = "pddidx8t.dll";
#endif

#ifdef RAD_RELEASE
static const char* pddiDLL = "pddidx8r.dll";
#endif


// global context reference
CVContext* g_CVContext = 0;


//---------------------------------------------------------------------------
// class CVContext - implementation
//---------------------------------------------------------------------------

CVContext::CVContext(HWND hwnd):
    m_HWnd(hwnd),

    m_Context(0),
    m_View(0),
    m_Camera(0),
    m_Light(0),
    m_Shader(0),

    m_CurrentTime(0.0f),

    m_MouseCapture(0),
    m_MouseX(0),
    m_MouseY(0),

    m_IsCameraLocked(true),

    m_CVTerrain(0),
    m_CVPuppet(0),
    m_CVLineBatcher(0),

    m_ModelScale(1.0f),

    m_FPSIndex(0),
    m_SimRate(1.0f),

    m_PerformanceStats(false)
{
    memset(m_FPS, 0, sizeof(m_FPS));
}

CVContext::~CVContext()
{
    delete m_CVLineBatcher;
    delete m_CVPuppet;
    delete m_CVTerrain;

    tRefCounted::Release(m_Shader);
    tRefCounted::Release(m_Light);
    tRefCounted::Release(m_Camera);
    tRefCounted::Release(m_View);
}

bool CVContext::Open()
{
    // p3d context init
    RECT wndRect;
    GetWindowRect(m_HWnd, &wndRect);

    tContextInitData init;
    init.hwnd = m_HWnd;
    init.displayMode = PDDI_DISPLAY_WINDOW;
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    int wndWidth = wndRect.right - wndRect.left;
    int wndHeight = wndRect.bottom - wndRect.top;
    init.xsize = wndWidth;
    init.ysize = wndHeight;
    init.bpp = 32;
    strcpy(init.PDDIlib, pddiDLL);

    p3d::platform->SetActiveContext(0);
    m_Context = p3d::platform->CreateContext(&init);
    if (m_Context == 0)
        return false;

    p3d::platform->SetActiveContext(m_Context);

    // Call into PDDI to enable Z-buffering.
    p3d::pddi->EnableZBuffer(true);

    // This call installs chunk handlers for all the primary chunk types that
    // Pure3D supports.  This includes textures, materials, geometries, and the
    // like.  
    p3d::InstallDefaultLoaders();

    // install choreo script handlers
    choreo::RegisterDefaultScriptHandlers();
    choreo::InstallDefaultChunkHandlers();

    // p3d view init
    m_View = new tView;
    m_View->AddRef();

    m_View->SetBackgroundColour(tColour(64, 64, 128));
    m_View->SetAmbientLight(tColour(40, 40, 40));

    // p3d light init
    m_Light = new tDirectionalLight;
    m_Light->AddRef();

    m_Light->SetDirection(0.0f, 0.0f, 1.0f);
    m_Light->SetColour(tColour(255, 255, 255));
    m_View->AddLight(m_Light);

    // p3d camera init
    m_Camera = new tPointCamera;
    m_Camera->AddRef();
    m_Camera->SetNearPlane(0.01f);
    m_Camera->SetFarPlane(5000.0f);
    m_Camera->SetFOV(rmt::DegToRadian(90.0f), (float)wndWidth / (float)wndHeight);
    m_View->SetCamera(m_Camera);

    m_CameraTarget.Clear();
    m_CameraRotateX = rmt::DegToRadian(-45.0f);
    m_CameraRotateY = 0.0f;
    m_CameraDistance = 5.0f;

    // pddi shader
#ifdef CHOREO_USE_P3D_V14
    m_Shader = p3d::device->NewShader(p3d::pddi, "simple");
#else
    m_Shader = p3d::device->NewShader("simple");
#endif
    m_Shader->AddRef();
    m_Shader->SetInt(PDDI_SP_ISLIT, 0);

    // terrain
    m_CVTerrain = new CVTerrain(m_Context);

    // puppet
    m_CVPuppet = new CVPuppet(m_Context);

    // line batcher
    m_CVLineBatcher = new CVLineBatcher;

    return true;
}

bool CVContext::Close()
{
    // linebatcher release
    delete m_CVLineBatcher;
    m_CVLineBatcher = 0;

    // puppet release
    delete m_CVPuppet;
    m_CVPuppet = 0;

    // terrain release
    delete m_CVTerrain;
    m_CVTerrain = 0;

    // p3d release stuff
    tRefCounted::Release(m_Shader);
    tRefCounted::Release(m_Light);
    tRefCounted::Release(m_Camera);
    tRefCounted::Release(m_View);

    // p3d context destroy
    if (m_Context != 0)
    {
        p3d::platform->DestroyContext(m_Context);
        m_Context = 0;
    }

    return true;
}

void CVContext::ViewResize(int w, int h)
{
    if (w <= 0)
        w = 1;
    if (h <= 0)
        h = 1;

    RECT wndRect;
    GetWindowRect(m_HWnd, &wndRect);
    int wndWidth = wndRect.right - wndRect.left;
    if (wndWidth <= 0)
        wndWidth = 1;
    int wndHeight = wndRect.bottom - wndRect.top;
    if (wndHeight <= 0)
        wndHeight = 1;

    if (w > wndWidth)
        w = wndWidth;
    if (h > wndHeight)
        h = wndHeight;

    m_View->SetWindow(0.0f, 0.0f, (float)w / (float)wndWidth, (float)h / (float)wndHeight);
    m_Camera->SetFOV(rmt::DegToRadian(90.0f), (float)w / (float)h);
}

bool CVContext::IsPDDIStatsEnabled() const
{
    return p3d::pddi->IsStatsOverlayEnabled();
}

void CVContext::SetIsPDDIStatsEnabled(bool enabled)
{
    p3d::pddi->EnableStatsOverlay(enabled);
}

bool CVContext::LoadP3DFile(const char* path)
{
#ifdef CHOREO_USE_P3D_V14
    return (m_Context->GetLoadManager()->Load(p3d::openFile(path)) == LOAD_OK);
#else
    return (m_Context->GetLoadManager()->Load(new tLoadRequest(p3d::openFile(path))) == LOAD_OK);
#endif
}

bool CVContext::LoadChoreoScript(const char* path)
{
    return choreo::ReadFromScriptPath(path, m_Context->GetInventory());
}

bool CVContext::SaveChoreoScript(const char* path)
{
#ifdef CHOREO_USE_P3D_V14
    return false;
#else
	return choreo::WriteToScriptPath(path, m_Context->GetInventory());
#endif
}

void CVContext::Update()
{
    static unsigned totalTime = 0;
    unsigned totalTimeOrg = radTimeGetMicroseconds();

    // do time
    float deltaTime;
    {
        float newTime = (float)radTimeGetMilliseconds() / 1000.0f;
        deltaTime = newTime - m_CurrentTime;

        if (deltaTime < 0.0f)
        {
            deltaTime = 0.0f;
        }
        else
        {
            m_CurrentTime = newTime;
        }

        // for debugging
        if (deltaTime > 1.0f)
        {
            deltaTime = 1.0f / 60.0f;
        }
        else
        {
            // do fps
            m_FPS[m_FPSIndex] = deltaTime;
            m_FPSIndex = (m_FPSIndex + 1) % MAX_FPS_COUNT;
        }
    }

    float simDeltaTime = m_SimRate * deltaTime;

    unsigned puppetTimeOrg = radTimeGetMicroseconds();

    // update puppet
    m_CVPuppet->Advance(simDeltaTime, this);

    unsigned puppetTimeFinal = radTimeGetMicroseconds();
    unsigned puppetTime;
    if (puppetTimeFinal > puppetTimeOrg)
    {
        puppetTime = puppetTimeFinal - puppetTimeOrg;
    }
    else
    {
        puppetTime = 0;
    }

    // update camera & light
    {
        if (m_IsCameraLocked)
        {
            rmt::Vector desiredTarget = m_CVPuppet->GetCameraTarget();

            rmt::Vector delta = desiredTarget;
            delta.Sub(m_CameraTarget);
            float mag = delta.NormalizeSafe();

            static const float cameraSpeed = 1.5f;  // m/s
            float maxMag = cameraSpeed * deltaTime * mag;
            if (mag > maxMag)
            {
                mag = maxMag;
            }

            delta.Scale(mag);
            m_CameraTarget.Add(delta);
            m_CameraTarget.x = desiredTarget.x;
            m_CameraTarget.z = desiredTarget.z;
        }

        m_Camera->SetTarget(m_CameraTarget);
        rmt::Matrix mY;
        mY.FillRotateY(m_CameraRotateY);
        rmt::Matrix mX;
        mX.FillRotateX(m_CameraRotateX);
        rmt::Vector cameraPos(0.0f, 0.0f, m_CameraDistance);
        cameraPos.Rotate(mX);
        cameraPos.Rotate(mY);
        cameraPos.Add(m_CameraTarget);
        m_Camera->SetPosition(cameraPos);

        rmt::Vector lightDir;
        lightDir = m_CameraTarget;
        lightDir.Sub(cameraPos);
#ifdef CHOREO_USE_P3D_V14
        m_Light->SetDirection(&lightDir);
#else
        m_Light->SetDirection(lightDir);
#endif
    }

    static unsigned renderTime = 0;
    unsigned renderTimeOrg = radTimeGetMicroseconds();

    unsigned simTime;
    if (renderTimeOrg > totalTimeOrg)
    {
        simTime = renderTimeOrg - totalTimeOrg;
    }
    else
    {
        simTime = 0;
    }

    m_Context->BeginFrame();
    m_View->BeginRender();

    // draw origin & grid
    {
        rmt::Matrix m;
        m.Identity();
        m_CVLineBatcher->DrawGridAndAxes(m, m_ModelScale, 10, m_ModelScale, tColour(127,127,127));
    }

    m_CVTerrain->Display();
    m_CVPuppet->Display(this);
    m_CVLineBatcher->Display();

    if (m_PerformanceStats)
    {
        char tmp[256];
        sprintf(tmp, "TotalTime = %d.%03d ms, %g fps", int(totalTime / 1000), int(totalTime % 1000), 1000000.0f / (float)totalTime);
        p3d::pddi->DrawString(tmp, 10, 10);
        sprintf(tmp, "  SimTime = %d.%03d ms", int(simTime / 1000), int(simTime % 1000));
        p3d::pddi->DrawString(tmp, 10, 30);
        sprintf(tmp, "    PuppetTime = %d.%03d ms", int(puppetTime / 1000), int(puppetTime % 1000));
        p3d::pddi->DrawString(tmp, 10, 50);
        sprintf(tmp, "  RenderTime = %d.%03d ms", int(renderTime / 1000), int(renderTime % 1000));
        p3d::pddi->DrawString(tmp, 10, 70);
    }

    RECT wndRect;
    GetWindowRect(m_HWnd, &wndRect);
    float wndHeight = wndRect.bottom - wndRect.top;
    float l, t, r, b;
    m_View->GetWindow(&l, &t, &r, &b);
    m_CVPuppet->DisplayFootPhase(10.0f, (b* wndHeight) - 30.0f);

    m_View->EndRender();
    m_Context->EndFrame();

    unsigned totalTimeFinal = radTimeGetMicroseconds();
    if (totalTimeFinal > totalTimeOrg)
    {
        totalTime = totalTimeFinal - totalTimeOrg;
    }
    else
    {
        totalTime = 0;
    }

    if (totalTimeFinal > renderTimeOrg)
    {
        renderTime = totalTimeFinal - renderTimeOrg;
    }
    else
    {
        renderTime = 0;
    }
}

void CVContext::MouseDown(int button, int shift, int x, int y)
{
    if (m_MouseCapture == 0)
    {
        SetCapture(m_HWnd);
        m_MouseCapture = 1;
    }

    m_MouseX = x;
    m_MouseY = y;
}

void CVContext::MouseMove(int button, int shift, int x, int y)
{
    if (m_MouseCapture == 0)
        return;
    if (GetCapture() != m_HWnd)
        return;

    int dx = x - m_MouseX;
    int dy = y - m_MouseY;
    m_MouseX = x;
    m_MouseY = y;

    if ((button & MK_LBUTTON) != 0)
    {
        if ((button & MK_MBUTTON) != 0)
        {
            CameraZoom(dx * 10);
        }
        else
        {
            CameraRotate(dx, dy);
        }
    }
    else if ((button & MK_MBUTTON) != 0)
    {
        CameraPan(dx, dy);
    }
}

void CVContext::MouseUp(int button, int shift, int x, int y)
{
    MouseMove(button, shift, x, y);

    if (m_MouseCapture == 0)
        return;

    ReleaseCapture();
    m_MouseCapture = 0;
}

void CVContext::MouseWheel(int scroll)
{
    CameraZoom(scroll);
}

void CVContext::CameraPan(int dx, int dy)
{
    RECT wndRect;
    GetWindowRect(m_HWnd, &wndRect);

    rmt::Vector v((float)-dx / (float)(wndRect.right - wndRect.left),
                  (float)dy / (float)(wndRect.bottom - wndRect.top), 0.0f);
    rmt::Vector a, b;
    m_Camera->ViewToWorld(v, &a, &b);
    b.Sub(a);
    b.NormalizeSafe();
    b.Scale(m_CameraDistance - m_Camera->GetNearPlane());
    b.Add(a);
    m_CameraTarget = b;
}

void CVContext::CameraZoom(int dz)
{
	m_CameraDistance += ((float)-dz * 0.001f * m_CameraDistance);

	if (m_CameraDistance < 0.1f)
	{
		m_CameraDistance = 0.1f;
	}
}

void CVContext::CameraRotate(int dx, int dy)
{
    m_CameraRotateX += ((float)-dy * 0.01f);

    if (m_CameraRotateX > rmt::DegToRadian(89.9f))
    {
        m_CameraRotateX = rmt::DegToRadian(89.9f);
    }

    if (m_CameraRotateX < rmt::DegToRadian(-89.9f))
    {
        m_CameraRotateX = rmt::DegToRadian(-89.9f);
    }

    m_CameraRotateY += ((float)dx * 0.01f);
}

float CVContext::SimulationGetFPS() const
{
    float fps = 0.0f;

    for (int i = 0; i < MAX_FPS_COUNT; ++i)
    {
        fps += m_FPS[i];
    }

    fps /= (float)MAX_FPS_COUNT;

    if (!rmt::Epsilon(fps, 0.0f))
    {
        fps = 1.0f / fps;
    }

    return fps;
}

void CVContext::SimulationSetRate(float simRate)
{
    m_SimRate = simRate;

    if (m_SimRate < 0.0f)
    {
        m_SimRate = 0.0f;
    }
}

bool CVContext::GetEntityName(tEntity* entity, char* name, int maxLen)
{
    if (maxLen > 0)
    {
        name[0] = 0;
    }

    if (entity == 0)
        return false;

    if (entity->GetName() != 0)
    {
        _snprintf(name, maxLen, "%s", entity->GetName());
    }
    else
    {
        _snprintf(name, maxLen, "0x%016I64x", entity->GetUID());
    }

    if (maxLen > 0)
    {
        name[maxLen - 1] = 0;
    }

    return true;
}

void CVContext::InventoryClear()
{
    m_CVPuppet->Clear();
    m_CVTerrain->Clear();

    if (m_Context != 0)
    {
        m_Context->GetInventory()->RemoveAllElements();
    }
}

int CVContext::InventoryGetEntityCount() const
{
    return 0;
    if (m_Context == 0)
        return 0;

    int entityCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        ++entityCount;
        obj = itor.Next();
    }

    return entityCount;
}

bool CVContext::InventoryGetEntity(int index,
                                   char* name, int nameLen,
                                   char* type, int typeLen) const
{
    int entityCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        if (entityCount == index)
        {
            GetEntityName(dynamic_cast<tEntity*>(obj), name, nameLen);
            choreo::StrPrintf(type, typeLen, "%s", typeid(*obj).name());

            return true;
        }

        ++entityCount;
        obj = itor.Next();
    }

    return false;
}


//---------------------------------------------------------------------------
// CVContext - DLL interface
//---------------------------------------------------------------------------

int CV_CALLCONV CVContextOpen(HWND hwnd)
{
    P3DASSERT(g_CVContext == 0);
    if (g_CVContext != 0)
        return -1;

    g_CVContext = new CVContext(hwnd);
    if (!g_CVContext->Open())
    {
        delete g_CVContext;
        return -1;
    }

    return 1;
}

int CV_CALLCONV CVContextClose()
{
    if (g_CVContext == 0)
        return 0;

    if (!g_CVContext->Close())
    {
        delete g_CVContext;
        return -1;
    }

    delete g_CVContext;
    return 0;
}

int CV_CALLCONV CVContextIsOpen()
{
    return (g_CVContext != 0);
}

int CV_CALLCONV CVContextViewResize(int w, int h)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->ViewResize(w, h);
    return 0;
}

int CV_CALLCONV CVContextIsPDDIStatsEnabled()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->IsPDDIStatsEnabled();
}

int CV_CALLCONV CVContextSetIsPDDIStatsEnabled(int statsEnabled)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->SetIsPDDIStatsEnabled(statsEnabled != 0);
    return 1;
}

int CV_CALLCONV CVContextLoadP3DFile(const char* path)
{
    if (g_CVContext == 0)
        return -1;

    if (!g_CVContext->LoadP3DFile(path))
        return -1;

    return 0;
}

int CV_CALLCONV CVContextLoadChoreoScript(const char* path)
{
    if (g_CVContext == 0)
        return -1;

    if (!g_CVContext->LoadChoreoScript(path))
        return -1;

    return 0;
}

int CV_CALLCONV CVContextSaveChoreoScript(const char* path)
{
    if (g_CVContext == 0)
        return -1;

    if (!g_CVContext->SaveChoreoScript(path))
        return -1;

    return 0;
}

int CV_CALLCONV CVContextUpdate()
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->Update();

    return 0;
}

int CV_CALLCONV CVContextMouseDown(int button, int shift, int x, int y)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->MouseDown(button, shift, x, y);

    return 0;
}

int CV_CALLCONV CVContextMouseMove(int button, int shift, int x, int y)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->MouseMove(button, shift, x, y);

    return 0;
}

int CV_CALLCONV CVContextMouseUp(int button, int shift, int x, int y)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->MouseUp(button, shift, x, y);

    return 0;
}

int CV_CALLCONV CVContextMouseWheel(int scroll)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->MouseWheel(scroll);

    return 0;
}

int CV_CALLCONV CVContextGetPerformanceStats()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->GetPerformanceStats();
}

int CV_CALLCONV CVContextSetPerformanceStats(int perfStats)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->SetPerformanceStats(perfStats != 0);
    return 0;
}

int CV_CALLCONV CVSimulationGetFPS(float* fps)
{
    if (fps == 0)
        return -1;
    *fps = 0.0f;

    if (g_CVContext == 0)
        return 0;

    *fps = g_CVContext->SimulationGetFPS();
    return 0;
}

int CV_CALLCONV CVSimulationGetRate(float* rate)
{
    if (rate == 0)
        return -1;
    *rate = 0.0f;

    if (g_CVContext == 0)
        return 0;

    *rate = g_CVContext->SimulationGetRate();
    return 0;
}

int CV_CALLCONV CVSimulationSetRate(float rate)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->SimulationSetRate(rate);
    return 0;
}

int CV_CALLCONV CVContextGetCameraLock()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->IsCameraLocked();
}

int CV_CALLCONV CVContextSetCameraLock(int cameraLock)
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->SetIsCameraLocked(cameraLock != 0);
    return 0;
}

int CV_CALLCONV CVInventoryClear()
{
    if (g_CVContext == 0)
        return 0;

    g_CVContext->InventoryClear();

    return 0;
}

int CV_CALLCONV CVInventoryGetEntityCount()
{
    if (g_CVContext == 0)
        return 0;

    return g_CVContext->InventoryGetEntityCount();
}

int CV_CALLCONV CVInventoryGetEntity(int index, char* name, int nameLen, char* type, int typeLen)
{
    if (g_CVContext == 0)
        return 0;

    if (!g_CVContext->InventoryGetEntity(index, name, nameLen, type, typeLen))
    {
        return false;
    }

    return true;
}


// End of file.

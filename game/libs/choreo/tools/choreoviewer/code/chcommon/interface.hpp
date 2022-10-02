/*
 * choreoviewer/chcommon/interface.hpp
 */


#ifndef CHOREOVIEWER_CHCOMMON_INTERFACE_HPP
#define CHOREOVIEWER_CHCOMMON_INTERFACE_HPP


#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>


#ifdef CHOREOVIEWER_ENGINE
#   define CV_IMPORT __declspec(dllexport)
#else
#   define CV_IMPORT __declspec(dllimport)
#endif


#define CV_CALLCONV __cdecl


extern "C"
{


CV_IMPORT int CV_CALLCONV CVPlatformOpen(HWND hwnd);
CV_IMPORT int CV_CALLCONV CVPlatformClose();

CV_IMPORT int CV_CALLCONV CVContextOpen(HWND hwnd);
CV_IMPORT int CV_CALLCONV CVContextClose();
CV_IMPORT int CV_CALLCONV CVContextIsOpen();
CV_IMPORT int CV_CALLCONV CVContextViewResize(int w, int h);
CV_IMPORT int CV_CALLCONV CVContextIsPDDIStatsEnabled();
CV_IMPORT int CV_CALLCONV CVContextSetIsPDDIStatsEnabled(int statsEnabled);

CV_IMPORT int CV_CALLCONV CVContextLoadP3DFile(const char* path);
CV_IMPORT int CV_CALLCONV CVContextLoadChoreoScript(const char* path);
CV_IMPORT int CV_CALLCONV CVContextSaveChoreoScript(const char* path);

CV_IMPORT int CV_CALLCONV CVContextUpdate();

CV_IMPORT int CV_CALLCONV CVContextMouseDown(int button, int shift, int x, int y);
CV_IMPORT int CV_CALLCONV CVContextMouseMove(int button, int shift, int x, int y);
CV_IMPORT int CV_CALLCONV CVContextMouseUp(int button, int shift, int x, int y);
CV_IMPORT int CV_CALLCONV CVContextMouseWheel(int scroll);

CV_IMPORT int CV_CALLCONV CVSimulationGetFPS(float* fps);
CV_IMPORT int CV_CALLCONV CVSimulationGetRate(float* rate);
CV_IMPORT int CV_CALLCONV CVSimulationSetRate(float rate);

CV_IMPORT int CV_CALLCONV CVContextGetCameraLock();
CV_IMPORT int CV_CALLCONV CVContextSetCameraLock(int cameraLock);

CV_IMPORT int CV_CALLCONV CVContextGetPerformanceStats();
CV_IMPORT int CV_CALLCONV CVContextSetPerformanceStats(int perfStats);

CV_IMPORT int CV_CALLCONV CVInventoryClear();
CV_IMPORT int CV_CALLCONV CVInventoryGetEntityCount();
CV_IMPORT int CV_CALLCONV CVInventoryGetEntity(int index, char* name, int nameLen, char* type, int typeLen);

CV_IMPORT int CV_CALLCONV CVTerrainGetCount();
CV_IMPORT int CV_CALLCONV CVTerrainGetName(int index, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVTerrainIsEnabled(int index);
CV_IMPORT int CV_CALLCONV CVTerrainSetIsEnabled(int index, int enabled);
CV_IMPORT int CV_CALLCONV CVTerrainGetStats();
CV_IMPORT int CV_CALLCONV CVTerrainSetStats(int stats);

CV_IMPORT int CV_CALLCONV CVPuppetGetModelCount();
CV_IMPORT int CV_CALLCONV CVPuppetGetModel(int modelIndex, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVPuppetGetModelIndex();
CV_IMPORT int CV_CALLCONV CVPuppetSetModelIndex(int modelIndex);
CV_IMPORT int CV_CALLCONV CVPuppetGetRenderStyle();
CV_IMPORT int CV_CALLCONV CVPuppetSetRenderStyle(int renderStyle);
CV_IMPORT int CV_CALLCONV CVPuppetGetRenderSkeleton();
CV_IMPORT int CV_CALLCONV CVPuppetSetRenderSkeleton(int renderSkeleton);
CV_IMPORT int CV_CALLCONV CVPuppetGetBankCount();
CV_IMPORT int CV_CALLCONV CVPuppetGetBank(int bankIndex, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVPuppetGetBankIndex();
CV_IMPORT int CV_CALLCONV CVPuppetSetBankIndex(int bankIndex);
CV_IMPORT int CV_CALLCONV CVPuppetGetLocomotionCount();
CV_IMPORT int CV_CALLCONV CVPuppetGetLocomotion(int locoIndex, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVPuppetGetLocomotionIndex();
CV_IMPORT int CV_CALLCONV CVPuppetSetLocomotionIndex(int locoIndex);
CV_IMPORT int CV_CALLCONV CVPuppetGetSteering();
CV_IMPORT int CV_CALLCONV CVPuppetSetSteering(int steering);
CV_IMPORT int CV_CALLCONV CVPuppetGetAnimationCount();
CV_IMPORT int CV_CALLCONV CVPuppetGetAnimation(int animIndex, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVPuppetGetAnimationIndex(int animSlot);
CV_IMPORT int CV_CALLCONV CVPuppetSetAnimationIndex(int animSlot, int animIndex);
CV_IMPORT int CV_CALLCONV CVPuppetGetAnimationInterrupt(int animSlot);
CV_IMPORT int CV_CALLCONV CVPuppetSetAnimationInterrupt(int animSlot, int interrupt);
CV_IMPORT int CV_CALLCONV CVPuppetPlayAnimation(int animSlot);
CV_IMPORT int CV_CALLCONV CVPuppetStopAll();

CV_IMPORT int CV_CALLCONV CVPuppetIsLegIKEnabled();
CV_IMPORT int CV_CALLCONV CVPuppetSetIsLegIKEnabled(int isEnabled);
CV_IMPORT int CV_CALLCONV CVPuppetIsFootPhaseEnabled();
CV_IMPORT int CV_CALLCONV CVPuppetSetIsFootPhaseEnabled(int isEnabled);

CV_IMPORT int CV_CALLCONV CVPuppetGetAttachPropCount();
CV_IMPORT int CV_CALLCONV CVPuppetGetAttachProp(int propIndex, char* name, int maxLen);
CV_IMPORT int CV_CALLCONV CVPuppetGetAttachPropIndex();
CV_IMPORT int CV_CALLCONV CVPuppetSetAttachPropIndex(int propIndex);
CV_IMPORT int CV_CALLCONV CVPuppetGetAttachJoint();
CV_IMPORT int CV_CALLCONV CVPuppetSetAttachJoint(int jointIndex);

CV_IMPORT int CV_CALLCONV CVReplayGetBufferTime(float* bufferTime);
CV_IMPORT int CV_CALLCONV CVReplayGetPlaybackTime(float* playbackTime);
CV_IMPORT int CV_CALLCONV CVReplaySetPlaybackTime(float playbackTime);
CV_IMPORT int CV_CALLCONV CVReplayGetRecording();
CV_IMPORT int CV_CALLCONV CVReplaySetRecording(int isRecording);
CV_IMPORT int CV_CALLCONV CVReplayGetPause();
CV_IMPORT int CV_CALLCONV CVReplaySetPause(int isPaused);


} // extern "C"


#endif

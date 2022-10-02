#include "p3d/pure3d.hpp"

#include "scripter.hpp"

static void SetFillMode(pddiFillMode mode)
{
   p3d::pddi->SetFillMode(mode);
}

static void SetCullMode(pddiCullMode mode)
{
   p3d::pddi->SetCullMode(mode);
}

static void SetZWrite(bool zWrite)
{
   p3d::pddi->SetZWrite(zWrite);
}

static void EnableStatsOverlay(bool enable)
{
   p3d::pddi->EnableStatsOverlay(enable);
}

//-------------------------------------------------------------------
void PDDIBindings(tScripter* scripter)
{
   scripter->SetConstant("solid", 0);
   scripter->SetConstant("wire", 1);
   scripter->SetConstant("point", 2);
   scripter->SetConstant("none", 0);
   scripter->SetConstant("ccw", 1);
   scripter->SetConstant("cw", 2);

   scripter->SetFunction("fillMode", (void*)SetFillMode, "i", NULL);
   scripter->SetFunction("cullMode", (void*)SetCullMode, "i", NULL);
   scripter->SetFunction("zWrite", (void*)SetZWrite, "i", NULL);
   scripter->SetFunction("statsOverlay", (void*)EnableStatsOverlay, "i", NULL);
}

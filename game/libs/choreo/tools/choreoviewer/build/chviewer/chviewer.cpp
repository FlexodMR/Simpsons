//---------------------------------------------------------------------------
#include <vcl.h>
#include "../../code/chcommon/interface.hpp"
#pragma hdrstop

#include "../../code/chviewer/main.h"
USERES("chviewer.res");
USEFORM("..\..\code\chviewer\main.cpp", MainForm);
USEFORM("..\..\code\chviewer\terrain.cpp", TerrainFrame); /* TFrame: File Type */
USEFORM("..\..\code\chviewer\puppet.cpp", PuppetFrame); /* TFrame: File Type */
USEFORM("..\..\code\chviewer\inventory.cpp", InventoryFrame); /* TFrame: File Type */
USEFORM("..\..\code\chviewer\simulation.cpp", SimulationFrame); /* TFrame: File Type */
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE hInstance,
               HINSTANCE hPrevInstance,
               LPSTR lpCmdLine,
               int nCmdShow)
{
    try
    {
        Application->Initialize();
        Application->Title = "Choreo Viewer";
        Application->CreateForm(__classid(TMainForm), &MainForm);

        Application->Run();
    }
    catch (Exception &exception)
    {
        Application->ShowException(&exception);
    }
    return 0;
}
//---------------------------------------------------------------------------

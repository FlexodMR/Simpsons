//---------------------------------------------------------------------------
#ifndef mainH
#define mainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <AppEvnts.hpp>
#include <ActnList.hpp>
#include <Dialogs.hpp>
#include "terrain.h"
#include <ImgList.hpp>
#include <Buttons.hpp>
#include "inventory.h"
#include "puppet.h"
#include "simulation.h"
//---------------------------------------------------------------------------
class CVContext;
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
    TMainMenu *MainMenu;
    TStatusBar *StatusBar;
    TMenuItem *MainMenuItemFile;
    TMenuItem *MainMenuItemFileExit;
    TPanel *MainTopPanel;
    TBevel *MainTopBevel;
    TPanel *MainLeftPanel;
    TSplitter *MainSplitter;
    TApplicationEvents *ApplicationEvents;
    TMenuItem *MainMenuItemFileOpen;
    TActionList *MainActionList;
    TAction *FileExitAction;
    TAction *FileOpenAction;
    TMenuItem *MainMenuItemFileN2;
    TOpenDialog *OpenDialog;
    TPageControl *MainPageControl;
    TTabSheet *TerrainSheet;
    TTerrainFrame *MainTerrainFrame;
    TMenuItem *MainMenuItemView;
    TMenuItem *MainMenuItemFileClearInventory;
    TAction *FileClearInventoryAction;
    TImageList *MainImageList;
    TTabSheet *PuppetSheet;
    TTabSheet *InventorySheet;
    TInventoryFrame *MainInventoryFrame;
    TMenuItem *MainMenuItemViewCameraLock;
    TAction *ViewCameraLockAction;
    TTabSheet *SimulationSheet;
    TSimulationFrame *MainSimulationFrame;
    TAction *FileSaveAsAction;
    TSaveDialog *SaveDialog;
    TMenuItem *MainMenuItemFileSaveAs;
    TMenuItem *MainMenuItemFileN1;
    TPanel *MainClientPanel;
    TPanel *P3DPanel;
    TMenuItem *MainMenuViewPDDIStats;
    TAction *ViewPDDIStatsAction;
    TAction *ViewPerformanceStatsAction;
    TMenuItem *MainMenuViewPerformanceStats;
    TAction *ViewFootPhaseAction;
    TMenuItem *MainMenuViewFootPhase;
    TPuppetFrame *MainPuppetFrame;
    TMenuItem *MainMenuViewTerrainStats;
    TAction *ViewTerrainStatsAction;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall ApplicationEventsIdle(TObject *Sender, bool &Done);
    void __fastcall P3DPanelMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
    void __fastcall P3DPanelMouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y);
    void __fastcall P3DPanelMouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
    void __fastcall FileExitActionExecute(TObject *Sender);
    void __fastcall FileOpenActionExecute(TObject *Sender);
    void __fastcall StatusBarResize(TObject *Sender);
    void __fastcall FileClearInventoryActionExecute(TObject *Sender);
    void __fastcall ViewCameraLockActionExecute(TObject *Sender);
    void __fastcall ViewCameraLockActionUpdate(TObject *Sender);
    void __fastcall ApplicationEventsMessage(tagMSG &Msg, bool &Handled);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall FileSaveAsActionExecute(TObject *Sender);
    void __fastcall MainClientPanelResize(TObject *Sender);
    void __fastcall ViewPDDIStatsActionUpdate(TObject *Sender);
    void __fastcall ViewPDDIStatsActionExecute(TObject *Sender);
    void __fastcall ViewPerformanceStatsActionUpdate(TObject *Sender);
    void __fastcall ViewPerformanceStatsActionExecute(TObject *Sender);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall ApplicationEventsMinimize(TObject *Sender);
    void __fastcall ApplicationEventsRestore(TObject *Sender);
    void __fastcall ViewFootPhaseActionUpdate(TObject *Sender);
    void __fastcall ViewFootPhaseActionExecute(TObject *Sender);
    void __fastcall ViewTerrainStatsActionUpdate(TObject *Sender);
    void __fastcall ViewTerrainStatsActionExecute(TObject *Sender);
private:	// User declarations

    bool m_Simulate;

public:		// User declarations
    __fastcall TMainForm(TComponent* Owner);

    void __fastcall OpenFiles(TStrings* list);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif

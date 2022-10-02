//---------------------------------------------------------------------------
#include <vcl.h>
#include "../chcommon/interface.hpp"
#pragma hdrstop

#include "main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "terrain"
#pragma link "inventory"
#pragma link "puppet"
#pragma link "simulation"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
    : TForm(Owner)
{
    m_Simulate = false;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormCreate(TObject *Sender)
{
    DragAcceptFiles(Handle, true);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormClose(TObject *Sender, TCloseAction &Action)
{
    CVContextClose();
    CVPlatformClose();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ApplicationEventsIdle(TObject *Sender,
      bool &Done)
{
    if ((CVContextIsOpen() != 0) && m_Simulate)
    {
        CVContextUpdate();

        float fps;
        CVSimulationGetFPS(&fps);
        AnsiString str;
        str.sprintf("%.1f FPS          ", fps);
        StatusBar->Panels->Items[1]->Text = str;

        MainSimulationFrame->RefreshReplay();

        Done = false;
    }
    else
    {
        Done = true;
    }
}
//---------------------------------------------------------------------------
static void ShiftStateToMouse(TShiftState shiftState, int& buttons, int& shift)
{
    buttons = 0;
    if (shiftState.Contains(ssLeft))
        buttons |= MK_LBUTTON;
    if (shiftState.Contains(ssRight))
        buttons |= MK_RBUTTON;
    if (shiftState.Contains(ssMiddle))
        buttons |= MK_MBUTTON;

    shift = 0;
    if (shiftState.Contains(ssShift))
        shift |= MK_SHIFT;
    if (shiftState.Contains(ssCtrl))
        shift |= MK_CONTROL;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::P3DPanelMouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    int buttons, shift;
    ShiftStateToMouse(Shift, buttons, shift);
    CVContextMouseDown(buttons, shift, X, Y);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::P3DPanelMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
    int buttons, shift;
    ShiftStateToMouse(Shift, buttons, shift);
    CVContextMouseMove(buttons, shift, X, Y);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::P3DPanelMouseUp(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    int buttons, shift;
    ShiftStateToMouse(Shift, buttons, shift);
    CVContextMouseUp(buttons, shift, X, Y);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::FileExitActionExecute(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::OpenFiles(TStrings* list)
{
    int fileCount = list->Count;

    int i;

    // first do p3d files
    for (i = 0; i < fileCount; ++i)
    {
        AnsiString fileName = list->Strings[i];
        AnsiString fileExt = ExtractFileExt(fileName).LowerCase();

        if (fileExt == ".p3d")
        {
            CVContextLoadP3DFile(fileName.c_str());
        }
    }

    // then do text files
    for (i = 0; i < fileCount; ++i)
    {
        AnsiString fileName = list->Strings[i];
        AnsiString fileExt = ExtractFileExt(fileName).LowerCase();

        if ((fileExt == ".cho") || (fileExt == ".txt"))
        {
            CVContextLoadChoreoScript(fileName.c_str());
        }
    }

    // refresh ui
    MainInventoryFrame->RefreshInventoryList();
    MainTerrainFrame->RefreshTerrainList();
    MainPuppetFrame->RefreshPuppet();

    // then throw error messages
    for (i = 0; i < fileCount; ++i)
    {
        AnsiString fileName = list->Strings[i];
        AnsiString fileExt = ExtractFileExt(fileName).LowerCase();

        if ((fileExt != ".p3d") &&
            (fileExt != ".txt") &&
            (fileExt != ".cho"))
        {
            MessageDlg("File \"" + fileName + "\" cannot be opened.\n"
                       "Cannot open files of type \"" + fileExt + "\".",
                       mtError, TMsgDlgButtons() << mbOK, 0);
            return;
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FileOpenActionExecute(TObject *Sender)
{
    if (OpenDialog->Execute())
    {
        OpenFiles(OpenDialog->Files);
    }
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FileSaveAsActionExecute(TObject *Sender)
{
    SaveDialog->Title = "Save As...";

    if (SaveDialog->Execute())
    {
        if (FileExists(SaveDialog->FileName))
        {
            int rc = MessageBox(Handle,
                                ("File \"" + SaveDialog->FileName + "\" already exists.\n"
                                 "Do you wish to overwrite?").c_str(),
                                "Overwrite Confirmation",
                                MB_YESNOCANCEL |
                                MB_ICONQUESTION |
                                MB_DEFBUTTON2 |
                                MB_APPLMODAL);
            if (rc != IDYES)
            {
                return;
            }
        }

        int rc = CVContextSaveChoreoScript(SaveDialog->FileName.c_str());
        if (rc != 0)
        {
            MessageDlg("Save to file \"" + SaveDialog->FileName + "\" failed.",
                       mtError,
                       TMsgDlgButtons() << mbOK,
                       0);
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::StatusBarResize(TObject *Sender)
{
    StatusBar->Panels->Items[0]->Width = StatusBar->Width - 100;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FileClearInventoryActionExecute(TObject *Sender)
{
    CVInventoryClear();
    MainInventoryFrame->RefreshInventoryList();
    MainTerrainFrame->RefreshTerrainList();
    MainPuppetFrame->RefreshPuppet();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewCameraLockActionExecute(TObject *Sender)
{
    ViewCameraLockAction->Checked = !ViewCameraLockAction->Checked;
    CVContextSetCameraLock(ViewCameraLockAction->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewCameraLockActionUpdate(TObject *Sender)
{
    ViewCameraLockAction->Checked = (CVContextGetCameraLock() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ApplicationEventsMessage(tagMSG &Msg,
      bool &Handled)
{
    if (Msg.message == WM_DROPFILES)
    {
        HDROP hDrop = (HDROP)Msg.wParam;  // handle of internal drop structure

        unsigned fileCount = DragQueryFile(hDrop, 0xffffffff, 0, 0);

        char buf[1024];
        TStringList* list = new TStringList;
        list->Capacity = fileCount;

        for (unsigned i = 0; i < fileCount; ++i)
        {
            DragQueryFile((HDROP)hDrop, i, buf, sizeof(buf) - 1);
            list->Append(buf);
        }

        OpenFiles(list);
        delete list;
    }
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::MainClientPanelResize(TObject *Sender)
{
    CVContextViewResize(MainClientPanel->ClientWidth, MainClientPanel->ClientHeight);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewPDDIStatsActionUpdate(TObject *Sender)
{
    ViewPDDIStatsAction->Checked = (CVContextIsPDDIStatsEnabled() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewPDDIStatsActionExecute(TObject *Sender)
{
    ViewPDDIStatsAction->Checked = !ViewPDDIStatsAction->Checked;
    CVContextSetIsPDDIStatsEnabled(ViewPDDIStatsAction->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewPerformanceStatsActionUpdate(
      TObject *Sender)
{
    ViewPerformanceStatsAction->Checked = (CVContextGetPerformanceStats() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewPerformanceStatsActionExecute(
      TObject *Sender)
{
    ViewPerformanceStatsAction->Checked = !ViewPerformanceStatsAction->Checked;
    CVContextSetPerformanceStats(ViewPerformanceStatsAction->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormShow(TObject *Sender)
{
    CVPlatformOpen(Handle);

    HWND desktopHwnd = GetDesktopWindow();
    RECT rect;
    GetWindowRect(desktopHwnd, &rect);

    P3DPanel->Width = rect.right - rect.left;
    P3DPanel->Height = rect.bottom - rect.top;

    CVContextOpen(P3DPanel->Handle);
    CVContextViewResize(MainClientPanel->ClientWidth,
                        MainClientPanel->ClientHeight);

    if (ParamCount() > 0)
    {
        TStringList* list = new TStringList;
        list->Capacity = ParamCount();
        for (int i = 1; i <= ParamCount(); ++i)
        {
            list->Append(ParamStr(i));
        }

        OpenFiles(list);
        delete list;
    }

    m_Simulate = true;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ApplicationEventsMinimize(TObject *Sender)
{
    m_Simulate = false;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ApplicationEventsRestore(TObject *Sender)
{
    m_Simulate = true;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewFootPhaseActionUpdate(TObject *Sender)
{
    ViewFootPhaseAction->Checked = (CVPuppetIsFootPhaseEnabled() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewFootPhaseActionExecute(TObject *Sender)
{
    ViewFootPhaseAction->Checked = !ViewFootPhaseAction->Checked;
    CVPuppetSetIsFootPhaseEnabled(ViewFootPhaseAction->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewTerrainStatsActionUpdate(TObject *Sender)
{
    ViewTerrainStatsAction->Checked = (CVTerrainGetStats() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ViewTerrainStatsActionExecute(TObject *Sender)
{
    ViewTerrainStatsAction->Checked = !ViewTerrainStatsAction->Checked;
    CVTerrainSetStats(ViewTerrainStatsAction->Checked);
}
//---------------------------------------------------------------------------


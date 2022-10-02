//---------------------------------------------------------------------------
#include <vcl.h>
#include "../chcommon/interface.hpp"
#pragma hdrstop

#include "terrain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TTerrainFrame *TerrainFrame;
//---------------------------------------------------------------------------
__fastcall TTerrainFrame::TTerrainFrame(TComponent* Owner)
    : TFrame(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTerrainFrame::RefreshTerrainList()
{
    TerrainListBox->Items->Clear();

    int terrainCount = CVTerrainGetCount();
    TerrainListBox->Items->Capacity = terrainCount;

    for (int i = 0; i < terrainCount; ++i)
    {
        static const int maxLen = 256;
        char name[maxLen];
        CVTerrainGetName(i, name, maxLen);

        TerrainListBox->Items->Append(name);
        TerrainListBox->Checked[i] = CVTerrainIsEnabled(i);
    }
}
//---------------------------------------------------------------------------


void __fastcall TTerrainFrame::TerrainListBoxClickCheck(TObject *Sender)
{
    int itemIndex = TerrainListBox->ItemIndex;
    CVTerrainSetIsEnabled(itemIndex, TerrainListBox->Checked[itemIndex]);
}
//---------------------------------------------------------------------------


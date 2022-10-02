//---------------------------------------------------------------------------
#include <vcl.h>
#include "../chcommon/interface.hpp"
#pragma hdrstop

#include "inventory.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TInventoryFrame *InventoryFrame;
//---------------------------------------------------------------------------
__fastcall TInventoryFrame::TInventoryFrame(TComponent* Owner)
    : TFrame(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TInventoryFrame::RefreshInventoryList()
{
    InventoryListBox->Items->Clear();

    int entityCount = CVInventoryGetEntityCount();
    InventoryListBox->Items->Capacity = entityCount;

    for (int i = 0; i < entityCount; ++i)
    {
        static const int maxLen = 256;
        char name[maxLen];
        char type[maxLen];
        CVInventoryGetEntity(i, name, maxLen, type, maxLen);

        AnsiString entry;
        entry.sprintf("<%s> %s", type, name);

        InventoryListBox->Items->Append(entry);
    }
}
//---------------------------------------------------------------------------

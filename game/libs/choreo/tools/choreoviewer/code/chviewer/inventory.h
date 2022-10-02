//---------------------------------------------------------------------------
#ifndef inventoryH
#define inventoryH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TInventoryFrame : public TFrame
{
__published:	// IDE-managed Components
    TListBox *InventoryListBox;
private:	// User declarations
public:		// User declarations
    __fastcall TInventoryFrame(TComponent* Owner);

    void __fastcall RefreshInventoryList();
};
//---------------------------------------------------------------------------
extern PACKAGE TInventoryFrame *InventoryFrame;
//---------------------------------------------------------------------------
#endif

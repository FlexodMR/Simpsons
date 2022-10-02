//---------------------------------------------------------------------------
#ifndef terrainH
#define terrainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <CheckLst.hpp>
//---------------------------------------------------------------------------
class TTerrainFrame : public TFrame
{
__published:	// IDE-managed Components
    TCheckListBox *TerrainListBox;
    void __fastcall TerrainListBoxClickCheck(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TTerrainFrame(TComponent* Owner);

    void __fastcall RefreshTerrainList();
};
//---------------------------------------------------------------------------
extern PACKAGE TTerrainFrame *TerrainFrame;
//---------------------------------------------------------------------------
#endif

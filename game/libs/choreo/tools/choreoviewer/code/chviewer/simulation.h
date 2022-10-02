//---------------------------------------------------------------------------


#ifndef simulationH
#define simulationH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TSimulationFrame : public TFrame
{
__published:	// IDE-managed Components
    TTrackBar *SimRateTrackBar;
    TEdit *SimRateEdit;
    TLabel *SimRateLbl;
    TLabel *SimRate0Lbl;
    TLabel *SimRate10Lbl;
    TLabel *ReplayLbl;
    TTrackBar *ReplayTrackBar;
    TEdit *ReplayEdit;
    TLabel *ReplayTimeLbl;
    TLabel *Replay0Lbl;
    TButton *ReplayBtn;
    TButton *PlayBtn;
    void __fastcall SimRateEditKeyPress(TObject *Sender, char &Key);
    void __fastcall SimRateEditChange(TObject *Sender);
    void __fastcall SimRateTrackBarChange(TObject *Sender);
    void __fastcall ReplayEditChange(TObject *Sender);
    void __fastcall ReplayTrackBarChange(TObject *Sender);
    void __fastcall ReplayBtnClick(TObject *Sender);
    void __fastcall PlayBtnClick(TObject *Sender);
private:	// User declarations
    bool m_SimRateEditing;
    bool m_ReplayEditing;
public:		// User declarations
    __fastcall TSimulationFrame(TComponent* Owner);

    void __fastcall RefreshSimulation();
    void __fastcall RefreshReplay();
};
//---------------------------------------------------------------------------
extern PACKAGE TSimulationFrame *SimulationFrame;
//---------------------------------------------------------------------------
#endif

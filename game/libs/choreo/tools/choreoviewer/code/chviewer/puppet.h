//---------------------------------------------------------------------------
#ifndef puppetH
#define puppetH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <ActnList.hpp>
//---------------------------------------------------------------------------
class TPuppetFrame : public TFrame
{
__published:	// IDE-managed Components
    TActionList *PuppetActionList;
    TAction *PuppetApplyAction;
    TAction *PuppetNewAction;
    TAction *PuppetRemoveAction;
    TLabel *ModelLbl;
    TComboBox *ModelCombo;
    TLabel *BankLbl;
    TComboBox *BankCombo;
    TLabel *LocomotionLbl;
    TComboBox *LocomotionCombo;
    TCheckBox *SteeringCheckBox;
    TLabel *Button0Lbl;
    TComboBox *Button0Combo;
    TLabel *Button1Lbl;
    TComboBox *Button1Combo;
    TLabel *Button2Lbl;
    TComboBox *Button2Combo;
    TLabel *Button3Lbl;
    TComboBox *Button3Combo;
    TLabel *Button4Lbl;
    TComboBox *Button4Combo;
    TLabel *Button5Lbl;
    TComboBox *Button5Combo;
    TButton *StopAllButton;
    TCheckBox *RenderSkeletonCheckBox;
    TComboBox *RenderStyleComboBox;
    TCheckBox *Button0InterruptCheckBox;
    TCheckBox *Button1InterruptCheckBox;
    TCheckBox *Button2InterruptCheckBox;
    TCheckBox *Button3InterruptCheckBox;
    TCheckBox *Button4InterruptCheckBox;
    TCheckBox *Button5InterruptCheckBox;
    TButton *PlayBtn0;
    TButton *PlayBtn1;
    TButton *PlayBtn2;
    TButton *PlayBtn3;
    TButton *PlayBtn4;
    TButton *PlayBtn5;
    TCheckBox *IsLegIKEnabledCheckBox;
    TLabel *PropLbl;
    TComboBox *PropCombo;
    TLabel *AttachJointLbl;
    TEdit *AttachJointEdit;
    TBevel *Bevel1;
    TBevel *Bevel2;
    TBevel *Bevel3;
    TBevel *Bevel4;
    TBevel *Bevel5;
    void __fastcall ModelComboChange(TObject *Sender);
    void __fastcall BankComboChange(TObject *Sender);
    void __fastcall LocomotionComboChange(TObject *Sender);
    void __fastcall SteeringCheckBoxClick(TObject *Sender);
    void __fastcall Button0ComboChange(TObject *Sender);
    void __fastcall StopAllButtonClick(TObject *Sender);
    void __fastcall RenderStyleComboBoxChange(TObject *Sender);
    void __fastcall RenderSkeletonCheckBoxClick(TObject *Sender);
    void __fastcall Button0InterruptCheckBoxClick(TObject *Sender);
    void __fastcall PlayBtnClick(TObject *Sender);
    void __fastcall IsLegIKEnabledCheckBoxClick(TObject *Sender);
    void __fastcall PropComboChange(TObject *Sender);
    void __fastcall AttachJointEditKeyPress(TObject *Sender, char &Key);
    void __fastcall AttachJointEditChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TPuppetFrame(TComponent* Owner);

    void __fastcall RefreshModel();
    void __fastcall RefreshBank();
    void __fastcall RefreshLocomotion();
    void __fastcall RefreshProp();
    void __fastcall RefreshAnimations();
    void __fastcall RefreshPuppet();
};
//---------------------------------------------------------------------------
extern PACKAGE TPuppetFrame *PuppetFrame;
//---------------------------------------------------------------------------
#endif

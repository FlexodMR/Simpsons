//---------------------------------------------------------------------------
#include <vcl.h>
#include "../chcommon/interface.hpp"
#pragma hdrstop

#include "puppet.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPuppetFrame *PuppetFrame;
//---------------------------------------------------------------------------
__fastcall TPuppetFrame::TPuppetFrame(TComponent* Owner)
    : TFrame(Owner)
{
    RenderStyleComboBox->ItemIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshModel()
{
    static const int maxLen = 256;
    char name[maxLen];

    ModelCombo->Items->Clear();
    int count = CVPuppetGetModelCount();
    ModelCombo->Items->Capacity = count;
    for (int i = 0; i < count; ++i)
    {
        CVPuppetGetModel(i, name, maxLen);
        ModelCombo->Items->Append(name);
    }
    ModelCombo->ItemIndex = CVPuppetGetModelIndex();

    RenderStyleComboBox->ItemIndex = CVPuppetGetRenderStyle();
    RenderSkeletonCheckBox->Checked = (CVPuppetGetRenderSkeleton() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshBank()
{
    static const int maxLen = 256;
    char name[maxLen];

    BankCombo->Items->Clear();
    int count = CVPuppetGetBankCount();
    BankCombo->Items->Capacity = count;
    for (int i = 0; i < count; ++i)
    {
        CVPuppetGetBank(i, name, maxLen);
        BankCombo->Items->Append(name);
    }
    BankCombo->ItemIndex = CVPuppetGetBankIndex();

    IsLegIKEnabledCheckBox->Checked = (CVPuppetIsLegIKEnabled() != 0);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshLocomotion()
{
    static const int maxLen = 256;
    char name[maxLen];

    LocomotionCombo->Items->Clear();
    int count = CVPuppetGetLocomotionCount();
    LocomotionCombo->Items->Capacity = count;
    for (int i = 0; i < count; ++i)
    {
        CVPuppetGetLocomotion(i, name, maxLen);
        LocomotionCombo->Items->Append(name);
    }
    LocomotionCombo->ItemIndex = CVPuppetGetLocomotionIndex();

    SteeringCheckBox->Checked = CVPuppetGetSteering();
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshProp()
{
    static const int maxLen = 256;
    char name[maxLen];

    PropCombo->Items->Clear();
    int count = CVPuppetGetAttachPropCount();
    PropCombo->Items->Capacity = count + 1;
    PropCombo->Items->Append("<None>");
    for (int i = 0; i < count; ++i)
    {
        CVPuppetGetAttachProp(i, name, maxLen);
        PropCombo->Items->Append(name);
    }

    LocomotionCombo->ItemIndex = CVPuppetGetAttachPropIndex() + 1;

    AttachJointEdit->Text = IntToStr(CVPuppetGetAttachJoint());
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshAnimations()
{
    static const int maxLen = 256;
    char name[maxLen];

    Button0Combo->Items->Clear();
    int count = CVPuppetGetAnimationCount();
    Button0Combo->Items->Capacity = count;
    for (int i = 0; i < count; ++i)
    {
        CVPuppetGetAnimation(i, name, maxLen);
        Button0Combo->Items->Append(name);
    }

    Button1Combo->Items->Assign(Button0Combo->Items);
    Button2Combo->Items->Assign(Button0Combo->Items);
    Button3Combo->Items->Assign(Button0Combo->Items);
    Button4Combo->Items->Assign(Button0Combo->Items);
    Button5Combo->Items->Assign(Button0Combo->Items);

    Button0Combo->ItemIndex = CVPuppetGetAnimationIndex(0);
    Button1Combo->ItemIndex = CVPuppetGetAnimationIndex(1);
    Button2Combo->ItemIndex = CVPuppetGetAnimationIndex(2);
    Button3Combo->ItemIndex = CVPuppetGetAnimationIndex(3);
    Button4Combo->ItemIndex = CVPuppetGetAnimationIndex(4);
    Button5Combo->ItemIndex = CVPuppetGetAnimationIndex(5);

    Button0InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(0) != 0);
    Button1InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(1) != 0);
    Button2InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(2) != 0);
    Button3InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(3) != 0);
    Button4InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(4) != 0);
    Button5InterruptCheckBox->Checked = (CVPuppetGetAnimationInterrupt(5) != 0);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RefreshPuppet()
{
    RefreshModel();
    RefreshBank();
    RefreshLocomotion();
    RefreshProp();
    RefreshAnimations();
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::ModelComboChange(TObject *Sender)
{
    CVPuppetSetModelIndex(ModelCombo->ItemIndex);
    RefreshBank();
    RefreshLocomotion();
    RefreshAnimations();
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::BankComboChange(TObject *Sender)
{
    CVPuppetSetBankIndex(BankCombo->ItemIndex);
    RefreshLocomotion();
    RefreshAnimations();
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::LocomotionComboChange(TObject *Sender)
{
    CVPuppetSetLocomotionIndex(LocomotionCombo->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::SteeringCheckBoxClick(TObject *Sender)
{
    CVPuppetSetSteering(SteeringCheckBox->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::Button0ComboChange(TObject *Sender)
{
    TComboBox* combo = dynamic_cast<TComboBox*>(Sender);
    if (combo == 0)
        return;

    CVPuppetSetAnimationIndex(combo->Tag, combo->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::StopAllButtonClick(TObject *Sender)
{
    CVPuppetStopAll();
}
//---------------------------------------------------------------------------

void __fastcall TPuppetFrame::RenderStyleComboBoxChange(TObject *Sender)
{
    CVPuppetSetRenderStyle(RenderStyleComboBox->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::RenderSkeletonCheckBoxClick(TObject *Sender)
{
    CVPuppetSetRenderSkeleton(RenderSkeletonCheckBox->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::Button0InterruptCheckBoxClick(
      TObject *Sender)
{
    TCheckBox* checkBox = dynamic_cast<TCheckBox*>(Sender);
    if (checkBox == 0)
        return;

    CVPuppetSetAnimationInterrupt(checkBox->Tag, checkBox->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::PlayBtnClick(TObject *Sender)
{
    TButton* playBtn = dynamic_cast<TButton*>(Sender);
    if (playBtn == 0)
        return;

    CVPuppetPlayAnimation(playBtn->Tag);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::IsLegIKEnabledCheckBoxClick(TObject *Sender)
{
    CVPuppetSetIsLegIKEnabled(IsLegIKEnabledCheckBox->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::PropComboChange(TObject *Sender)
{
    CVPuppetSetAttachPropIndex(PropCombo->ItemIndex - 1);
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::AttachJointEditKeyPress(TObject *Sender,
      char &Key)
{
    if (!isdigit(Key) && (Key != '\b'))
    {
        Key = 0;
    }
}
//---------------------------------------------------------------------------
void __fastcall TPuppetFrame::AttachJointEditChange(TObject *Sender)
{
    int attachJoint = AttachJointEdit->Text.ToIntDef(0);
    CVPuppetSetAttachJoint(attachJoint);
}
//---------------------------------------------------------------------------


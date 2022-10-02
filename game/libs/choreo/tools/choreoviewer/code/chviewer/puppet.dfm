object PuppetFrame: TPuppetFrame
  Left = 0
  Top = 0
  Width = 340
  Height = 651
  HorzScrollBar.Tracking = True
  VertScrollBar.Tracking = True
  TabOrder = 0
  object ModelLbl: TLabel
    Left = 8
    Top = 8
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Model'
  end
  object BankLbl: TLabel
    Left = 8
    Top = 68
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bank'
  end
  object LocomotionLbl: TLabel
    Left = 8
    Top = 120
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Locomotion'
  end
  object Button0Lbl: TLabel
    Left = 8
    Top = 232
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 0'
  end
  object Button1Lbl: TLabel
    Left = 8
    Top = 288
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 1'
  end
  object Button2Lbl: TLabel
    Left = 8
    Top = 344
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 2'
  end
  object Button3Lbl: TLabel
    Left = 4
    Top = 400
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 3'
  end
  object Button4Lbl: TLabel
    Left = 4
    Top = 456
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 4'
  end
  object Button5Lbl: TLabel
    Left = 4
    Top = 512
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Button 5'
  end
  object PropLbl: TLabel
    Left = 8
    Top = 172
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Prop'
  end
  object AttachJointLbl: TLabel
    Left = 76
    Top = 196
    Width = 56
    Height = 13
    Caption = 'Attach Joint'
  end
  object Bevel1: TBevel
    Left = 4
    Top = 56
    Width = 334
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object Bevel2: TBevel
    Left = 2
    Top = 108
    Width = 334
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object Bevel3: TBevel
    Left = 2
    Top = 160
    Width = 334
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object Bevel4: TBevel
    Left = 2
    Top = 220
    Width = 334
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object Bevel5: TBevel
    Left = 2
    Top = 564
    Width = 334
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object ModelCombo: TComboBox
    Left = 76
    Top = 4
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 0
    OnChange = ModelComboChange
  end
  object BankCombo: TComboBox
    Left = 76
    Top = 64
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 3
    OnChange = BankComboChange
  end
  object LocomotionCombo: TComboBox
    Left = 76
    Top = 116
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 5
    OnChange = LocomotionComboChange
  end
  object SteeringCheckBox: TCheckBox
    Left = 76
    Top = 140
    Width = 97
    Height = 17
    Caption = 'Steering'
    TabOrder = 6
    OnClick = SteeringCheckBoxClick
  end
  object Button0Combo: TComboBox
    Left = 76
    Top = 228
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 9
    OnChange = Button0ComboChange
  end
  object Button1Combo: TComboBox
    Tag = 1
    Left = 76
    Top = 284
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 12
    OnChange = Button0ComboChange
  end
  object Button2Combo: TComboBox
    Tag = 2
    Left = 76
    Top = 340
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 15
    OnChange = Button0ComboChange
  end
  object Button3Combo: TComboBox
    Tag = 3
    Left = 76
    Top = 396
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 18
    OnChange = Button0ComboChange
  end
  object Button4Combo: TComboBox
    Tag = 4
    Left = 76
    Top = 452
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 21
    OnChange = Button0ComboChange
  end
  object Button5Combo: TComboBox
    Tag = 5
    Left = 76
    Top = 508
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 24
    OnChange = Button0ComboChange
  end
  object StopAllButton: TButton
    Left = 75
    Top = 572
    Width = 75
    Height = 25
    Caption = 'Stop All'
    TabOrder = 27
    OnClick = StopAllButtonClick
  end
  object RenderSkeletonCheckBox: TCheckBox
    Left = 200
    Top = 32
    Width = 105
    Height = 17
    Caption = 'Render Skeleton'
    TabOrder = 2
    OnClick = RenderSkeletonCheckBoxClick
  end
  object RenderStyleComboBox: TComboBox
    Left = 76
    Top = 28
    Width = 109
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = RenderStyleComboBoxChange
    Items.Strings = (
      'Render Solid'
      'Render Wireframe'
      'Render Points')
  end
  object Button0InterruptCheckBox: TCheckBox
    Left = 76
    Top = 252
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = Button0InterruptCheckBoxClick
  end
  object Button1InterruptCheckBox: TCheckBox
    Tag = 1
    Left = 76
    Top = 308
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 13
    OnClick = Button0InterruptCheckBoxClick
  end
  object Button2InterruptCheckBox: TCheckBox
    Tag = 2
    Left = 76
    Top = 364
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 16
    OnClick = Button0InterruptCheckBoxClick
  end
  object Button3InterruptCheckBox: TCheckBox
    Tag = 3
    Left = 76
    Top = 420
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 19
    OnClick = Button0InterruptCheckBoxClick
  end
  object Button4InterruptCheckBox: TCheckBox
    Tag = 4
    Left = 76
    Top = 476
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 22
    OnClick = Button0InterruptCheckBoxClick
  end
  object Button5InterruptCheckBox: TCheckBox
    Tag = 5
    Left = 76
    Top = 532
    Width = 65
    Height = 17
    Caption = 'Interrupt'
    Checked = True
    State = cbChecked
    TabOrder = 25
    OnClick = Button0InterruptCheckBoxClick
  end
  object PlayBtn0: TButton
    Left = 261
    Top = 252
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 11
    OnClick = PlayBtnClick
  end
  object PlayBtn1: TButton
    Tag = 1
    Left = 261
    Top = 308
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 14
    OnClick = PlayBtnClick
  end
  object PlayBtn2: TButton
    Tag = 2
    Left = 261
    Top = 364
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 17
    OnClick = PlayBtnClick
  end
  object PlayBtn3: TButton
    Tag = 3
    Left = 261
    Top = 420
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 20
    OnClick = PlayBtnClick
  end
  object PlayBtn4: TButton
    Tag = 4
    Left = 261
    Top = 476
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 23
    OnClick = PlayBtnClick
  end
  object PlayBtn5: TButton
    Tag = 5
    Left = 261
    Top = 532
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Play'
    TabOrder = 26
    OnClick = PlayBtnClick
  end
  object IsLegIKEnabledCheckBox: TCheckBox
    Left = 76
    Top = 88
    Width = 133
    Height = 17
    Caption = 'Is Leg IK Enabled'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = IsLegIKEnabledCheckBoxClick
  end
  object PropCombo: TComboBox
    Left = 76
    Top = 168
    Width = 260
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 7
    OnChange = PropComboChange
  end
  object AttachJointEdit: TEdit
    Left = 140
    Top = 192
    Width = 69
    Height = 21
    TabOrder = 8
    Text = '0'
    OnChange = AttachJointEditChange
    OnKeyPress = AttachJointEditKeyPress
  end
  object PuppetActionList: TActionList
    Left = 288
    Top = 8
    object PuppetApplyAction: TAction
      Caption = '&Apply'
      Enabled = False
    end
    object PuppetNewAction: TAction
      Caption = '&New'
      Enabled = False
    end
    object PuppetRemoveAction: TAction
      Caption = '&Remove'
      Enabled = False
    end
  end
end

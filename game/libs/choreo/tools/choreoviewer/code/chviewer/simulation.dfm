object SimulationFrame: TSimulationFrame
  Left = 0
  Top = 0
  Width = 373
  Height = 519
  HorzScrollBar.Tracking = True
  VertScrollBar.Tracking = True
  TabOrder = 0
  object SimRateLbl: TLabel
    Left = 12
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Simulation Rate'
  end
  object SimRate0Lbl: TLabel
    Left = 86
    Top = 60
    Width = 6
    Height = 13
    Caption = '0'
  end
  object SimRate10Lbl: TLabel
    Left = 351
    Top = 60
    Width = 12
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '10'
  end
  object ReplayLbl: TLabel
    Left = 12
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Replay'
  end
  object ReplayTimeLbl: TLabel
    Left = 56
    Top = 132
    Width = 67
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object Replay0Lbl: TLabel
    Left = 355
    Top = 132
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object SimRateTrackBar: TTrackBar
    Left = 80
    Top = 36
    Width = 288
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Max = 1000
    Orientation = trHorizontal
    PageSize = 100
    Frequency = 100
    Position = 100
    SelEnd = 0
    SelStart = 0
    TabOrder = 1
    ThumbLength = 16
    TickMarks = tmBottomRight
    TickStyle = tsAuto
    OnChange = SimRateTrackBarChange
  end
  object SimRateEdit: TEdit
    Left = 12
    Top = 36
    Width = 61
    Height = 21
    TabOrder = 0
    Text = '1'
    OnChange = SimRateEditChange
    OnKeyPress = SimRateEditKeyPress
  end
  object ReplayTrackBar: TTrackBar
    Left = 80
    Top = 108
    Width = 288
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Max = 10000
    Orientation = trHorizontal
    PageSize = 1000
    Frequency = 0
    Position = 10000
    SelEnd = 0
    SelStart = 0
    TabOrder = 3
    ThumbLength = 16
    TickMarks = tmBottomRight
    TickStyle = tsManual
    OnChange = ReplayTrackBarChange
  end
  object ReplayEdit: TEdit
    Left = 12
    Top = 108
    Width = 61
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = ReplayEditChange
    OnKeyPress = SimRateEditKeyPress
  end
  object ReplayBtn: TButton
    Left = 12
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Replay'
    TabOrder = 4
    OnClick = ReplayBtnClick
  end
  object PlayBtn: TButton
    Left = 92
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Play'
    Enabled = False
    TabOrder = 5
    OnClick = PlayBtnClick
  end
end

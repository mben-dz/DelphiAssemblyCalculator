object MainView: TMainView
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Calc'
  ClientHeight = 390
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object Edt1: TEdit
    Left = 18
    Top = 18
    Width = 272
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    TabOrder = 0
    Text = '5'
  end
  object Edt2: TEdit
    Left = 18
    Top = 84
    Width = 272
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    TabOrder = 1
    Text = '2'
  end
  object BtnAdd: TButton
    Left = 18
    Top = 136
    Width = 91
    Height = 38
    Cursor = crHandPoint
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Operate'
    TabOrder = 2
    OnClick = BtnAddClick
  end
  object EdtResult: TEdit
    Left = 18
    Top = 201
    Width = 272
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 3
    TextHint = 'Result Goes here'
  end
  object CmboBox_Operation: TComboBox
    Left = 119
    Top = 138
    Width = 171
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ItemIndex = 0
    TabOrder = 4
    Text = 'Addition'
    Items.Strings = (
      'Addition'
      'Substraction'
      'Multiplication'
      'Division')
  end
end

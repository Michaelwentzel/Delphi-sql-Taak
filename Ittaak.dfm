object Form1: TForm1
  Left = 2029
  Top = 47
  Caption = 'Taak'
  ClientHeight = 212
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsername: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object btnClose: TBitBtn
    Left = 144
    Top = 48
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object edtUsername: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnNew: TButton
    Left = 96
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cash'
    TabOrder = 2
    OnClick = btnNewClick
  end
  object btnOK: TBitBtn
    Left = 56
    Top = 48
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnOKClick
  end
  object btnLogout: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Logout'
    TabOrder = 4
    OnClick = btnLogoutClick
  end
  object btnSwitch: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Switch'
    TabOrder = 5
    OnClick = btnSwitchClick
  end
end

object frmSql: TfrmSql
  Left = 0
  Top = 0
  Caption = 'SQL Basics'
  ClientHeight = 466
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 191
    Width = 937
    Height = 275
    Align = alBottom
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 825
    Height = 177
    Caption = 'Controls'
    TabOrder = 1
    object lbl1: TLabel
      Left = 248
      Top = 34
      Width = 15
      Height = 13
      Caption = 'OR'
    end
    object lbl2: TLabel
      Left = 248
      Top = 137
      Width = 21
      Height = 13
      Caption = 'AND'
    end
    object btnConnect: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object btnShow1: TButton
      Left = 8
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Show T 1'
      TabOrder = 1
      OnClick = btnShow1Click
    end
    object btnShow2: TButton
      Left = 8
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Show T 2'
      TabOrder = 2
      OnClick = btnShow2Click
    end
    object edt1: TEdit
      Left = 104
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt2: TEdit
      Left = 296
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt3: TEdit
      Left = 104
      Top = 134
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edt4: TEdit
      Left = 296
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object btnFilter: TButton
      Left = 104
      Top = 81
      Width = 313
      Height = 25
      Caption = 'Filter'
      TabOrder = 7
      OnClick = btnFilterClick
    end
    object btnNull: TButton
      Left = 456
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Show Null'
      TabOrder = 8
      OnClick = btnNullClick
    end
    object btnShowBetween: TButton
      Left = 456
      Top = 81
      Width = 89
      Height = 25
      Caption = 'Show Between'
      TabOrder = 9
      OnClick = btnShowBetweenClick
    end
    object btnShowIn: TButton
      Left = 456
      Top = 132
      Width = 89
      Height = 25
      Caption = 'Show In'
      TabOrder = 10
      OnClick = btnShowInClick
    end
    object btnshowSort: TButton
      Left = 551
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Show Sort'
      TabOrder = 11
      OnClick = btnshowSortClick
    end
    object btnShowFormat: TButton
      Left = 551
      Top = 80
      Width = 89
      Height = 25
      Caption = 'Show Format'
      TabOrder = 12
      OnClick = btnShowFormatClick
    end
    object btnShow2t: TButton
      Left = 551
      Top = 132
      Width = 89
      Height = 25
      Caption = 'Show 2 T'
      TabOrder = 13
      OnClick = btnShow2tClick
    end
    object btnClac: TButton
      Left = 646
      Top = 24
      Width = 99
      Height = 25
      Caption = 'Claculate'
      TabOrder = 14
      OnClick = btnClacClick
    end
    object btnGroup: TButton
      Left = 646
      Top = 80
      Width = 99
      Height = 25
      Caption = 'Group'
      TabOrder = 15
      OnClick = btnGroupClick
    end
    object btnAdd: TButton
      Left = 646
      Top = 132
      Width = 99
      Height = 25
      Caption = 'Add'
      TabOrder = 16
      OnClick = btnAddClick
    end
    object btnBank: TButton
      Left = 216
      Top = 53
      Width = 90
      Height = 25
      Caption = 'btnBank'
      TabOrder = 17
    end
  end
  object adoCon: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Annalize\D' +
      'esktop\New folder\IT taak 2018\Extra\ASampleDatabase.mdb;Persist' +
      ' Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 824
    Top = 32
  end
  object adoQ: TADOQuery
    Parameters = <>
    Left = 864
    Top = 32
  end
  object ds1: TDataSource
    Left = 912
    Top = 32
  end
end

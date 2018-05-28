object Form3: TForm3
  Left = 1727
  Top = 20
  Caption = 'Form3'
  ClientHeight = 672
  ClientWidth = 618
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
  object btnPurchase: TButton
    Left = 480
    Top = 624
    Width = 89
    Height = 33
    Caption = 'Proseed'
    TabOrder = 0
    OnClick = btnPurchaseClick
  end
  object grpProducts: TGroupBox
    Left = 304
    Top = 8
    Width = 289
    Height = 281
    Caption = 'Products'
    TabOrder = 1
    object rgpDrinks: TRadioGroup
      Left = 3
      Top = 32
      Width = 105
      Height = 105
      Caption = 'Drinks'
      Items.Strings = (
        'Coke'
        'Water'
        'Fanta'
        'None')
      TabOrder = 0
    end
    object rgpSweets: TRadioGroup
      Left = 128
      Top = 32
      Width = 137
      Height = 169
      Caption = 'Sweets'
      Items.Strings = (
        'Yelly Babys'
        'Speckeld eggs'
        'Yelly tots'
        'Astros'
        'Smarties'
        'Wine gums '
        'Wispers '
        'None')
      TabOrder = 1
    end
    object sedSweets: TSpinEdit
      Left = 136
      Top = 211
      Width = 121
      Height = 22
      MaxValue = 200
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object sedDrinks: TSpinEdit
      Left = 16
      Top = 211
      Width = 89
      Height = 22
      MaxValue = 200
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
  end
  object grpExtra: TGroupBox
    Left = 8
    Top = 112
    Width = 273
    Height = 177
    Caption = 'Extra'
    TabOrder = 2
    object lblAmount: TLabel
      Left = 44
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object lblPrice: TLabel
      Left = 50
      Top = 124
      Width = 23
      Height = 13
      Caption = 'Price'
    end
    object lblProductName: TLabel
      Left = 32
      Top = 48
      Width = 67
      Height = 13
      Caption = 'Product Name'
    end
    object chkOther: TCheckBox
      Left = 32
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Other'
      TabOrder = 0
    end
    object sedOther: TSpinEdit
      Left = 120
      Top = 83
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object sedOtherPrice: TSpinEdit
      Left = 120
      Top = 115
      Width = 121
      Height = 22
      MaxValue = 300
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object edtProdNam: TEdit
      Left = 120
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object grpClientInfo: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 89
    Caption = 'Client Info'
    TabOrder = 3
    object lblName: TLabel
      Left = 72
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Name :'
    end
    object lblContactNumber: TLabel
      Left = 24
      Top = 48
      Width = 82
      Height = 13
      Caption = 'ContactNumber :'
    end
    object edtName: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtContactNumber: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object redSlip: TRichEdit
    Left = 8
    Top = 344
    Width = 585
    Height = 273
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object btnPreviewSlip: TButton
    Left = 256
    Top = 304
    Width = 97
    Height = 33
    Caption = 'PreviewSlip'
    TabOrder = 5
    OnClick = btnPreviewSlipClick
  end
end

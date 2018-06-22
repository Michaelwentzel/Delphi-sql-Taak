object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 210
  Width = 199
  object adoQuery1: TADOQuery
    Connection = adoconnection1
    Parameters = <>
    Left = 16
    Top = 8
  end
  object adoconnection1: TADOConnection
    Left = 72
    Top = 8
  end
  object adoCon: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 144
  end
  object adoQ1: TADOQuery
    Connection = adoCon
    Parameters = <>
    Left = 48
    Top = 144
  end
  object ds1: TDataSource
    DataSet = adoQ1
    Left = 88
    Top = 144
  end
end

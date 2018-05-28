object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 122
  Width = 363
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Annalize\D' +
      'esktop\New folder\IT taak 2018\database.mdb;Mode=Share Deny None' +
      ';Extended Properties="";Persist Security Info=False;Jet OLEDB:Sy' +
      'stem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database P' +
      'assword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mo' +
      'de=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk T' +
      'ransactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Creat' +
      'e System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLE' +
      'DB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without ' +
      'Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 16
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 104
    Top = 16
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 16
    Top = 16
  end
  object tbl1: TADOTable
    Connection = con1
    TableName = 'Table1'
    Left = 144
    Top = 16
  end
  object tbl2: TADOTable
    Connection = con1
    TableName = 'Table2'
    Left = 184
    Top = 16
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 232
    Top = 16
  end
  object qry2: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 272
    Top = 16
  end
end

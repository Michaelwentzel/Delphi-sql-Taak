unit Datasorce;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    tbl1: TADOTable;
    tbl2: TADOTable;
    ds2: TDataSource;
    qry2: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.

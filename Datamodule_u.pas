unit Datamodule_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    adoQuery1: TADOQuery;
    adoconnection1: TADOConnection;
    adoCon: TADOConnection;
    adoQ1: TADOQuery;
    ds1: TDataSource;
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

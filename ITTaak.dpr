program ITTaak;

uses
  Forms,
  MainLogin_u in 'MainLogin_u.pas' {frmLogin},
  clsMain_u in 'clsMain_u.pas',
  P.O.S_u in 'P.O.S_u.pas' {frmPOS},
  Stock_u in 'Stock_u.pas' {frmStock},
  Datamodule_u in 'Datamodule_u.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPOS, frmPOS);
  Application.CreateForm(TfrmStock, frmStock);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

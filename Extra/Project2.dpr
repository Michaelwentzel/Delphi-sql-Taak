program Project2;

uses
  Forms,
  SQL_Basics_u in 'SQL_Basics_u.pas' {frmSql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSql, frmSql);
  Application.Run;
end.

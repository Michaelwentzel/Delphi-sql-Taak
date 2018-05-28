program ittkdpr;

uses
  Forms,
  Ittaak in 'Ittaak.pas' {Form1},
  Datasorce in 'Datasorce.pas' {DataModule1: TDataModule},
  Frm2 in 'Frm2.pas' {Form2},
  NewmemberUnit in 'NewmemberUnit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

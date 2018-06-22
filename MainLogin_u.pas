unit MainLogin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,clsMain_u, StdCtrls,P.O.S_u,Stock_u,Datamodule_u, Spin, Buttons, DB, ADODB;

type
  TfrmLogin = class(TForm)
    edtPassword: TEdit;
    lbl1: TLabel;
    edtUsername: TEdit;
    lbl2: TLabel;
    bmb1: TBitBtn;
    adoQuery1: TADOQuery;
    adoconnection1: TADOConnection;
    procedure FormCreate(Sender: TObject);
    procedure bmb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.bmb1Click(Sender: TObject);

begin
  with ADOQuery1 do

  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM [Employees] where UserName='+
  QuotedStr(edtusername.Text));
  Open;
  end;

  if ADOQuery1.RecordCount = 0 then

     Application.MessageBox('wrong username!!!', 'Information',MB_OK or MB_ICONINFORMATION);


  begin

    if ADOQuery1.FieldByName('password').AsString <> edtpassword.Text

    then Application.MessageBox('Be sure user name and password is correct', 'Error',MB_OK or MB_ICONERROR)


    else
    begin
    Hide;
    Stock_u.frmStock.Show;
    end
   end;
end;


procedure TfrmLogin.FormCreate(Sender: TObject);
var
s : Char;
dbaddress : WideString;
begin
s := '*';
edtusername.Text := '';
edtpassword.PasswordChar := s;
edtpassword.Text := '';
dbaddress := ExtractFilePath(Application.ExeName) + 'Michael Show MW Inc.mdb';
with ADOConnection1 do

 begin
Connected := False;
LoginPrompt := False;
Mode := cmShareDenyNone;
ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
                  + 'C:\Users\Annalize\Desktop\'
                  + 'Michael Wentzel IT taak 2018 Finaal\'
                  + 'Michael Show MW Inc.mdb;'
                  + 'Persist Security Info=False';
end;
  ADOConnection1.Connected := True;
end;


end.

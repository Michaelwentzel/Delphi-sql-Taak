unit Ittaak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Datasorce, StdCtrls, Buttons, Grids, DBGrids,NewmemberUnit,SQL_Basics_u;

type
  TForm1 = class(TForm)
    btnClose: TBitBtn;
    btnNew: TButton;
    btnSwitch: TButton;
  
    procedure btnNewClick(Sender: TObject);


    procedure btnSwitchClick(Sender: TObject);

  private
    { Private declarations }
  public

     sUsername:string;
    { Public declarations }
  end;

var
  Form1: TForm1;
  sUsername:string;

implementation


{$R *.dfm}



procedure TForm1.btnNewClick(Sender: TObject);
begin
Form3.Show;
end;



procedure TForm1.btnSwitchClick(Sender: TObject);
begin
frmSql.Show;
end;


end.

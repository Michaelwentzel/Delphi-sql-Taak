unit Frm2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Datasorce, Grids, DBGrids, StdCtrls;

type
  TfrmAdmin = class(TForm)
    dbgrd2: TDBGrid;
    btnAll: TButton;
    btnWater: TButton;
    dbgrdTime: TDBGrid;
    btnSortt: TButton;
    cbbFilter: TComboBox;
    procedure btnAllClick(Sender: TObject);
    procedure btnWaterClick(Sender: TObject);
    procedure btnSorttClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmin: TfrmAdmin;

implementation

{$R *.dfm}


procedure TfrmAdmin.btnAllClick(Sender: TObject);
begin
    DataModule1.qry1.SQL.Clear;
    DataModule1.qry1.SQL.Add('SELECT * FROM Table1');
    DataModule1.qry1.Open;
end;

procedure TfrmAdmin.btnWaterClick(Sender: TObject);
begin
    DataModule1.qry1.SQL.Clear;
   case cbbFilter.ItemIndex of
   0:
     DataModule1.qry1.SQL.Add('SELECT Drink,DrinkAmount,TransactionNumber From Table1 WHERE Drink LIKE "%Coke%"'  ) ;

   1:
     DataModule1.qry1.SQL.Add('SELECT Drink,DrinkAmount,TransactionNumber From Table1 WHERE Drink LIKE "%Water%"'  ) ;

   2:
     DataModule1.qry1.SQL.Add('SELECT Drink,DrinkAmount,TransactionNumber From Table1 WHERE Drink LIKE "%Fanta%"'  ) ;

   end;
    DataModule1.qry1.Open;

end;

procedure TfrmAdmin.btnSorttClick(Sender: TObject);
begin
   DataModule1.qry2.SQL.Clear;
   DataModule1.qry2.SQL.Add('SELECT * From Table2' );
   DataModule1.qry2.Open;
end;

end.

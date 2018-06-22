unit Stock_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Grids, DBGrids, ADODB, DB, ExtCtrls,Datamodule_u;

type
  TfrmStock = class(TForm)
    btnConnect: TButton;
    dbgrd1: TDBGrid;
    adoCon: TADOConnection;
    ds1: TDataSource;
    adoQ1: TADOQuery;
    pnlFilter: TPanel;
    btnShowAll: TButton;
    cbb1: TComboBox;
    btnSales: TButton;
    pnlCalculations: TPanel;
    sedValue: TSpinEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    sedID: TSpinEdit;
    rgpClac: TRadioGroup;
    btnProsses: TButton;

    procedure FormCreate(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnSalesClick(Sender: TObject);
    procedure btnShowAllClick(Sender: TObject);
    procedure btnProssesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStock: TfrmStock;

implementation

{$R *.dfm}



procedure TfrmStock.btnProssesClick(Sender: TObject);
var
 sID,sValue: String;
begin
   sID := IntToStr(sedID.Value);
   sValue := IntToStr(sedValue.Value);
  case rgpClac.ItemIndex of
        0: begin

             adoQ1.SQL.Clear;
             adoQ1.SQL.Add('UPDATE [Inventory] SET [Stock Level] = [Stock Level] + (' + sValue + ') WHERE [ID] = (' + sID + ')');
             adoQ1.ExecSQL;
             adoQ1.SQL.Clear;
             adoQ1.SQL.Add('SELECT * FROM [Inventory]');
             adoQ1.Open;
           end;

        1: begin

              adoQ1.SQL.Clear;
              adoQ1.SQL.Add('UPDATE [Inventory] SET [Stock Level] = [Stock Level] - (' + sValue + ') WHERE [ID] = (' + sID + ')');
              adoQ1.ExecSQL;
              adoQ1.SQL.Clear;
              adoQ1.SQL.Add('SELECT * FROM [Inventory]');
              adoQ1.Open;
           end;

 end;

end;

procedure TfrmStock.btnConnectClick(Sender: TObject);
begin
try                                                     //Connection
   adoCon.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
                            + 'C:\Users\Annalize\Desktop\'
                            + 'Michael Wentzel IT taak 2018 Finaal\'
                            + 'Michael Show MW Inc.mdb;'
                            + 'Persist Security Info=False';
   adoCon.LoginPrompt := False;
   adoCon.Open;
  finally
   ShowMessage('Connection Successful');
  end;
 adoQ1.SQL.Clear;
 adoQ1.SQL.Add('SELECT * FROM Inventory');
 adoQ1.Open;
 btnSales.Enabled := True;
 btnShowAll.Enabled :=  True;
 BtnProsses.Enabled :=  True;
 btnConnect.Enabled := False;
end;

procedure TfrmStock.btnSalesClick(Sender: TObject);
begin

 adoQ1.SQL.Clear;
 adoQ1.SQL.Add('SELECT * FROM [Sales]');
 adoQ1.Open;
end;

procedure TfrmStock.btnShowAllClick(Sender: TObject);
var
  sValue : string ;
begin
  sValue := cbb1.Text;
  adoQ1.SQL.Clear;
  adoQ1.SQL.Add('SELECT * FROM  (' + sValue  +') ');
  adoQ1.Open;

end;

procedure TfrmStock.FormCreate(Sender: TObject);
begin
hide;
btnSales.Enabled := False;
btnConnect.Enabled := True;
btnShowAll.Enabled := False;
 BtnProsses.Enabled := False;
end;

end.

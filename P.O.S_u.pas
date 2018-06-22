unit P.O.S_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls,Datamodule_u;

type
  TfrmPOS = class(TForm)
    btnAddItem: TButton;
    pnlItem: TPanel;
    grp1: TGroupBox;
    chb1: TCheckBox;
    chb2: TCheckBox;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    sed2: TSpinEdit;
    pnlx: TPanel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOS: TfrmPOS;

implementation

{$R *.dfm}

end.

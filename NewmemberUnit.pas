unit NewmemberUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, ComCtrls;

type
  TForm3 = class(TForm)
    btnPurchase: TButton;
    grpProducts: TGroupBox;
    rgpDrinks: TRadioGroup;
    rgpSweets: TRadioGroup;
    sedSweets: TSpinEdit;
    sedDrinks: TSpinEdit;
    grpExtra: TGroupBox;
    lblAmount: TLabel;
    lblPrice: TLabel;
    chkOther: TCheckBox;
    sedOther: TSpinEdit;
    sedOtherPrice: TSpinEdit;
    edtProdNam: TEdit;
    lblProductName: TLabel;
    grpClientInfo: TGroupBox;
    edtName: TEdit;
    lblName: TLabel;
    lblContactNumber: TLabel;
    edtContactNumber: TEdit;
    redSlip: TRichEdit;
    btnPreviewSlip: TButton;
    procedure btnPurchaseClick(Sender: TObject);
    procedure btnPreviewSlipClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);




  private
    { Private declarations }
  public
      sDrinks , sSweets ,sName,sNameProd: string;
      iPriceD,iPriceS,iDrinkA,iSweetA, iTotalD ,iOther ,iOtherA,iTell:   Integer;
      dVat,dTotalDVat,dTotalDIncVat : Double;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Datasorce;

{$R *.dfm}

procedure TForm3.btnPurchaseClick(Sender: TObject);


  begin

      DataModule1.tbl1.Open;
      DataModule1.tbl1.Insert;
      DataModule1.tbl1.FieldByName('CustName').AsString := sName;
      DataModule1.tbl1.FieldByName('Drink').AsString := sDrinks;
      DataModule1.tbl1.FieldByName('Sweets').AsString := sSweets;
      DataModule1.tbl1.FieldByName('DrinkPrice').AsInteger:= iPriceD;
      DataModule1.tbl1.FieldByName('SweetPrice').AsInteger:= iPriceS;
      DataModule1.tbl1.FieldByName('DrinkAmount').AsInteger:= iDrinkA;
      DataModule1.tbl1.FieldByName('SweetAmount').AsInteger:= iSweetA;
      DataModule1.tbl1.FieldByName('Total').AsInteger:= iTotalD;
      DataModule1.tbl1.FieldByName('Other').AsString := sNameProd;
      DataModule1.tbl1.FieldByName('OtherAmount').AsInteger:= iOther;
      DataModule1.tbl1.FieldByName('OtherPrice').AsInteger:= iOtherA ;
      DataModule1.tbl1.FieldByName('TotalVat').AsFloat:= dTotalDVat;
      DataModule1.tbl1.FieldByName('Total INC Vat').AsFloat:= dTotalDIncVat ;
      DataModule1.tbl1.FieldByName('ContactTell').AsInteger:= iTell;
      DataModule1.tbl1.Post;

      ShowMessage('Data entred!');
      sedDrinks.Clear;
      sedSweets.Clear;
      sedOther.Clear;
      sedOtherPrice.Clear;
      redSlip.Clear;
      edtName.Clear;
      edtProdNam.Clear;
      edtContactNumber.Clear;


   end;

procedure TForm3.btnPreviewSlipClick(Sender: TObject);
var
  I : Integer;
begin
 dVat := 0.14 ;
 sName:= edtName.Text;
 iTell := StrToInt(edtContactNumber.Text);


        case rgpDrinks.ItemIndex of
        0: begin
            sDrinks:= 'Coke';
            iPriceD := 11;
           end;

        1: begin
            sDrinks:= 'Water';
            iPriceD := 9;
           end;

        2: begin
            sDrinks:= 'Fanta';
            iPriceD := 12;
           end;
      end;
      case rgpSweets.ItemIndex of
        0: begin
            sSweets:= 'Yelly Babys';
            iPriceS := 8;
           end;

        1: begin
            sSweets:= 'Speckeld eggs';
            iPriceS := 8;
           end;

        2: begin
            sSweets:= 'Yelly tots';
            iPriceS := 8;
           end;

        3: begin
            sSweets:= 'Astros';
            iPriceS := 10;
           end;

        4:begin
            sSweets:= 'Smarties';
            iPriceS := 8;
           end;

        5:begin
            sSweets:= 'Wine gums';
            iPriceS := 8;
           end;

        6:begin
            sSweets:= 'Wispers ';
            iPriceS := 15;
           end;

      end;

      Begin
        if chkOther.Checked = True then
        begin
          sNameProd:= edtProdNam.Text;
          iOther:= sedOther.Value;
          iOtherA := sedOtherPrice.Value;
        end;
      end;

      begin
        iDrinkA:=sedDrinks.Value;
        iSweetA:= sedSweets.Value;
        iTotalD := ( iDrinkA * iPriceD ) + (iSweetA * iPriceS) + (iOther * iOtherA);
        dTotalDVat := (iTotalD * dVat);
        dTotalDIncVat := (iTotalD +  dTotalDVat);
      end;

 redSlip.Lines.Add(#9 + #9 + #9 +  'The Corner Shop ' + #9);
 redSlip.Lines.Add(#9 + '--------------------------' + #9 );
 redSlip.Lines.Add('Chash Sale');
 redSlip.Lines.Add('Tel : 016 971 4756 ');
 redSlip.Lines.Add('Vaalpark');
 redSlip.Lines.Add(DateToStr(TDateTime(Now)));
 redSlip.Lines.Add('---------------------------');
 redSlip.Lines.Add('Items : ' );
 redSlip.Lines.Add('Drinks : ' + #9 + sDrinks + #9 +  ' X'+  IntToStr(iDrinkA) +#9 + IntToStr(iPriceD) + #9 );
 redSlip.Lines.Add('Sweets : ' + #9 + sSweets + #9 +  ' X'+  IntToStr(iSweetA) + #9 + IntToStr(iPriceS) + #9);
 redSlip.Lines.Add('Other : ' + #9 + edtProdNam.Text + #9 +  ' X'+  IntToStr(iOtherA) + #9 + IntToStr(iOther) + #9);
 redSlip.Lines.Add(' Total Price  :  ' + #9 + 'R '+ IntToStr(iTotalD) );
 redSlip.Lines.Add(' Total Price.IncVAT @14%  :  ' + #9 + 'R '+ FloatToStr(dTotalDIncVat) );
 redSlip.Lines.Add('Customer Name : ' + sName );
 redSlip.Lines.Add('----------------------------');
 redSlip.Lines.Add('Thanks for shopping');
 btnPurchase.Enabled:= True;

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
btnPurchase.Enabled:= False;
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnum_Operacoes = (opSomar, opSubtrair, opMultiplicar, opDividir);
  TfrmPrincipal = class(TForm)
    edt_Num1: TEdit;
    edt_num2: TEdit;
    lbl_Resultado: TLabel;
    cmb_Operacoes: TComboBox;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

Uses
 ICaculadora1;

procedure TfrmPrincipal.btn_calcularClick(Sender: TObject);
begin
  Self.Calcular;
end;

procedure TfrmPrincipal.Calcular;
var
  xNum1, xNum2 : Double;
  xResul : String;
begin

  if not (TryStrToFloat(edt_Num1.Text, xNum1)) then
    raise Exception.Create('Número 1 Inválido');

  if not (TryStrToFloat(edt_Num2.Text, xNum2)) then
    raise Exception.Create('Número 2 Inválido');

  case TEnum_Operacoes(cmb_Operacoes.ItemIndex)  of
    opSomar:
      xResul := GetICaculadora.echoSomar(xNum1, xNum2).ToString;

    opSubtrair:
       xResul := GetICaculadora.echoSubtrair(xNum1, xNum2).ToString;

    opMultiplicar:
       xResul := GetICaculadora.echoMultiplicar(xNum1, xNum2).ToString;

    opDividir:
    begin
       if (xNum1 = 0) or (xNum2 = 0) then
       begin
        lbl_Resultado.Caption := 'Não pode divisao por zero';
          raise Exception.Create('Não pode divisao por zero');
       end;
       xResul := GetICaculadora.echoDividir(xNum1, xNum2).ToString;
    end;
  end;

  lbl_Resultado.Caption := xResul;
end;

end.

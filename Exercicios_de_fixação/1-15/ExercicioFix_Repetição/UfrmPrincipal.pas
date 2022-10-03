unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumComando = (opFor, opWhile, opRepeat);

  TfrmPrincipal = class(TForm)
    btnExecutar: TButton;
    Label1: TLabel;
    edtN1: TEdit;
    edtN2: TEdit;
    rgComandos: TRadioGroup;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
var
  I, xNumero1, xNumero2, xSaldo, xSangria, xConta : Integer;
  xResultado : String;

begin
   xNumero1 := StrToInt(edtN1.Text);
   xNumero2 := StrToInt(edtN2.Text);
   xConta := 0;

  case TEnumComando(rgComandos.ItemIndex) of

   opFor:
    begin

    if (xNumero1 < xNumero2) then
    begin

         for I := 0 to xNumero2 -1   do
    begin

         if (xNumero1 mod 2 = 0) then
         begin
         xConta := xConta  + xNumero1;

         end;

         xNumero1 := xNumero1 + 1;
    end;

      xResultado := xConta.ToString;
      ShowMessage(xResultado);
    end

     else
     ShowMessage('O valor informado é invalido comparado a base');
    end;

    opWhile:
    begin
    xSaldo := xNumero1;
    xSangria := xNumero2;

    if (xSaldo <= 0) or (xSaldo < xSangria) then
    begin
     ShowMessage('Saldo insuficiente para essa aplicação!');
    end

    else
    begin

        while (xSaldo > 0) do
    begin

      xSaldo := xSaldo - xSangria;

      xConta := xConta + 1;
    end;

      xResultado := xConta.ToString;
      ShowMessage('Seu saldo acabará em ' + xResultado + ' dias');
    end;
    end;

    opRepeat:
    begin
    xSaldo := xNumero1;
    xSangria := 0;
    xConta := 0;

    if (xSaldo > 0) then
    begin

    repeat

      xSangria := xSangria + xNumero2;

      xConta := xConta + 1;

    until (xSangria >= xSaldo);

     xResultado := xSangria.ToString;
      ShowMessage('Você atingirá sua meta em ' + xConta.ToString + ' dias');
      end

      else
       ShowMessage('Valor inválido');
    end;
  end;
end;

end.

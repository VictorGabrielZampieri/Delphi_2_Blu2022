unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumTiposClientes = (opResidencia, opComercio, opIndustria);

  TfrmPrincipal = class(TForm)
    rgTipoCliente: TRadioGroup;
    edtQuantidade: TEdit;
    Label1: TLabel;
    btnCalcular: TButton;
    lblResposta: TLabel;
    Label2: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure Principal;
    function  CalcularConsumo : Currency;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  self.Principal;
end;

function TfrmPrincipal.CalcularConsumo: Currency;
var
  xConsumo : Double;
  xValor : Currency;
begin

  if (TryStrToFloat(edtQuantidade.Text, xConsumo)) then
  begin
   case TEnumTiposClientes(rgTipoCliente.ItemIndex) of
      opResidencia  :
      begin
        xValor := (xConsumo * 0.60);
        Result := xValor;
      end;

      opComercio  :
      begin
        xValor := (xConsumo * 0.48);
        Result := xValor;
      end;

      opIndustria :
      begin
        xValor := (xConsumo * 1.29);
        Result := xValor;
      end;

      else
      Result := 0;
      lblResposta.Visible := True;
      lblResposta.Caption := 'O Valor Informado � Inv�lido';
   end;
  end

  else
    Result := 0;
    lblResposta.Visible := True;
    lblResposta.Caption := 'O Valor Informado � Inv�lido';
end;

procedure TfrmPrincipal.Principal;
var
  xValor : Currency;
begin
   xValor := self.CalcularConsumo;

   if (xValor > 0) then
   begin
   lblResposta.Visible := True;
   lblResposta.Caption := 'O Cliente Ter� que Pagar na Conta ' + FormatFloat('0.00',xValor) + 'R$';
   end;
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumTiposClientes = (opResidencia, opComercio, opIndustria, opFazenda);

  TfrmPrincipal = class(TForm)
    rgTipoCliente: TRadioGroup;
    edtQuantidade: TEdit;
    Label1: TLabel;
    lblResposta: TLabel;
    Label2: TLabel;
    btnExecutar: TButton;
    Label3: TLabel;
    edtDesconto: TEdit;
    procedure btnExecutarClick(Sender: TObject);

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


procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
begin
  self.Principal;
end;

function TfrmPrincipal.CalcularConsumo: Currency;
var
  xConsumo : Double;
  xValor, xDesconto : Currency;
begin

  xDesconto:= StrToCurr(edtDesconto.Text);

  if (TryStrToFloat(edtQuantidade.Text, xConsumo)) then
  begin
   case TEnumTiposClientes(rgTipoCliente.ItemIndex) of
      opResidencia  :
      begin
        xValor := (xConsumo * 0.60);
        Result := xValor - xDesconto;
      end;

      opComercio  :
      begin
        xValor := (xConsumo * 0.48);
        Result := xValor - xDesconto;
      end;

      opIndustria :
      begin
        xValor := (xConsumo * 1.29);
        Result := xValor - xDesconto;
      end;

      opFazenda :
      begin
        xValor := (xConsumo * 2.18);
        Result := xValor - xDesconto;
      end;
      else
      Result := 0;
      lblResposta.Visible := True;
      lblResposta.Caption := 'O Valor Informado é Inválido';
   end;
  end

  else
    Result := 0;
    lblResposta.Visible := True;
    lblResposta.Caption := 'O Valor Informado é Inválido';
end;

procedure TfrmPrincipal.Principal;
var
  xValor : Currency;
begin
   xValor := self.CalcularConsumo;

   if (xValor > 0) then
   begin
   lblResposta.Visible := True;
   lblResposta.Caption := 'O Cliente Terá que Pagar na Conta ' + FormatFloat('0.00',xValor) + 'R$';
   end;
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResposta: TLabel;
    btnVerificar: TButton;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Exibir;
    function  Verificar : String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xMensagem : String;
begin
  xMensagem := self.Verificar;
  lblResposta.Visible := True;
  lblResposta.Caption := xMensagem;
end;

function TfrmPrincipal.Verificar: String;
var
  xPrimeiro, xSegundo : Double;
begin
   if not (TryStrToFloat(edtPrimeiroNumero.Text, xPrimeiro)) then
    raise Exception.Create('Informe Um Número Válido');

   if not (TryStrToFloat(edtSegundoNumero.Text, xSegundo)) then
    raise Exception.Create('Informe Um Número Válido');

  if (xPrimeiro = xSegundo) then
    Result := 'Os Números São iguais'
  else if (xPrimeiro > xSegundo) then
    Result := 'O Número '+ FloatToStr(xPrimeiro)+ ' É Maior que '+FloatToStr(xSegundo)
  else
  Result := 'O Número '+ FloatToStr(xSegundo)+ ' É Maior que '+FloatToStr(xPrimeiro);
end;

end.

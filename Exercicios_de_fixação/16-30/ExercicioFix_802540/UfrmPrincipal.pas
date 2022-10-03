unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNumero: TEdit;
    Label1: TLabel;
    btnVerificar: TButton;
    lblResposta: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
      procedure Exibir;
       function VerificarNumero : String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xResposta : String;
begin
  xResposta := self.VerificarNumero;
  lblResposta.Visible := true;
  lblResposta.Caption := xResposta;
end;

function TfrmPrincipal.VerificarNumero: String;
var
  xNumero : Integer;
  xMensagem : String;
begin
  xNumero := StrToInt(edtNumero.Text);

  if (xNumero > 80) then
  begin
    xMensagem := 'O N�mero ' + xNumero.ToString + ' � Maior Que 80 !';
  end
  else if (xNumero < 25) then
  begin
    xMensagem := 'O N�mero ' + xNumero.ToString + ' � Menor Que 25 !';
  end
  else if (xNumero = 40) then
  begin
    xMensagem := 'O N�mero ' + xNumero.ToString + ' � Igual � 40 !';
  end;

  ShowMessage(xMensagem);
  Result := xMensagem;
end;

end.

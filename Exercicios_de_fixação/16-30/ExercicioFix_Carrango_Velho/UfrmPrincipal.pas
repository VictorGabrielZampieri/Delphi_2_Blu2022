unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnIniciar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lblVlrCarro: TLabel;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Compras;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }



{ TfrmPrincipal }

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  self.Compras;
end;

procedure TfrmPrincipal.Compras;
var
  xValor, xDesconto, xValorCarro : Currency;
  xCarros2000, xCarrosAcima2000 : Integer;
  xResposta : String;
begin
  xDesconto := 0;
  xValor := 0;
  xCarros2000 := 0;
  xCarrosAcima2000 := 0;

  while (xResposta <> 'N') do
  begin
    xValorCarro := 0;

    xValorCarro := StrToCurr(inputBox('Pre?o Do Carro' ,'Informe o Pre?o do Carro', ''));

    if (StrToInt(inputBox('Ano Do Carro' ,'Informe o Ano do Carro', '')) <= 2000) then
    begin
      xDesconto := 0.12;
      xCarros2000 := xCarros2000 + 1;
    end
      else
      begin
        xDesconto := 0.7;
        xCarros2000 := xCarrosAcima2000 + 1;
      end;

    xDesconto := xDesconto * xValorCarro;
    xValor := xValorCarro - xDesconto;

    lblVlrCarro.Caption :=  CurrToStr(xValor);

     xResposta := inputBox('Desejar Continuar' ,'Desejar Continuar Comprando ? S/N ', '').ToUpper;

  end;

end;

end.

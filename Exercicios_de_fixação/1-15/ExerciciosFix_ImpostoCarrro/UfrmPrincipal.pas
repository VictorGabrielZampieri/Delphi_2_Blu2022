unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtCustoFabrica: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblprcDistribuidor: TLabel;
    lblImpostos: TLabel;
    lblPreco: TLabel;
    btnCalcularImposto: TButton;
    procedure btnCalcularImpostoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AplicacaoImposto;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.AplicacaoImposto;
var
  xCustoFabrica, xPrecoFinal : currency;
  xImpostos, xDistribuidor : Double;
begin
  xCustoFabrica := StrToCurr(edtCustoFabrica.Text);
  xImpostos := ((45 * xCustoFabrica) /100);
  xDistribuidor := ((28 * xCustoFabrica) /100);

  xPrecoFinal := xCustoFabrica + xImpostos + xDistribuidor;

  lblprcDistribuidor.Caption := CurrToStr(xDistribuidor);
  lblImpostos.Caption := CurrToStr(xImpostos);
  lblPreco.Caption := CurrToStr(xPrecoFinal);
end;

procedure TfrmPrincipal.btnCalcularImpostoClick(Sender: TObject);
begin
  self.AplicacaoImposto;
end;

end.

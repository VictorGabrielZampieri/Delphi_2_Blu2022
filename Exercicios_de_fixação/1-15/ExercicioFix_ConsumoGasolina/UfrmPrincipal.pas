unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Calcular: TButton;
    edtDistancia: TEdit;
    edtCombustivel: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResultado: TLabel;
    procedure CalcularClick(Sender: TObject);
 private
    { Private declarations }
    procedure CalcularConsumo;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


{ TfrmPrincipal }



procedure TfrmPrincipal.CalcularClick(Sender: TObject);
begin
  self.CalcularConsumo;
end;

procedure TfrmPrincipal.CalcularConsumo;
var
  xDistancia, xCombustivel, xResultadoFormatado : Double;
  xResultado : String;
begin
  xResultado := '';
  xDistancia := StrToFloat(edtDistancia.Text);
  xCombustivel := StrToFloat(edtCombustivel.Text);

  xResultadoFormatado := xDistancia / xCombustivel;
  xResultado := FormatFloat('0.000',xResultadoFormatado);

  lblResultado.Caption := ('O Consumo m?dio ? de ' + xResultado + ' Litros');

  lblResultado.Visible := True;

  ShowMessage('O Consumo m?dio ? de ' + xResultado);

end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    Calcular: TButton;
    Label1: TLabel;
    lblResultado: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure SomarNumeros;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CalcularClick(Sender: TObject);
begin
  Self.SomarNumeros;
end;

procedure TfrmPrincipal.SomarNumeros;
var
 xPrimeiroNumero, xSegundoNumero : Double;
 xResultado : String;
begin
  xPrimeiroNumero := StrToFloat(edtPrimeiroNumero.Text);
  xSegundoNumero  := StrToFloat(edtSegundoNumero.Text);

  xResultado := FloatToStr(xPrimeiroNumero + xSegundoNumero);

  lblResultado.Caption := xResultado;

  ShowMessage('A Soma dos N?meros foi ' + xResultado);
end;
end.

unit Ufrmprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumOperações = (opSomar, opSubtrair, opMultiplicar, opDividir);

  TfrmPrincipal = class(TForm)
    btnCalcular: TButton;
    Label1: TLabel;
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    rgOperacoes: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure SomarNumeros;
    procedure SubtrairNumeros;
    procedure MultiplicarNumeros;
    procedure DividirNumeros;
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
  case TEnumOperações(rgOperacoes.ItemIndex) of

  opSomar :
    self.SomarNumeros;

  opSubtrair :
    self.SubtrairNumeros;

  opMultiplicar :
    self.MultiplicarNumeros;

  opDividir :
    self.DividirNumeros;

  else
  begin
    self.SomarNumeros;
    self.SubtrairNumeros;
    self.MultiplicarNumeros;
    self.DividirNumeros;
  end;
  end;
end;

procedure TfrmPrincipal.DividirNumeros;
var
 xPrimeiroNumero, xSegundoNumero : Double;
 xResultado : String;
begin
  xPrimeiroNumero := StrToFloat(edtPrimeiroNumero.Text);
  xSegundoNumero  := StrToFloat(edtSegundoNumero.Text);

  xResultado := FloatToStr(xPrimeiroNumero / xSegundoNumero);

  ShowMessage('A Divisão dos Números foi ' + xResultado);
end;

procedure TfrmPrincipal.MultiplicarNumeros;
var
 xPrimeiroNumero, xSegundoNumero : Double;
 xResultado : String;
begin
  xPrimeiroNumero := StrToFloat(edtPrimeiroNumero.Text);
  xSegundoNumero  := StrToFloat(edtSegundoNumero.Text);

  xResultado := FloatToStr(xPrimeiroNumero * xSegundoNumero);

  ShowMessage('A Multiplicação dos Números foi ' + xResultado);
end;

procedure TfrmPrincipal.SomarNumeros;
var
 xPrimeiroNumero, xSegundoNumero : Double;
 xResultado : String;
begin
  xPrimeiroNumero := StrToFloat(edtPrimeiroNumero.Text);
  xSegundoNumero  := StrToFloat(edtSegundoNumero.Text);

  xResultado := FloatToStr(xPrimeiroNumero + xSegundoNumero);

  ShowMessage('A Soma dos Números foi ' + xResultado);
end;

procedure TfrmPrincipal.SubtrairNumeros;
var
 xPrimeiroNumero, xSegundoNumero : Double;
 xResultado : String;
begin
  xPrimeiroNumero := StrToFloat(edtPrimeiroNumero.Text);
  xSegundoNumero  := StrToFloat(edtSegundoNumero.Text);

  xResultado := FloatToStr(xPrimeiroNumero - xSegundoNumero);

  ShowMessage('A Subtração dos Números foi ' + xResultado);
end;

end.

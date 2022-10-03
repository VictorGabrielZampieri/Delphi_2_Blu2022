unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TArrayNumeros = Array of Double;
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnVerificar: TButton;
    mmNumeros: TMemo;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Exibir;
    function ArmazenarNumeros : TArrayNumeros;
    procedure VerificarNumeros(aArrayNumeros : TArrayNumeros);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.ArmazenarNumeros: TArrayNumeros;
var
  xArrayNumeros : TArrayNumeros;
  xQuantidadeNumeros, I : Integer;
begin
      xQuantidadeNumeros := StrToInt(edtNumero.Text);
      SetLength(xArrayNumeros, xQuantidadeNumeros);

      for I := 0 to xQuantidadeNumeros - 1 do
      begin
        xArrayNumeros[I] := StrToFloat(inputbox('Numeros','Informe Um n�mero',''));
      end;

      Result := xArrayNumeros;
end;

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xArrayNumeros : TArrayNumeros;
begin
  xArrayNumeros := self.ArmazenarNumeros;
  self.VerificarNumeros(xArrayNumeros);
end;

procedure TfrmPrincipal.VerificarNumeros(aArrayNumeros: TArrayNumeros);
var
  I : Integer;
  xNumero : Double;
  xMensagem : String;
begin
  for I := 0 to Length(aArrayNumeros)-1 do
  begin
    xNumero := aArrayNumeros[I];

    if (xNumero < 0) then
      mmNumeros.Lines.Add('O N�mero '+ FloatToStr(xNumero) +' � Negativo')
    else if (xNumero > 0) then
      mmNumeros.Lines.Add('O N�mero '+ FloatToStr(xNumero) +' � � Positivo')
    else
      mmNumeros.Lines.Add('O N�mero '+ FloatToStr(xNumero) +' � � Zero');
  end;

end;

end.

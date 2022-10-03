unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TArrayNumeros = Array of Double;

  TfrmPrincipal = class(TForm)
    btnIniciar: TButton;
    Label1: TLabel;
    edtSizeArray: TEdit;
    lblResultado: TLabel;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
    function ArmazenarNumeros : TArrayNumeros;
    function VerificarNumeros(aArrayNumeros : TArrayNumeros ) : Integer;
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  self.Exibir;
end;



procedure TfrmPrincipal.Exibir;
var
  xArrayNumeros : TArrayNumeros;
  xNumeros : Integer;
begin
   xArrayNumeros := self.ArmazenarNumeros;
   xNumeros := self.VerificarNumeros(xArrayNumeros);
   lblResultado.Visible := True;
   lblResultado.Caption := 'Dos Números Infomardos Há '+ xNumeros.ToString + ' entre 10 e 150';
end;

function TfrmPrincipal.VerificarNumeros(aArrayNumeros: TArrayNumeros): Integer;
var
  xNumerosValidados, I : Integer;

begin
   xNumerosValidados := 0;

   for I := 0 to Length(aArrayNumeros) -1 do
     begin

      if (aArrayNumeros[I] >= 10) and (aArrayNumeros[I] <= 150)then
        begin
            xNumerosValidados := xNumerosValidados + 1;
        end;

     end;

     Result := xNumerosValidados;
end;

function TfrmPrincipal.ArmazenarNumeros: TArrayNumeros;
var
  ArrayNumeros : TArrayNumeros;
  I : integer;
  xControle : Integer;
begin
    xControle := StrToInt(edtSizeArray.Text);
    SetLength(ArrayNumeros, xControle);

  for I := 0 to Length(ArrayNumeros) - 1 do
    begin
       ArrayNumeros[I] := StrToFloat(inputBox('Numeros' ,'Informe O ' + (I + 1).ToString + ' º Número', ''));
    end;

     Result := ArrayNumeros;
end;

end.

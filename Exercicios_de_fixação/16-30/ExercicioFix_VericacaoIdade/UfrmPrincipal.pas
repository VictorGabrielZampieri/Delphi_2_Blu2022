unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TArrayIdades = Array of Integer;

  TfrmPrincipal = class(TForm)
    edtPessoas: TEdit;
    Label1: TLabel;
    btnVerificar: TButton;
    mm_QuantidadePessoas: TMemo;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    function  ArmazenarIdades : TArrayIdades;
    procedure MaiorMenorIdade(aArrayIdades : TArrayIdades);
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.ArmazenarIdades: TArrayIdades;
var
  xArrayIdades : TArrayIdades;
  xQuantidadePessoas, I : Integer;
begin
  if not (TryStrToInt(edtPessoas.Text, xQuantidadePessoas)) then
    raise Exception.Create('Informe um Valor Válido');

    SetLength(xArrayIdades, xQuantidadePessoas);

    for I := 0 to Length(xArrayIdades) -1 do
    begin
       xArrayIdades[I] := StrToInt(inputBox('Idades' ,'Informe A Idade da ' + (I + 1).ToString + ' º Pessoa', ''));
    end;

      Result := xArrayIdades;
end;

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xArrayIdades : TArrayIdades;
begin
    xArrayIdades := self.ArmazenarIdades;
    self.MaiorMenorIdade(xArrayIdades);
end;

procedure TfrmPrincipal.MaiorMenorIdade(aArrayIdades: TArrayIdades);
var
  I : Integer;
begin

  for I := 0 to Length(aArrayIdades) - 1 do
    begin

      if (aArrayIdades[I] >= 18) then
        begin
          mm_QuantidadePessoas.Lines.Add('A ' + (I + 1).ToString + ' º Pessoa É Maior de idade');
        end
          else
        begin
          mm_QuantidadePessoas.Lines.Add('A ' + (I+1).ToString + ' º Pessoa É Menor de idade');
        end;
    end;
end;

end.

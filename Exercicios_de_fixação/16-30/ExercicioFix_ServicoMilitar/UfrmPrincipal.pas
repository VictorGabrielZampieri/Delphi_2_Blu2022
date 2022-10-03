unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMatrizPessoas = Array of Array of String;
  TArrayAptos = Array of String;
  TArrayNaoAptos = Array of String;

  TfrmPrincipal = class(TForm)
    edtQuantidadePessoas: TEdit;
    Label1: TLabel;
    mmAptos: TMemo;
    mmNaoAptos: TMemo;
    lblAptos: TLabel;
    lblNaoAptos: TLabel;
    btnVerificar: TButton;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    function ArmazenandoPessoas : TMatrizPessoas;
    function VerificarAptos(aMatrizPessoas : TMatrizPessoas) : TArrayAptos;
    function VerificarNaoAptos(aMatrizPessoas : TMatrizPessoas) : TArrayNaoAptos;
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.ArmazenandoPessoas: TMatrizPessoas;
var
  xMPessoas : TMatrizPessoas;
  I, xQuantidade : Integer;
  xNome, xSexo, xIdade, xSaude : String;
begin
  xQuantidade := StrToInt(edtQuantidadePessoas.Text);
  SetLength(xMPessoas, 4, xQuantidade);

  for I := 0 to xQuantidade -1 do
  begin
    xNome := inputBox('Nome' ,'Informe o Nome da ' + (I + 1).ToString + ' � Pessoa', '');
    xMPessoas[0][I] := xNome;

    xSexo   := inputBox('Sexo' ,'Informe o Sexo da ' + (I + 1).ToString + ' � Pessoa', '').ToUpper;
    xMPessoas[1][I] := xSexo;

    xIdade  := inputBox('Idade' ,'Informe a Idade da ' + (I + 1).ToString + ' � Pessoa', '');
    xMPessoas[2][I] := xIdade;

    xSaude  := inputBox('Saude' ,'A ' + (I + 1).ToString + ' � Pessoa' + ' � Sa�davel?(S/N) ', '').ToUpper;
    xMPessoas[3][I] := xSaude;
  end;

  Result := xMPessoas;
end;

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xMatrizPessoas : TMatrizPessoas;
  xArrayAptos : TArrayAptos;
  xArrayNaoAptos : TArrayNaoAptos;
  I : Integer;
begin

  xMatrizPessoas := self.ArmazenandoPessoas;
  xArrayAptos := self.VerificarAptos(xMatrizPessoas);
  xArrayNaoAptos := self.VerificarNaoAptos(xMatrizPessoas);

  if (Length(xArrayAptos) > 0) then
  begin
  lblAptos.Caption := 'Aptos : ' + Length(xArrayAptos).ToString;
  for I := 0 to Length(xArrayAptos) -1 do

    mmAptos.Lines.Add(xArrayAptos[I] + ' Est� Apto para Servir');
  end;

  if (Length(xArrayNaoAptos) > 0) then
  begin
  lblNaoAptos.Caption := 'N�o Aptos : ' + Length(xArrayNaoAptos).ToString;
  for I := 0 to Length(xArrayNaoAptos) -1 do

    mmNaoAptos.Lines.Add(xArrayNaoAptos[I] + ' N�o Est� Apto para Servir');
  end;
end;

function TfrmPrincipal.VerificarAptos(aMatrizPessoas: TMatrizPessoas): TArrayAptos;
var
  xArrayAptos : TArrayAptos;
  I, xIdade, xQuantidade, xCasas : Integer;
begin
  xQuantidade := StrToInt(edtQuantidadePessoas.Text);
  xCasas := 0;

  for I := 0 to xQuantidade -1 do
  begin
    xIdade := StrToInt(aMatrizPessoas[2][I]);
    if (aMatrizPessoas[1][I] = 'M') and (xIdade >= 18) and (aMatrizPessoas[3][I] = 'S') then
    begin
     SetLength(xArrayAptos, Length(xArrayAptos)+1);
     xArrayAptos[xCasas] := aMatrizPessoas[0][I];
     xCasas := xCasas + 1;
    end;

  end;

      Result := xArrayAptos;
end;

function TfrmPrincipal.VerificarNaoAptos(
  aMatrizPessoas: TMatrizPessoas): TArrayNaoAptos;
var
  xArrayNaoAptos : TArrayNaoAptos;
  I, xIdade, xQuantidade, xCasas : Integer;
begin
  xQuantidade := StrToInt(edtQuantidadePessoas.Text);
   xCasas := 0;

  for I := 0 to xQuantidade -1 do
  begin
    xIdade := StrToInt(aMatrizPessoas[2][I]);
    if (aMatrizPessoas[1][I] = 'F') or (xIdade <= 17) or (aMatrizPessoas[3][I] = 'N') then
    begin
      SetLength(xArrayNaoAptos, Length(xArrayNaoAptos)+1);
      xArrayNaoAptos[xCasas] := aMatrizPessoas[0][I];
      xCasas := xCasas + 1;
    end;

  end;

  Result := xArrayNaoAptos;
end;

end.

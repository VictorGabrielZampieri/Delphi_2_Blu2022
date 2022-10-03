unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMatrizPessoas = Array of Array of String;

  TfrmPrincipal = class(TForm)
    edtQuantidadePessoas: TEdit;
    Label1: TLabel;
    mm_Pessoas: TMemo;
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Exibir;
    function ArmazenarPessoas : TMatrizPessoas;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.ArmazenarPessoas: TMatrizPessoas;
var
  xMPessoas : TMatrizPessoas;
  I, xQuantidade : Integer;
  xNome, xSexo : String;
begin
  xQuantidade := StrToInt(edtQuantidadePessoas.Text);
  SetLength(xMPessoas, xQuantidade, xQuantidade);

  for I := 0 to xQuantidade -1 do
  begin
    xNome := inputBox('Idades' ,'Informe o Nome da ' + (I + 1).ToString + ' º Pessoa', '');
    xMPessoas[0][I] := xNome;

    xSexo := inputBox('Idades' ,'Informe o Sexo da ' + (I + 1).ToString + ' º Pessoa', '').ToUpper;

    xMPessoas[1][I] := xSexo;
  end;

  Result := xMPessoas;
end;

procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xMatrizPessoas : TMatrizPessoas;
  I, xQuantidadeMasculinos, xQuantidadeFemininos : Integer;
begin
    xQuantidadeMasculinos := 0;
    xQuantidadeFemininos := 0;
    xMatrizPessoas := self.ArmazenarPessoas;

    for I := 0 to Length(xMatrizPessoas) - 1 do
      begin

        if (xMatrizPessoas[1][I] = 'M') then
          xQuantidadeMasculinos := xQuantidadeMasculinos + 1
        else
          xQuantidadeFemininos := xQuantidadeFemininos + 1;
      end;

    mm_Pessoas.Lines.Add('A Quantidades de Homens Foi de ' + xQuantidadeMasculinos.ToString);
    mm_Pessoas.Lines.Add('A Quantidades de Mulheres Foi de ' + xQuantidadeFemininos.ToString);
end;

end.

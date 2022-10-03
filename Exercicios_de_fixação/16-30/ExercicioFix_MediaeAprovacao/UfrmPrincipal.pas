unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNomeAluno: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    btnCalcularMedia: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblNomeAluno: TLabel;
    lblMedia: TLabel;
    lblSituacaoAluno: TLabel;
    procedure btnCalcularMediaClick(Sender: TObject);
  private
    { Private declarations }
    function CalcularMedia : Double;
    function Estado(xMediaFinal : Double) : String;
    procedure GerarBoletim;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCalcularMediaClick(Sender: TObject);
begin
  self.GerarBoletim;
end;

function TfrmPrincipal.CalcularMedia: Double;
var
  xPrimeiraNota, xSegundaNota, xTerceiraNota, xMediaFinal : Double;
begin

  if not TryStrToFloat(edtNota1.Text, xPrimeiraNota) then
    raise Exception.Create('Por Favor Insira um Valor V�lido na 1� Nota');

  if not TryStrToFloat(edtNota2.Text, xSegundaNota) then
    raise Exception.Create('Por Favor Insira um Valor V�lido na 2� Nota');

  if not TryStrToFloat(edtNota3.Text, xTerceiraNota) then
    raise Exception.Create('Por Favor Insira um Valor V�lido na 3� Nota');

  xMediaFinal :=  ((xPrimeiraNota + xSegundaNota + xTerceiraNota) / 3);

  Result  := xMediaFinal;
end;

function TfrmPrincipal.Estado(xMediaFinal : Double) : String;
begin

  if (xMediaFinal >= 7) then
  Result := 'Aprovado';

  if (xMediaFinal <= 5) then
  Result := 'Reprovado';

  if (xMediaFinal <= 6.9) and (xMediaFinal >= 5.1) then
  Result := 'Recupera��o';

end;

procedure TfrmPrincipal.GerarBoletim;
var
  xMediaAluno : Double;
  xSituacaoAluno, xNomeAluno : String;
begin

  xMediaAluno := self.CalcularMedia;
  xSituacaoAluno := self.Estado(xMediaAluno);

  lblNomeAluno.Visible :=  True;
  lblMedia.Visible := True;
  lblSituacaoAluno.Visible := True;

  lblNomeAluno.Caption :=  'Nome Do Aluno : ' + edtNomeAluno.Text;
  lblMedia.Caption := 'M�dia Final Do Aluno : ' + FormatFloat('0.00',xMediaAluno);
  lblSituacaoAluno.Caption := 'Situa��o Do Aluno : ' + xSituacaoAluno;
end;

end.

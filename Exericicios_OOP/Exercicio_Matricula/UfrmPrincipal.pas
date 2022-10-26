unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UDisciplina, UAluno;

type
  TfrmPrincipal = class(TForm)
    mmAlunos: TMemo;
    btnDisciplina: TButton;
    btnAluno: TButton;
    btnResultados: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDisciplinaClick(Sender: TObject);
    procedure btnAlunoClick(Sender: TObject);
    procedure btnResultadosClick(Sender: TObject);
  private
    { Private } // declarations overload nomes iguais}
    FAluno : TAluno;
    FDisciplina : TDisciplina;

    procedure CriarDisciplina;
    procedure CriarAluno;
    procedure CalcularExibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal}

procedure TfrmPrincipal.btnAlunoClick(Sender: TObject);
begin
  Self.CriarAluno;
end;

procedure TfrmPrincipal.btnDisciplinaClick(Sender: TObject);
begin
  Self.CriarDisciplina;
end;

procedure TfrmPrincipal.btnResultadosClick(Sender: TObject);
begin
  Self.CalcularExibir;
end;

procedure TfrmPrincipal.CalcularExibir;
var
  xMedia : Double;
  xResto : Double;
begin
  xMedia := FAluno.Media;
  xResto := FAluno.aFinal;

  mmAlunos.Clear;
  mmAlunos.Lines.Add('Media do Aluno : '+ xMedia.ToString);
  mmAlunos.Lines.Add('O Aluno '+FAluno.Nome+' Precisa de '+xResto.ToString+' Para passar')
end;

procedure TfrmPrincipal.CriarAluno;
var
  xMatricula : Integer;
  xNome : String;
  xPrimeiraNota : Double;
  xSegundaNota  : Double;
  xTrabalho  : Double;
  xCod : Integer;
begin
  if (FAluno = nil) then
  begin
    if not (TryStrToInt(InputBox('Matricula','Informe a Matrícula do Aluno',''), xMatricula)) then
      raise Exception.Create('Matricula Inválida');

    xNome := InputBox('Nome','Informe o Nome do Aluno','');

    if not (TryStrToFloat(InputBox('Nota da 1º Prova','Informe a Nota da 1º Prova do Aluno',''), xPrimeiraNota)) then
      raise Exception.Create('Nota Inválida');

     if not (TryStrToFloat(InputBox('Nota da 2º Prova','Informe a Nota da 2º Prova do Aluno',''), xSegundaNota)) then
      raise Exception.Create('Nota Inválida');

     if not (TryStrToFloat(InputBox('Nota do Trabalho','Informe a Nota do Trabalho do Aluno',''), xTrabalho)) then
      raise Exception.Create('Nota Inválida');

     if not (TryStrToInt(InputBox('Codigo','Informe o Codigo da Disciplina do Aluno',''), xCod)) then
      raise Exception.Create('Codigo Inválido');

     if not (xCod = FDisciplina.Codigo) then
      raise Exception.Create('Codigo Inesitente');

      FAluno := TAluno.Create;

      FAluno.Matricula    := xMatricula;
      FAluno.Nome         := xNome;
      FAluno.PrimeiraNota := xPrimeiraNota;
      FAluno.SegundaNota  := xSegundaNota;
      FAluno.Trabalho     := xTrabalho;
      FAluno.Disciplina   := FDisciplina;
  end

  else
  begin
    mmAlunos.Clear;
    mmAlunos.Lines.Add('Matricula : '+FAluno.Matricula.ToString);
    mmAlunos.Lines.Add('Nome : '+FAluno.Nome);
    mmAlunos.Lines.Add('1º Nota : '+FAluno.PrimeiraNota.ToString);
    mmAlunos.Lines.Add('2º Nota : '+FAluno.SegundaNota.ToString);
    mmAlunos.Lines.Add('Nota do Trabalho : '+FAluno.Trabalho.ToString);
    mmAlunos.Lines.Add('Codigo da Disciplina : '+FAluno.Disciplina.Codigo.ToString);
  end;
end;

procedure TfrmPrincipal.CriarDisciplina;
var
  xCodigo : Integer;
  xDescrisao : String;
begin

if (FDisciplina = nil) then
begin
  if not (TryStrToInt(inputBox('Codigo','Informe o Codigo da Disiciplina',''), xCodigo)) then
    raise Exception.Create('Codigo Inválido');

  xDescrisao := inputBox('Descrisão','Informe a Descrisão da Disciplina','');

  FDisciplina := TDisciplina.Create;

  FDisciplina.Codigo := xCodigo;
  FDisciplina.Descricao := xDescrisao;
end
else
  begin
    mmAlunos.Clear;
    mmAlunos.Lines.Add('Cód. Da Disciplina : '+FDisciplina.Codigo.ToString);
    mmAlunos.Lines.Add('Desc. Da Disciplina : '+FDisciplina.Descricao);
  end;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FAluno);
  FreeAndNil(FDisciplina);
end;

end.

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
  private
    { Private declarations }
    FAluno : TAluno;
    FDisciplina : TDisciplina;

    procedure CriarDisciplina;
    procedure CriarAluno;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.CriarAluno;
begin

end;

procedure TfrmPrincipal.CriarDisciplina;
var
  xCodigo : Integer;
  xDescrisao : String;
begin
  if not (TryStrToInt(inputBox('Codigo','Informe o Codigo da Disiciplina',''), xCodigo)) then
    raise Exception.Create('Codigo Inválido');

  xDescrisao := inputBox('Descrisão','Informe a Descrisão da Disciplina','');

  FDisciplina.Create;

  FDisciplina.Codigo := xCodigo;
  FDisciplina.Descricao := xDescrisao;

end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, UPessoa,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, UFila;

type
  TfrmPrincipal = class(TForm)
    imgFaixada: TImage;
    edtCpf: TEdit;
    edtNome: TEdit;
    edtEspecialidade: TEdit;
    btnGravar: TButton;
    btnLimpar: TButton;
    mmPacienteAtual: TMemo;
    mmUltimoPaciente: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FFila : TFila;
    procedure memoPacienteAtual(xPaciente : TPessoa);
    procedure memoUltimoPaciente(xPaciente : TPessoa);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
var
  xPaciente : TPessoa;
begin
  xPaciente := TPessoa.Create;

  xPaciente.Cpf           := edtCpf.Text;
  xPaciente.Nome          := edtNome.Text;
  xPaciente.Especialidade := edtEspecialidade.Text;

  FFila.Adicionar(xPaciente);
  ShowMessage('Paciente Gravado Com Sucesso!');
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  edtCpf.Clear;
  edtNome.Clear;
  edtEspecialidade.Clear;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  xPacienteU, xPacienteA : TPessoa;
begin
  xPacienteU := FFila.PeekPaciente;
  Self.memoUltimoPaciente(xPacienteU);

  xPacienteA := FFila.Proximo;
  Self.memoPacienteAtual(xPacienteA);

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FFila);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
//var
//  xPessoaDefaut : TPessoa;
begin
  FFila := TFila.Create;

//  xPessoaDefaut := TPessoa.Create;
//  xPessoaDefaut.Cpf := '0';
//  xPessoaDefaut.Nome := 'defaul1230null';
//  xPessoaDefaut.Especialidade := '0';
//  FFila.Adicionar(xPessoaDefaut);
end;


procedure TfrmPrincipal.memoPacienteAtual(xPaciente: TPessoa);
begin
  mmPacienteAtual.Clear;

  mmPacienteAtual.Lines.Add('Nome: ' + xPaciente.Nome);
  mmPacienteAtual.Lines.Add('CPF: ' + xPaciente.Cpf);
  mmPacienteAtual.Lines.Add('Especialidade: ' + xPaciente.Especialidade);
end;

procedure TfrmPrincipal.memoUltimoPaciente(xPaciente: TPessoa);
begin
  if (xPaciente.Nome <> edtNome.Text) then
  begin
    mmUltimoPaciente.Clear;
    mmUltimoPaciente.Lines.Add('Nome: ' + xPaciente.Nome);
   mmUltimoPaciente.Lines.Add('CPF: ' + xPaciente.Cpf);
    mmUltimoPaciente.Lines.Add('Especialidade: ' + xPaciente.Especialidade);
  end;
end;

end.

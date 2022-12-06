unit UfrmPrnicipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    edtPrimeiraNota: TEdit;
    edtSegundaNota: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGravar: TButton;
    btnLer: TButton;
    mmDiario: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
  private
    { Private declarations }
    FArq : TextFile;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
 if (edtNome.Text <> '') and (edtPrimeiraNota.Text <> '') and (edtSegundaNota.Text <> '') then
 begin
   //Grava uma linha com os dados de um alunos no arquivo
   Writeln(FArq, edtNome.Text, '|', edtPrimeiraNota.Text, '|', edtSegundaNota.Text, '|');
   edtNome.Clear;
   edtPrimeiraNota.Clear;
   edtSegundaNota.Clear;
 end;
end;

procedure TfrmPrincipal.btnLerClick(Sender: TObject);
var
  xLinha, xNome : String;
  xReg, i: Integer;
  xNota1, xNota2, xMedia : Double;
begin
  mmDiario.Clear;

  //Abre o arquivo texte para leitura
  Reset(FArq);
  try
    xReg := 0;
    //Enquanto não atingir a marca de final de arquivo
    while (not eof(FArq)) do
    begin
      //lê uma linha, com os dados de um aluno, do arquivo
      readln(FArq, xLinha);

      xReg := xReg + 1;

      //recupera o nome do aluno
      //recupera a 1a. nota do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      //recupera a 1a. nota do aluno
      i := pos('|', xLinha);
      xNota1 := StrToFloatDef(copy(xLinha, 1, i-1),0);
      delete(xLinha, 1, i);

      //recupera a 2a. nota do aluno
      i := pos('|', xLinha);
      xNota2 := StrToFloatDef(copy(xLinha, 1, i-1),0);

      //processando e exibindo os dados recuperados
      xMedia := (xNota1 + xNota2)/2;
      mmDiario.Lines.Add('Registro Nro.: ' + IntToStr(xReg));
      mmDiario.Lines.Add('Nome do Aluno: ' + xNome);
      mmDiario.Lines.Add('1a. nota.....: ' + FloatToStr(xNota1));
      mmDiario.Lines.Add('2a. nota.....: ' + FloatToStr(xNota2));
      mmDiario.Lines.Add('media........: ' + FloatToStr(xMedia));

      if (xMedia >= 7) then
      begin
        mmDiario.Lines.Add('Situação.....:' + 'Aprovado');
      end
      else
      begin
        mmDiario.Lines.Add('Situação.....:' + 'Reprovado');
      end;
      mmDiario.Lines.Add('');
    end;
  finally
    Append(FArq);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  AssignFile(FArq, 'diario.txt');
  {$I-}
  Reset(FArq);

  if (IOResult <> 0) then
  begin
    Rewrite(FArq);//Arquivo não existe e sera criado
  end
  else
  begin
    CloseFile(FArq);
    Append(FArq);//O Arquivo existe e será aberto para saídas adicionais
  end;
  {$I+}
end;

end.

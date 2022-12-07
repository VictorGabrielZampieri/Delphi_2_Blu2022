unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    mskDataNascimento: TMaskEdit;
    btnGravar: TButton;
    mmRegistros: TMemo;
    btnLer: TButton;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
  private
    { Private declarations }
    FArq : TextFile;
    function RetornarIdade(PData : TDate) : Integer;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
 if (edtNome.Text <> '') and (edtCodigo.Text <> '') and (mskDataNascimento.Text <> '') then
 begin
   Writeln(FArq,  edtCodigo.Text, '|',edtNome.Text, '|', mskDataNascimento.Text, '|');
   edtNome.Clear;
   edtCodigo.Clear;
   mskDataNascimento.Clear;
 end;
 end;

procedure TfrmPrincipal.btnLerClick(Sender: TObject);
var
  xLinha, xNome, xCodigo : String;
  xReg, i : Integer;
  xDataNasc : TDate;
  xIdade: Double;
begin
  mmRegistros.Clear;

  Reset(FArq);
  try
    xReg := 0;

    while (not eof(FArq)) do
    begin

      readln(FArq, xLinha);

      xReg := xReg + 1;


      i := pos('|', xLinha);
      xCodigo := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);


      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      i := pos('|', xLinha);
      xDataNasc := StrToDateDef(copy(xLinha, 1, i-1),0);

      xIdade := Self.RetornarIdade(xDataNasc);
      mmRegistros.Lines.Add('Registro Nro......: ' + IntToStr(xReg));
      mmRegistros.Lines.Add('Codigo ...........: ' +xCodigo);
      mmRegistros.Lines.Add('Nome .............: ' + xNome);
      mmRegistros.Lines.Add('Data de Nascimento: ' + DateToStr(xDataNasc));
      mmRegistros.Lines.Add('Idade ............: ' + FloatToStr(xIdade));

      mmRegistros.Lines.Add('');
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
  AssignFile(FArq, 'registros.txt');
  {$I-}
  Reset(FArq);

  if (IOResult <> 0) then
  begin
    Rewrite(FArq);
  end
  else
  begin
    CloseFile(FArq);
    Append(FArq);
  end;
  {$I+}
end;

function TfrmPrincipal.RetornarIdade(PData: TDate): Integer;
var
  xDia, xMes, xAno, xAnoNow : Word;
begin
  DecodeDate(PData, xAno, xMes, xDia);
  DecodeDate(Now(), xAnoNow, xMes, xDia);

  result := xAnoNow-xAno;
end;

end.

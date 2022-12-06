unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    mmArquivo: TMemo;
    edtArquivo: TEdit;
    btnLeitura: TButton;
    Label1: TLabel;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLeituraClick(Sender: TObject);
var
  xArq : TextFile;
  xLinha : String;
begin
  mmArquivo.Clear;
  try
    AssignFile(xArq, edtArquivo.Text);

    {$I-} //Desativa a Diretiva de Input

    //Abre o arquivo para a leitura
    Reset(xArq);

    if (IOResult <> 0) then
      raise Exception.Create('Erro na Abertura do Arquivo !!!');
    {$I+}
     // Ativa a diretiva de Input
    //Verifica se o arquivo atingiu a marca de final de arquivo
    while (not eof (xArq)) do
    begin
      //L� uma linha do arquivo
      Readln(xArq, xLinha);
      mmArquivo.Lines.Add(xLinha);
    end;
  finally

  end;
end;

end.

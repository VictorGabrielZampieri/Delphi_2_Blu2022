unit UManipulacaArquivo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnTabuada: TButton;
    edtNumero: TEdit;
    Label1: TLabel;
    procedure btnTabuadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTabuadaClick(Sender: TObject);
var
  xArq : TextFile;
  i, n : Integer;
begin
  try
    //Associa a variavel do programa "xArq" ao arquivo externo
    //"tabuada.txt" na raiz do projeto
    AssignFile(xArq, 'Tabuada.txt');
    //Cria o arquivo 'Tabuada.txt na raiz do projeto
    Rewrite(xArq);

    n:= StrToIntDef(edtNumero.Text,0);

    //Grava uma linha no arquivo
    Writeln(xArq, '+--Resultado--+');
    for I := 1 to 10 do
      begin
      //Grava uma linha da tabuada no arquivo
        Writeln(xArq, '|', i, 'x', n, ' = ', (i*n), '|');
      end;
      //Grava uma linha no arquivo
      Writeln(xArq, '+-------------+');
      ShowMessage('Tabuada gravada com sucesso');
  finally
    //Fecha o arquivo texto
    CloseFile(xArq);
  end;
end;

end.

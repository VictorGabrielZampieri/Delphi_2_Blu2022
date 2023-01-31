unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UInvoker;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    btn_Executar: TButton;
    procedure btn_ExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UReceiver, UConcreteCommand;

{$R *.dfm}

procedure TfrmPrincipal.btn_ExecutarClick(Sender: TObject);
var
  xReceiver: TReceiver;
  xInvoker : TInvoker;
begin
  //Cria o receiver (obj que contem a codificacao das operacoes)
  xReceiver := TReceiver.Create;

  //Cria o Invoker (obj que armazena os comandos para executa-los)
  xInvoker := TInvoker.Create;
  try
    //Armazena o comando de extracao de programas no Invoker
    xInvoker.Add(TProgramas.Create(xReceiver));

    //Armazena o comando de extracao de Processo no Invoker
    xInvoker.Add(TProcessos.Create(xReceiver));

    //Armazena o comando de extracao de variaveis de Ambiente no Invoker
    xInvoker.Add(TvariaveisAmbiente.Create(xReceiver));

    //Solicita ao Invoke que execute todos os comandos armazenados
    xInvoker.ExtrairInformacoes;
  finally
    //Libera os obj da memoria
    FreeAndNil(xInvoker);
    FreeAndNil(xReceiver);
  end;

  Memo1.Lines.LoadFromFile(GetCurrentDir + '\Programas.txt');
  Memo2.Lines.LoadFromFile(GetCurrentDir + '\Processos.txt');
  Memo3.Lines.LoadFromFile(GetCurrentDir + '\Variaveis.txt');
end;

end.

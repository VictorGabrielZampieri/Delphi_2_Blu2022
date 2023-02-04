unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edt_valor: TEdit;
    lbl_Resultado: TLabel;
    btn_EchoDouble: TButton;
    btn_HelloWorld: TButton;
    procedure btn_HelloWorldClick(Sender: TObject);
    procedure btn_EchoDoubleClick(Sender: TObject);
  private
    { Private declarations }
    procedure Chamar_wsl_hello_world;
    procedure Chamar_wsl_echoDouble;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  IHello_word1;

procedure TForm1.btn_EchoDoubleClick(Sender: TObject);
begin
  Self.Chamar_wsl_echoDouble;
end;

procedure TForm1.btn_HelloWorldClick(Sender: TObject);
begin
 Self.Chamar_wsl_hello_world;
end;

procedure TForm1.Chamar_wsl_echoDouble;
var
  xValor: Double;
  xResul : Double;
begin
  if Not (TryStrToFloat(edt_valor.Text, xValor)) then
    raise Exception.Create('Valor Inválido');
    xResul := GetIHello_word.echoDouble(xValor);
    lbl_Resultado.Caption := 'Resultado: ' + xResul.ToString;
end;

procedure TForm1.Chamar_wsl_hello_world;
begin
  lbl_Resultado.Caption := GetIHello_word.echoHelloWord;
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoma = function (A : Double; B: Double) : Double; stdcall;
  
  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChamarDll();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.ChamarDll;
end;

procedure TForm1.ChamarDll;
var
  xHandle : THandle;
  xSoma : TSoma;
  xResultado, xNum1, xNum2 : Double;
begin
  if not(TryStrToFloat(edtNumero1.Text, xNum1)) then
    raise Exception.Create('Valor para o numero 1 invalido');

  if not(TryStrToFloat(edtNumero2.Text, xNum2)) then
    raise Exception.Create('Valor para o numero 2 invalido');

  xHandle := LoadLibrary('MinhaDLL.dll');
  if (xHandle > 0) then
  begin
    try
      @xSoma := GetProcAddress(xHandle, 'Somar');

      if (@xSoma <> nil) then
      begin
        xResultado := xSoma(xNum1, xNum2);
        lblResultado.Caption := xResultado.ToString;
      end
      else
        ShowMessage('Não foi possivel carregar o procedimento da Dll');
    finally
      FreeLibrary(xHandle);
    end;
    end
      else
      ShowMessage('Não foi possivel carregar a Dll');
  end;


end.

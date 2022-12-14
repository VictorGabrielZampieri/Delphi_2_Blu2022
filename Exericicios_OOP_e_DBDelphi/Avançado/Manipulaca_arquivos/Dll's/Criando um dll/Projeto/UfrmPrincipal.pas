unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtTexto: TEdit;
    edtTextoConvertido: TEdit;
    Label1: TLabel;
    edtNumero: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnMaiusculo: TButton;
    btnMinunsculas: TButton;
    btnConverter: TButton;
    procedure btnConverterClick(Sender: TObject);
    procedure btnMaiusculoClick(Sender: TObject);
    procedure btnMinunsculasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //carregando a fun??es implicitamente da dll
  function MeuUpperCase(s: ShortString): ShortString; stdcall;   
    external  'MinhaDll.Dll' name 'MeuUpperCase';

  function MeuLowerCase(s: ShortString): ShortString; stdcall;
   external  'MinhaDll.Dll' name 'MeuLowerCase';

  function MeuIntToStr(Numero: Integer): ShortString; stdcall;
   external  'MinhaDll.Dll' name 'MeuIntToStr';

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConverterClick(Sender: TObject);
begin
  edtTextoConvertido.Text := MeuIntToStr( StrToInt(edtNumero.Text));
end;

procedure TForm1.btnMaiusculoClick(Sender: TObject);
begin
  edtTexto.Text := meuUpperCase(edtTexto.Text);
end;

procedure TForm1.btnMinunsculasClick(Sender: TObject);
begin
  edtTexto.Text := MeuLowerCase(edtTexto.Text);
end;

end.

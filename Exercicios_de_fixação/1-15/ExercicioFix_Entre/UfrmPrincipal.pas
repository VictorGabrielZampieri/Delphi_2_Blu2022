unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    edtNumero: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Verificar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  self.Verificar
end;

procedure TfrmPrincipal.Verificar;
var
  xNumero : Double;
begin
     xNumero := StrToFloat(edtNumero.Text);

     if (xNumero >= 100) and (xNumero <= 200) then
      ShowMessage('O Número ' + xNumero.ToString + ' Está Entre 100 e 200')
     else
      ShowMessage('O Número ' + xNumero.ToString + ' Não Está Entre 100 e 200')
end;

end.

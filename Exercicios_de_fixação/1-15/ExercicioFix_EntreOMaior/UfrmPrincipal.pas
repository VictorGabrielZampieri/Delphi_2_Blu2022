unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtPrimeiro: TEdit;
    edtSegundo: TEdit;
    btnComparar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCompararClick(Sender: TObject);
  private
    { Private declarations }
    procedure Comparar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCompararClick(Sender: TObject);
begin
  self.Comparar;
end;

procedure TfrmPrincipal.Comparar;
var
  xPrimeiro, xSegundo : Double;
begin
  xPrimeiro := StrToFloat(edtPrimeiro.Text);
  xSegundo := StrToFloat(edtSegundo.Text);

  if (xPrimeiro > xSegundo) then
    ShowMessage(xPrimeiro.ToString + ' ? maior que ' + xSegundo.ToString);

  if (xSegundo > xPrimeiro) then
    ShowMessage(xSegundo.ToString + ' ? maior que ' + xPrimeiro.ToString);

  if (xPrimeiro = xSegundo) or (xSegundo = xPrimeiro) then
    ShowMessage('Os Dois Numero S?o Iguais');
end;



end.

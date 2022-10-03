unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtValor: TEdit;
    m_prestacoes: TMemo;
    Label2: TLabel;
    btnComprar: TButton;
    Label3: TLabel;
    edtEntrada: TEdit;
    procedure btnComprarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Parcelar;
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnComprarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
begin
  self.Parcelar;
  m_prestacoes.Visible := true;
end;

procedure TfrmPrincipal.Parcelar;
var
  I : Integer;
  xEntrada, xValor, xPrestacao : Currency;
begin
  xValor := StrToCurr(edtValor.Text);
  xEntrada := StrToCurr(edtEntrada.Text);
  xValor := xValor - xEntrada;

  xPrestacao := xValor / 5;

 for I := 0 to 4 do
 begin
    m_prestacoes.Lines.Add('No ' + I.ToString + 'º mês você pagará : ' + CurrToStr(xPrestacao));
  end;

end;

end.

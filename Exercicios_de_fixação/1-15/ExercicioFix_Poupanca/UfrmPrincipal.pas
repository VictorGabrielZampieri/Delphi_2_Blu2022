unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtDeposito: TEdit;
    btnDepoistar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    procedure btnDepoistarClick(Sender: TObject);
  private
    { Private declarations }
    function Rendimento : Currency;
    procedure Exibicao;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnDepoistarClick(Sender: TObject);
begin
  self.Exibicao;
end;

procedure TfrmPrincipal.Exibicao;
var
 xRendimento : Currency;
begin
  xRendimento := self.Rendimento;
  lblResultado.Caption := CurrToStr(xRendimento);
end;

function TfrmPrincipal.Rendimento: Currency;
var
  xDeposito, xRendimento : Currency;
begin
    xDeposito := StrToCurr(edtDeposito.Text);
    xRendimento := xDeposito + (0.7 * xDeposito);

    Result := xRendimento;
end;

end.

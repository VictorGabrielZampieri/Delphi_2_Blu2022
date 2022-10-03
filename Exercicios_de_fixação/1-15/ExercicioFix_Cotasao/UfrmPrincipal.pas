unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtQuantidadeDolar: TEdit;
    edtCotacao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConverter: TButton;
    lblReais: TLabel;
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
    function Coverter : Currency;
    procedure Exibicao;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnConverterClick(Sender: TObject);
begin
  self.Exibicao
end;

function TfrmPrincipal.Coverter : Currency;
var
  xReais, xCotacao, xDolares : Currency;
begin
  xCotacao := StrToCurr(edtCotacao.Text);
  xDolares := StrToCurr(edtQuantidadeDolar.Text);

  xReais := xDolares / xCotacao;


  Result := xReais

end;

procedure TfrmPrincipal.Exibicao;
var
  xReais : Currency;
  xMensagem : String;
begin
    xMensagem := 'Em Reais : ';
    xReais := self.Coverter;

    lblReais.Visible := true;
    lblReais.Caption := xMensagem + CurrToStr(xReais);
end;

end.

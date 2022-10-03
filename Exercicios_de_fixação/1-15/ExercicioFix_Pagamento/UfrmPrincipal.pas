unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNomeFuncionario: TEdit;
    edtVendas: TEdit;
    edtSalarioFixo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGerarFolha: TButton;
    lblNome: TLabel;
    lblSalarioFixo: TLabel;
    lblSalarioFinal: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnGerarFolhaClick(Sender: TObject);
  private
    { Private declarations }
    function Comissao : Currency;
    procedure Folha;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnGerarFolhaClick(Sender: TObject);
begin
  Self.Folha;
end;

function TfrmPrincipal.Comissao;
var
  xTotalVendas, xComissao : Currency;
  xPorcentagem : Double;
begin
  xTotalVendas := StrToCurr(edtVendas.Text);
  xPorcentagem := 15 / 100;

  xComissao := xTotalVendas * xPorcentagem;

  Result := xComissao;
end;

procedure TfrmPrincipal.Folha;
var
  xNomeFuncionario : String;
  xSalarioFixo, xSalarioFinal : Currency;
begin
  xNomeFuncionario := edtNomeFuncionario.Text;
  xSalarioFixo := StrToCurr(edtSalarioFixo.Text);
  xSalarioFinal := xSalarioFixo + self.Comissao;

    lblNome.Caption := (xNomeFuncionario);
    lblSalarioFixo.Caption := (CurrToStr(xSalarioFixo));
    lblSalarioFinal.Caption := (CurrToStr(xSalarioFinal));

    lblNome.Visible := True;
    lblSalarioFixo.Visible := True;
    lblSalarioFinal.Visible := True;
end;

end.

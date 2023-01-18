unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UProduto,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNomeProduto: TEdit;
    edtPrecoProduto: TEdit;
    edtQuantidadeProduto: TEdit;
    btnCadastrar: TButton;
    btnComprar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    lblPreco: TLabel;
    mmHistorico: TMemo;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnComprarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FProduto : TProduto;
    procedure BloquearBotao;
    procedure LiberarBotao;
    procedure LiberarBotaoComprar;
    procedure HistoricoCompras;
    procedure ExibirCaixa;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.BloquearBotao;
begin
  btnCadastrar.Enabled := False;
  btnCadastrar.Caption := 'Pague o Produto!'
end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
var
  xPreco : Currency;
begin
  if not (TryStrToCurr(edtPrecoProduto.Text,xPreco)) then
   raise Exception.Create('Preço inválido!');

  FProduto.Nome_Produto := edtNomeProduto.Text;
  FProduto.Preco_Unitario := xPreco;
  ShowMessage('Produto adquirido com Sucesso!');

  Self.BloquearBotao;
  if (btnComprar.Enabled = False) then
    Self.LiberarBotaoComprar;
end;

procedure TfrmPrincipal.btnComprarClick(Sender: TObject);
var
  xValor_total : Currency;
begin
  FProduto.Quantidade := StrToInt(edtQuantidadeProduto.Text);
  xValor_total := FProduto.RetornarValorTotal;
  ShowMessage(CurrToStr(xValor_total));
  Self.LiberarBotao;
  Self.HistoricoCompras;
  Self.ExibirCaixa;
end;

procedure TfrmPrincipal.ExibirCaixa;
begin
  lblPreco.Caption := CurrToStr(FProduto.Valor_Total)+'R$';
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FProduto);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FProduto := TProduto.Create;
end;

procedure TfrmPrincipal.HistoricoCompras;
begin
  mmHistorico.Lines.Add('- '+FProduto.Nome_Produto + ' Qnt X'+ IntToStr(FProduto.Quantidade) + ' Prç Und '+  FormatFloat('0.00',FProduto.Preco_Unitario) +' ' + FormatFloat('0.00',FProduto.Valor_Total) +'R$');
end;

procedure TfrmPrincipal.LiberarBotao;
begin
  btnCadastrar.Enabled := True;
  btnCadastrar.Caption := 'Pegar Produto'
end;

procedure TfrmPrincipal.LiberarBotaoComprar;
begin
  btnComprar.Enabled := True;
end;

end.

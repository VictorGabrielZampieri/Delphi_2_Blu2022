unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus, UfrmRelProdutos;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    imgProdutos: TImage;
    imgCompradores: TImage;
    imgFornecedores: TImage;
    imgUnidadeMedida: TImage;
    imgPedidos: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imgFundo: TImage;
    imgRelatorios: TImage;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    Produtos: TMenuItem;
    Compradores1: TMenuItem;
    Fornecedores1: TMenuItem;
    UnMedida1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure imgCompradoresClick(Sender: TObject);
    procedure imgFornecedoresClick(Sender: TObject);
    procedure imgPedidosClick(Sender: TObject);
    procedure UnMedida1Click(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure imgProdutosClick(Sender: TObject);
    procedure imgUnidadeMedidaClick(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores, UfrmFornecedores, UfrmUnidadeMedidas, UfrmProdutos, UfrmPedidos,
  UfrmRelUnidadeMedida, URelCompradores, UfrmRelFornecedores;

procedure TfrmPrincipal.Compradores1Click(Sender: TObject);
begin
  if not Assigned(frmRelCompradores) then
    frmRelCompradores := TfrmRelCompradores.Create(Self);

    frmRelCompradores.Show;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
   if not Assigned(frmRelFornecedores) then
    frmRelFornecedores := TfrmRelFornecedores.Create(self);

    frmRelFornecedores.Show;
end;

procedure TfrmPrincipal.imgCompradoresClick(Sender: TObject);
begin
  if not Assigned(frmCompredores) then
    frmCompredores := TfrmCompredores.Create(self);

    frmCompredores.Show;
end;

procedure TfrmPrincipal.imgFornecedoresClick(Sender: TObject);
begin
  if not Assigned(frmFornecedores) then
    frmFornecedores := TfrmFornecedores.Create(self);

    frmFornecedores.Show;
end;

procedure TfrmPrincipal.imgPedidosClick(Sender: TObject);
begin
  if not Assigned(frmPedidos) then
    frmPedidos := TfrmPedidos.Create(self);

    frmPedidos.Show;
end;

procedure TfrmPrincipal.imgProdutosClick(Sender: TObject);
begin
if not Assigned(frmProduto) then
    frmProduto := TfrmProduto.Create(self);

    frmProduto.Show;
end;



procedure TfrmPrincipal.imgUnidadeMedidaClick(Sender: TObject);
begin
  if not Assigned(frmUnidadeMedidas) then
    frmUnidadeMedidas := TfrmUnidadeMedidas.Create(self);

    frmUnidadeMedidas.Show;
end;

procedure TfrmPrincipal.ProdutosClick(Sender: TObject);
begin
  if not Assigned(frmRelProdutos) then
    frmRelProdutos := TfrmRelProdutos.Create(self);

    frmRelProdutos.Show;
end;

procedure TfrmPrincipal.UnMedida1Click(Sender: TObject);
begin
  if not Assigned(frmRelUnidadeMedida) then
    frmRelUnidadeMedida := TfrmRelUnidadeMedida.Create(Self);

    frmRelUnidadeMedida.Show;
end;

end.

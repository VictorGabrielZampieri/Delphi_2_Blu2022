unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    dtsPedidoCompra: TDataSource;
    Pedido_compra: TFDTable;
    DBNavigator1: TDBNavigator;
    Pedido_compraid_pedido: TFDAutoIncField;
    Pedido_compranumero: TLongWordField;
    Pedido_compradata_pedido: TDateField;
    Pedido_compraidcomprador: TLongWordField;
    Pedido_compraidfornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    dtsLookupComprador: TDataSource;
    FDTableLookupComprador: TFDTable;
    dtsLookupFornecedor: TDataSource;
    FDTableLookupFornecedor: TFDTable;
    DBLookupComboBox1: TDBLookupComboBox;
    Fornecedor: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBNavigator2: TDBNavigator;
    dtsLookupCompra: TDataSource;
    Item_compra: TFDTable;
    Item_compraid_item: TFDAutoIncField;
    Item_compraquantidade: TLongWordField;
    Item_compraidpedido_compra: TLongWordField;
    Item_compraidproduto: TLongWordField;
    LookupProdutos: TFDTable;
    LookupProdutosdescricao: TStringField;
    LookupProdutosid_produto: TFDAutoIncField;
    LookupProdutosidunidade_medida: TLongWordField;
    Item_compralookupProduto: TStringField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Item_compraBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmPedidos.Item_compraBeforePost(DataSet: TDataSet);
begin
  Item_compraidpedido_compra.AsInteger := Pedido_compraid_pedido.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Pedido_compra.Close;
  Item_compra.Close;
  LookupProdutos.Close;
  FDTableLookupFornecedor.Close;
  FDTableLookupComprador.Close;

  frmPedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  Pedido_compra.Open;
  FDTableLookupComprador.Open;
  FDTableLookupFornecedor.Open;
  Item_compra.Open;
  LookupProdutos.Open;
end;

end.

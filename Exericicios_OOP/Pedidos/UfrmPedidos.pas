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
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    DBNavigator1: TDBNavigator;
    FDTable1id_pedido: TFDAutoIncField;
    FDTable1numero: TLongWordField;
    FDTable1data_pedido: TDateField;
    FDTable1idcomprador: TLongWordField;
    FDTable1idfornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DataSource2: TDataSource;
    FDTableLookupComprador: TFDTable;
    DataSource3: TDataSource;
    FDTableLookupFornecedor: TFDTable;
    DBLookupComboBox1: TDBLookupComboBox;
    Fornecedor: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DataSource4: TDataSource;
    FDTable2: TFDTable;
    FDTable2id_item: TFDAutoIncField;
    FDTable2quantidade: TLongWordField;
    FDTable2idpedido_compra: TLongWordField;
    FDTable2idproduto: TLongWordField;
    FDTable3: TFDTable;
    FDTable3descricao: TStringField;
    FDTable3id_produto: TFDAutoIncField;
    FDTable3idunidade_medida: TLongWordField;
    FDTable2lookupProduto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTable2BeforePost(DataSet: TDataSet);
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

procedure TfrmPedidos.FDTable2BeforePost(DataSet: TDataSet);
begin
  FDTable2idpedido_compra.AsInteger := FDTable1id_pedido.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;
  FDTable2.Close;
  FDTable3.Close;
  FDTableLookupFornecedor.Close;
  FDTableLookupComprador.Close;

  frmPedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
  FDTableLookupComprador.Open;
  FDTableLookupFornecedor.Open;
  FDTable2.Open;
  FDTable3.Open;
end;

end.

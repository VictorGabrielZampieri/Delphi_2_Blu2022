unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, UdmPedidos, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Vcl.DBCtrls;

type
  TfrmRelPedidos = class(TForm)
    GroupBox1: TGroupBox;
    btnVisualizar: TButton;
    btnExportar: TButton;
    Label1: TLabel;
    DBLookupComprador: TDBLookupComboBox;
    DBLookupFornecedor: TDBLookupComboBox;
    Fornecedor: TLabel;
    dtsLookupComprador: TDataSource;
    dtslookupFornecedor: TDataSource;
    LookupComprador: TFDTable;
    LookupFornecedor: TFDTable;
    dtsPedido: TDataSource;
    QryPedido: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    QryItemCompra: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltros;
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

procedure TfrmRelPedidos.btnExportarClick(Sender: TObject);
  var
  xCaminho : String;
begin
  Self.PrepararFiltros;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not (DirectoryExists(xCaminho)) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Pedidos.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelPedidos.btnVisualizarClick(Sender: TObject);
begin
   Self.PrepararFiltros;

   frxReport1.ShowReport;
end;

procedure TfrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   QryPedido.Close;
   QryItemCompra.Close;

    LookupComprador.Close;
    LookupFornecedor.Close;

  frmRelPedidos := nil;
end;

procedure TfrmRelPedidos.FormCreate(Sender: TObject);
begin
  LookupComprador.Open;
  LookupFornecedor.Open;
end;

procedure TfrmRelPedidos.PrepararFiltros;
begin
    QryPedido.Close;
  QryPedido.ParamByName('IDCOMPRADOR').AsString := '';
  QryPedido.ParamByName('IDFORNECEDOR').AsString := '';

  if (Trim(DBLookupComprador.Text) <> EmptyStr) then
    QryPedido.ParamByName('IDCOMPRADOR').AsInteger := LookupComprador.FieldByName('ID_COMPRADOR').AsInteger;

  if (Trim(DBLookupFornecedor.Text) <> EmptyStr) then
   QryPedido.ParamByName('IDFORNECEDOR').AsInteger := LookupFornecedor.FieldByName('ID_FORNECEDOR').AsInteger;
  QryPedido.Open;

  QryItemCompra.Close;
  QryItemCompra.Open;
end;

end.

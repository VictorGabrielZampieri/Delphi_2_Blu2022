unit UfrmRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass,
  frxExportBaseDialog, frxExportPDF, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmPedidos, frxDBSet;

type
  TfrmRelProdutos = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtDescricaoProduto: TEdit;
    btnVisualizar: TButton;
    btnExportar: TButton;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

procedure TfrmRelProdutos.btnExportarClick(Sender: TObject);
  var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not (DirectoryExists(xCaminho)) then
    ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Produtos.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelProdutos.btnVisualizarClick(Sender: TObject);
begin
   Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
  FDQuery1.Close;

  frmRelProdutos := nil;
end;

procedure TfrmRelProdutos.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('DESCRICAO').AsString := '';
  if (Trim(edtDescricaoProduto.Text) <> EmptyStr) then
    FDQuery1.ParamByName('DESCRICAO').AsString := '%' + Trim(edtDescricaoProduto.Text) + '%';
  FDQuery1.Open;

end;

end.

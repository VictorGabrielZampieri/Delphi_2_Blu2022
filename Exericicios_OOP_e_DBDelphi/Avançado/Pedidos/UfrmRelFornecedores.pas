unit UfrmRelFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxExportBaseDialog, frxExportPDF, UdmPedidos, frxDBSet;

type
  TfrmRelFornecedores = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtNomeFornecedores: TEdit;
    btnVisualizar: TButton;
    btnExportar: TButton;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltros;
  public
    { Public declarations }
  end;

var
  frmRelFornecedores: TfrmRelFornecedores;

implementation

{$R *.dfm}

procedure TfrmRelFornecedores.btnExportarClick(Sender: TObject);
  var
  xCaminho : String;
begin
  Self.PrepararFiltros;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not (DirectoryExists(xCaminho)) then
    ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Fornecedores.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelFornecedores.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltros;

  frxReport1.ShowReport;
end;

procedure TfrmRelFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
  FDQuery1.Close;

  frmRelFornecedores := nil;
end;

procedure TfrmRelFornecedores.PrepararFiltros;
begin
   FDQuery1.Close;
  FDQuery1.ParamByName('NOME').AsString := '';
  if (Trim(edtNomeFornecedores.Text) <> EmptyStr) then
    FDQuery1.ParamByName('NOME').AsString := '%' + Trim(edtNomeFornecedores.Text) + '%';
  FDQuery1.Open;
end;

end.

unit URelCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, frxExportPDF, UdmPedidos;

type
  TfrmRelCompradores = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtCompradorNome: TEdit;
    btnVisualizar: TButton;
    btnExportar: TButton;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelCompradores: TfrmRelCompradores;

implementation

{$R *.dfm}

{ TfrmRelCompradores }

procedure TfrmRelCompradores.btnExportarClick(Sender: TObject);
var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not (DirectoryExists(xCaminho)) then
    ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Compradores.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelCompradores.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelCompradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelCompradores := nil;
end;

procedure TfrmRelCompradores.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('NOME').AsString := '';
  if (Trim(edtCompradorNome.Text) <> EmptyStr) then
    FDQuery1.ParamByName('NOME').AsString := '%' + Trim(edtCompradorNome.Text) + '%';
  FDQuery1.Open;
end;

end.

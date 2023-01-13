unit UfrmRelAtor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, UdmSekila;

type
  TfrmRelAtor = class(TForm)
    GroupBox1: TGroupBox;
    edtNome: TEdit;
    Label1: TLabel;
    btnVisualizar: TButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelAtor: TfrmRelAtor;

implementation

{$R *.dfm}

{ TfrmRelAtor }

procedure TfrmRelAtor.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelAtor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelAtor := nil;
end;

procedure TfrmRelAtor.PrepararFiltro;
begin
   FDQuery1.Close;
  FDQuery1.ParamByName('LAST_NAME').AsString := '';
  if (Trim(edtNome.Text) <> EmptyStr) then
    FDQuery1.ParamByName('LAST_NAME').AsString := '%' + Trim(edtNome.Text) + '%';
  FDQuery1.Open;
end;

end.

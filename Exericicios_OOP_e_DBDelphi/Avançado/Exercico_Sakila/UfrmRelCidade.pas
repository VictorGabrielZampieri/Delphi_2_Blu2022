unit UfrmRelCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UdmSekila, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmRelCidade = class(TForm)
    GroupBox1: TGroupBox;
    btnVisualizar: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    LookupCity: TFDTable;
    dsLookupCity: TDataSource;
    QryCidade: TFDQuery;
    dtsCidade: TDataSource;
    QryEndereco: TFDQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelCidade: TfrmRelCidade;

implementation

{$R *.dfm}

procedure TfrmRelCidade.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LookupCity.Close;
end;

procedure TfrmRelCidade.FormCreate(Sender: TObject);
begin
  LookupCity.Open();
end;

procedure TfrmRelCidade.PrepararFiltro;
begin
  QryCidade.Close;
  QryEndereco.Close;

  QryCidade.ParamByName('CIDADE').AsInteger := 0;

  if (Trim(DBLookupComboBox1.Text) <> EmptyStr) then
    QryCidade.ParamByName('CIDADE').AsInteger :=
      LookupCity.FieldByName('CITY_ID').AsInteger;

  QryCidade.Open;
  QryEndereco.Open;
end;

end.

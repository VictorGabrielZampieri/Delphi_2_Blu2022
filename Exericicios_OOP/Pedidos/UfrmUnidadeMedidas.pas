unit UfrmUnidadeMedidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmUnidadeMedidas = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1id_unidade: TFDAutoIncField;
    FDTable1descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidadeMedidas: TfrmUnidadeMedidas;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmUnidadeMedidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;

  frmUnidadeMedidas := nil;
end;

procedure TfrmUnidadeMedidas.FormCreate(Sender: TObject);
begin
   FDTable1.Open;
end;

end.

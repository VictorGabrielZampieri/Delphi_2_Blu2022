unit UfrmRelActorFilms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmSekila, frxClass,
  frxDBSet;

type
  TfrmRelActorFilm = class(TForm)
    GroupBox1: TGroupBox;
    edtLastName: TEdit;
    Label1: TLabel;
    Button1: TButton;
    QryAtor: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltros;
  public
    { Public declarations }
  end;

var
  frmRelActorFilm: TfrmRelActorFilm;

implementation

{$R *.dfm}

{ TfrmRelActorFilm }

procedure TfrmRelActorFilm.Button1Click(Sender: TObject);
begin
  Self.PrepararFiltros;

  frxReport1.ShowReport;
end;

procedure TfrmRelActorFilm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  QryAtor.Close;


  frmRelActorFilm := nil;
end;

procedure TfrmRelActorFilm.PrepararFiltros;
begin
  QryAtor.Close;

  QryAtor.ParamByName('LAST_NAME').AsString := '';
  if (Trim(edtLastName.Text) <> EmptyStr) then
  begin
    QryAtor.ParamByName('LAST_NAME').AsString := '%' + Trim(edtLastName.Text) + '%';
  end;

  QryAtor.Open;
end;

end.

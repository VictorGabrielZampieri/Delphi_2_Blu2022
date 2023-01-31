unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, UObserver, UNotificacao;

type
  TfrmHistorico = class(TFrame, IObserver)
    Label1: TLabel;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Total: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TfrmHistorico }

procedure TfrmHistorico.Atualizar(aNotificacao: TNotificacao);
begin
  if aNotificacao.Operacao = 'Crédito' then
  Exit;

  //Encontra a categoria de debito para somar o valor
  if ClientDataSet1.Locate('Categoria', aNotificacao.Categoria, []) then
  begin
      ClientDataSet1.Edit;

      ClientDataSet1.FieldByName('Total').AsFloat := ClientDataSet1.FieldByName('Total').AsFloat + aNotificacao.Valor;
      ClientDataSet1.Post;

      Exit;
  end;
   //Cadastra a categoria caso ela ainda nao exista no argumento
   ClientDataSet1.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
end;

end.

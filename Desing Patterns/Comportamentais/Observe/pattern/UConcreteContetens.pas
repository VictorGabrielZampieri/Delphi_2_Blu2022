unit UConcreteContetens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  System.Generics.Collections, USubject, UObserver;

type
  TFrame1 = class(TFrame, ISubject)           //o nome dele e na verdade UConcreteSubject
    btnGravar: TButton;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValor: TEdit;
    cmbCategoria: TComboBox;
    cmbOperacao: TComboBox;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Operacao: TStringField;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Valor: TFloatField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnGravarClick(Sender: TObject);
    procedure cmbOperacaoChange(Sender: TObject);
  private
    { Private declarations }
    FObservers: TList<IObserver>;
    procedure Notificar;
    procedure CarregarCategorias;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor destroy; override;

    procedure AdicionarObserver(aObserver: IObserver);
    procedure RemoverObserver(aObserver: IObserver);
  end;

implementation

uses
  UNotificacao;

{$R *.dfm}
 procedure TFrame1.AdicionarObserver(aObserver: IObserver);
begin
  FObservers.Add(aObserver);
end;

procedure TFrame1.btnGravarClick(Sender: TObject);
begin
  //Adiciona um registro no DataSet conforme valores informados pelo usuario
  ClientDataSet1.AppendRecord([cmbOperacao.Text, cmbCategoria.Text, StrToFloatDef(edtValor.Text,0)]);

  //Chama o metodo de notificacao
  Self.Notificar;
end;

procedure TFrame1.CarregarCategorias;
begin
  cmbCategoria.Clear;

  case (cmbOperacao.ItemIndex) of
    0:
    begin
      cmbCategoria.Items.Add('Salário');
      cmbCategoria.Items.Add('13º');
      cmbCategoria.Items.Add('Restitução do IR');
      cmbCategoria.Items.Add('Freelancing');
    end;
    1:
    begin
       cmbCategoria.Items.Add('Aluguel');
       cmbCategoria.Items.Add('Supermercado');
       cmbCategoria.Items.Add('Farmácia');
       cmbCategoria.Items.Add('Escola');
       cmbCategoria.Items.Add('Combustível');
       cmbCategoria.Items.Add('Alimentação');
       cmbCategoria.Items.Add('Roupas');
       cmbCategoria.Items.Add('Viagens');
    end;
  end;
end;

procedure TFrame1.cmbOperacaoChange(Sender: TObject);
begin
  Self.CarregarCategorias;
end;

constructor TFrame1.Create(aOwner: TComponent);
begin
  inherited;
   FObservers := TList<IObserver>.Create;
end;

destructor TFrame1.destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TFrame1.Notificar;
var
  xNotificacao: TNotificacao;
  xObserver: IObserver;
begin
  xNotificacao.Operacao := ClientDataSet1.FieldByName('Operacao').AsString;
  xNotificacao.Categoria := ClientDataSet1.FieldByName('Categoria').AsString;
  xNotificacao.Valor     := ClientDataSet1.FieldByName('Valor').AsFloat;

  for xObserver in FObservers do
  begin
    xObserver.Atualizar(xNotificacao);
  end;

end;

procedure TFrame1.RemoverObserver(aObserver: IObserver);
begin
  FObservers.Delete(FObservers.IndexOf(aObserver));
end;

end.

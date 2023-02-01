unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, USubject,
  System.Generics.Collections, UConcreteObserver_log, UConcreteContetens,
  UConcreteObserver_Historico, UConcreteObserver_Saldo;

type
  TfrmPrincipal = class(TForm)
    Frame11: TFrame1;
    frmSaldo1: TfrmSaldo;
    frmLog1: TfrmLog;
    frmHistorico1: TfrmHistorico;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UNotificacao;

{$R *.dfm}

{ TfrmPrincipal }



procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Frame11.AdicionarObserver(frmSaldo1);
  Frame11.AdicionarObserver(frmHistorico1);
  Frame11.AdicionarObserver(frmLog1);
end;

end.

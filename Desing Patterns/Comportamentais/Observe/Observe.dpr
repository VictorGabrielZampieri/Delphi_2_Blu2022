program Observe;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  USubject in 'pattern\USubject.pas',
  UObserver in 'pattern\UObserver.pas',
  UNotificacao in 'pattern\UNotificacao.pas',
  UConcreteObserver_log in 'pattern\UConcreteObserver_log.pas' {frmLog: TFrame},
  UConcreteObserver_Saldo in 'pattern\UConcreteObserver_Saldo.pas' {frmSaldo: TFrame},
  UConcreteObserver_Historico in 'pattern\UConcreteObserver_Historico.pas' {frmHistorico: TFrame},
  UConcreteContetens in 'pattern\UConcreteContetens.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

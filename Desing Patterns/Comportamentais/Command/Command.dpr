program Command;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UInvoker in 'Parttern\UInvoker.pas',
  UReceiver in 'Parttern\UReceiver.pas',
  UConcreteCommand in 'Parttern\UConcreteCommand.pas',
  UCommand in 'Parttern\UCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

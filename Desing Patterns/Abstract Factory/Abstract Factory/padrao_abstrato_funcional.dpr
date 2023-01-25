program padrao_abstrato_funcional;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UInterface in 'pattern\factory\UInterface.pas',
  UDell in 'pattern\factory\UDell.pas',
  UApple in 'pattern\factory\UApple.pas',
  UMac in 'pattern\entities\UMac.pas',
  UInspiron in 'pattern\entities\UInspiron.pas',
  UVostro in 'pattern\entities\UVostro.pas',
  UMacbook in 'pattern\entities\UMacbook.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

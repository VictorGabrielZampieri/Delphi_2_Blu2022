program Adapter;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UWebServiceCorreios in 'pattern\Addapter\UWebServiceCorreios.pas',
  UInterfaceViaCEP in 'pattern\Addapter\UInterfaceViaCEP.pas',
  UTarget in 'pattern\Addapter\UTarget.pas',
  UAdapter in 'pattern\Addapter\UAdapter.pas',
  UWebServiceViaCEP in 'pattern\Addapter\UWebServiceViaCEP.pas',
  UAdaptee in 'pattern\Addapter\UAdaptee.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

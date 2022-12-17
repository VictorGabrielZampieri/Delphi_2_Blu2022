program Calculo_IMC;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  USplash in 'USplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.Run;
end.

program NetFlix;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPricipal in 'UfrmPricipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

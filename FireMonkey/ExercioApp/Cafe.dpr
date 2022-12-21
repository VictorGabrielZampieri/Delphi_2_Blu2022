program Cafe;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

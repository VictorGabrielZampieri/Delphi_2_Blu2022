program Diario;

uses
  Vcl.Forms,
  UfrmPrnicipal in 'UfrmPrnicipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

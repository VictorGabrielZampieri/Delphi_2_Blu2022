program Project1;

uses
  Vcl.Forms,
  UManipulacaArquivo in 'UManipulacaArquivo.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

program UltimosExer;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  Ufrm28 in 'Ufrm28.pas' {frm28},
  Ufrm29 in 'Ufrm29.pas' {frm29};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

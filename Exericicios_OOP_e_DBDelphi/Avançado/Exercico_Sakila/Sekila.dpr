program Sekila;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmSekila in 'UdmSekila.pas' {frmConecxao},
  UfrmRelAtor in 'UfrmRelAtor.pas' {frmRelAtor},
  UfrmRelCidade in 'UfrmRelCidade.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConecxao, frmConecxao);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

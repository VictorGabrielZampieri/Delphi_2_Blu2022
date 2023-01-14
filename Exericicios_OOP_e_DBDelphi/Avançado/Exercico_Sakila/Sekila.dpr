program Sekila;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmSekila in 'UdmSekila.pas' {frmConecxao},
  UfrmRelAtor in 'UfrmRelAtor.pas' {frmRelAtor},
  UfrmRelCidade in 'UfrmRelCidade.pas' {frmRelCidade},
  UfrmRelActorFilms in 'UfrmRelActorFilms.pas' {frmRelActorFilm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConecxao, frmConecxao);
  Application.CreateForm(TfrmRelActorFilm, frmRelActorFilm);
  Application.Run;
end.

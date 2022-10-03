program Project1;

uses
  Vcl.Forms,
  UFrmPrincipal in '..\Exercicio1\UFrmPrincipal.pas' {Form1},
  UAnimal in '..\Exercicio1\UAnimal.pas',
  USecoes in '..\Exercicio1\USecoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

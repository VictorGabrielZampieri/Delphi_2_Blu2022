program Project1;

uses
  Vcl.Forms,
  ufrmDebugger in '..\Exercicio8\Win32\ufrmDebugger.pas' {Form1},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
program calculado_interface;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UICalculadoraService in '..\services\UICalculadoraService.pas',
  UCalculadoraServiceDefault in '..\services\UCalculadoraServiceDefault.pas',
  UCalculadoraService in '..\services\UCalculadoraService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

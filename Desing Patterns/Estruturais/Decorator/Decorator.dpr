program Decorator;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UInterfaceComponent in 'partterns\Decorator\UInterfaceComponent.pas',
  UDecorator in 'partterns\Decorator\UDecorator.pas',
  UConcreteDecorator_DataHora in 'partterns\Decorator\UConcreteDecorator_DataHora.pas',
  UConcreteComponent in 'partterns\Decorator\UConcreteComponent.pas',
  UConcreteDecorator_Usuario in 'partterns\Decorator\UConcreteDecorator_Usuario.pas',
  UConcreteDecorator_Windows in 'partterns\Decorator\UConcreteDecorator_Windows.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

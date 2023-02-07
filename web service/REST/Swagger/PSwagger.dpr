program PSwagger;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UPessoas in 'Model\entities\UPessoas.pas',
  UController.Pessoa in 'Model\controllers\UController.Pessoa.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
program Claculadora;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UIOperacoes in 'UIOperacoes.pas',
  UCalculadora in 'Services\UCalculadora.pas';

begin

  THorse.Get('/somar/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xResult, xValor1, xValor2 : Double;
      xCalculadora: ICalculadora;
    begin
      if (Req.Params.Count <> 2) then
      begin
        Res.Send('Parâmetros incorretos!');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
      begin
        Res.Send('Valor 1 incorreto');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
      begin
        Res.Send('Valor 2 incorreto');
        Exit;
      end;

      xCalculadora := ICalculadora.Create;
      xResult   := xCalculadora.Sum(xValor1, xValor2);

      Res.Send('Soma: '+ xResult.ToString);
    end);
    ///////Subtrair
    THorse.Get('/subtrair/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xResult, xValor1, xValor2 : Double;
      xCalculadora: ICalculadora;
    begin
      if (Req.Params.Count <> 2) then
      begin
        Res.Send('Parâmetros incorretos!');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
      begin
        Res.Send('Valor 1 incorreto');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
      begin
        Res.Send('Valor 2 incorreto');
        Exit;
      end;

      xCalculadora := ICalculadora.Create;
      xResult   := xCalculadora.Subtract(xValor1, xValor2);

      Res.Send('Subtração: '+ xResult.ToString);
    end);
    ///////Multiplicar
    THorse.Get('/multiplicar/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xResult, xValor1, xValor2 : Double;
      xCalculadora: ICalculadora;
    begin
      if (Req.Params.Count <> 2) then
      begin
        Res.Send('Parâmetros incorretos!');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
      begin
        Res.Send('Valor 1 incorreto');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
      begin
        Res.Send('Valor 2 incorreto');
        Exit;
      end;

      xCalculadora := ICalculadora.Create;
      xResult   := xCalculadora.Multiply(xValor1, xValor2);

      Res.Send('Multiplicar: '+ xResult.ToString);
    end);
    ///////Dividir
    THorse.Get('/dividir/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xResult, xValor1, xValor2 : Double;
      xCalculadora: ICalculadora;
    begin
      if (Req.Params.Count <> 2) then
      begin
        Res.Send('Parâmetros incorretos!');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
      begin
        Res.Send('Valor 1 incorreto');
        Exit;
      end;

      if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
      begin
        Res.Send('Valor 2 incorreto');
        Exit;
      end;

      if (xValor1 = 0) or (xValor2 = 0) then
      begin
        Res.Send('Proibido divisao por zero');
        Exit;
      end;

      xCalculadora := ICalculadora.Create;
      xResult   := xCalculadora.Divide(xValor1, xValor2);

      Res.Send('Divisao: '+ xResult.ToString);
    end);



  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
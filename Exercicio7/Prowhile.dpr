program Prowhile;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
xSaldo, xSangria: Currency;
xContinuar: Byte;

begin
  try
    Writeln('Registro de dinheiro na conta');

    Writeln('Entre com o saldo da sua conta');
    Readln(xSaldo);

    while xSaldo > 0  do
    begin
      writeln('Qual ser� o valor da sua retirada: ');
      Readln(xSangria);



      if xSangria < 0 then
      begin
      Writeln('Quantia inv�lida!');
      Continue;
      end;

      xSaldo := xSaldo - xSangria;

      Writeln('Deseja continuar com as retiradas? (1-Sim 2-N�o)');
      Readln(xContinuar);

      if xContinuar<> 1 then
      break;
    end;

    Writeln('Seu saldo atual � ' + FloatToStr(xSaldo));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

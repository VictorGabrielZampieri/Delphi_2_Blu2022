program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x,y:  Integer;
begin
  try
    x := 5;
    y := 0;

    while (x > 2) do
    begin

    //if x = 4 then
    //continue; - cuidado para não causar um loop infinito
      writeln(IntToStr(x));

      y := y + x;
      x := x - 1;
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

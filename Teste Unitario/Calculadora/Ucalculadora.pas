unit Ucalculadora;

interface

type
 TEnumOperacoes = (opSomar, opSubtrair, opMultiplicar, opDividir);
 TCalculador = class(TObject)
   public
    function somar(aNum1, aNum2 : Double): Double;
    function Subtrair(aNum1, aNum2 : Double): Double;
    function multiplicar(aNum1, aNum2 : Double): Double;
    function dividir(aNum1, aNum2 : Double): Double;
 end;


implementation

uses
  System.SysUtils;

{ TCalculador }

function TCalculador.dividir(aNum1, aNum2: Double): Double;
var
  xResultado : Double;
begin
  if aNum2 = 0 then
  raise Exception.Create('Não é possivel Realizar uma divisão por zero');
  xResultado := aNum1/aNum2;

  Result := xResultado;
end;

function TCalculador.multiplicar(aNum1, aNum2: Double): Double;
var
  xResultado : Double;
begin
  xResultado := aNum1*aNum2;

  Result := xResultado;
end;

function TCalculador.somar(aNum1, aNum2: Double): Double;
var
  xResultado : Double;
begin
  xResultado := aNum1+aNum2;

  Result := xResultado;
end;

function TCalculador.Subtrair(aNum1, aNum2: Double): Double;
var
  xResultado : Double;
begin
  xResultado := aNum1-aNum2;

  Result := xResultado;
end;

end.

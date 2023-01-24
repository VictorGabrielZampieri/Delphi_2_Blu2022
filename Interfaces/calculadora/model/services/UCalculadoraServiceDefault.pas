unit UCalculadoraServiceDefault;

interface

uses
  UICalculadoraService;

type
  TCalculatorServiceDefault = class(TInterfacedObject, ICalculadoraService)
    function Sum(aNum1, aNum2: Double): Double;
    function Subtract(aNum1, aNum2: Double): Double;
    function Multiply(aNum1, aNum2: Double): Double;
    function Divide(aNum1, aNum2: Double): Double;
  end;

implementation

{ TCalculatorServiceDefault }

function TCalculatorServiceDefault.Divide(aNum1, aNum2: Double): Double;
begin
  if (aNum1 = 0) and (aNum2 = 0) then
    Result := 0
  else
    Result := aNum1/aNum2;
end;

function TCalculatorServiceDefault.Multiply(aNum1, aNum2: Double): Double;
begin
  Result := aNum1*aNum2;
end;

function TCalculatorServiceDefault.Subtract(aNum1, aNum2: Double): Double;
begin
  Result := aNum1-aNum2;
end;

function TCalculatorServiceDefault.Sum(aNum1, aNum2: Double): Double;
begin
  Result := aNum1+aNum2;
end;

end.

unit UCalculadora;

interface

uses
  UIOperacoes;

type
  ICalculadora = class(TInterfacedObject, TIOperacoes)
    public
      function Sum(aNum1, aNum2: Double): Double;
      function Subtract(aNum1, aNum2: Double): Double;
      function Multiply(aNum1, aNum2: Double): Double;
      function Divide(aNum1, aNum2: Double): Double;
  end;
implementation

{ ICalculadora }

function ICalculadora.Divide(aNum1, aNum2: Double): Double;
begin
  Result := aNum1/aNum2;
end;

function ICalculadora.Multiply(aNum1, aNum2: Double): Double;
begin
  Result := aNum1*aNum2;
end;

function ICalculadora.Subtract(aNum1, aNum2: Double): Double;
begin
  Result := aNum1-aNum2;
end;

function ICalculadora.Sum(aNum1, aNum2: Double): Double;
begin
  Result := aNum1+aNum2;
end;

end.

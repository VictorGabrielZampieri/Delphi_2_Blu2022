unit UICalculadoraService;

interface

type
  ICalculadoraService = interface
    ['{D684DB5B-7E65-4999-B957-2A267563F1C8}']

    function Sum(aNum1, aNum2: Double): Double;
    function Subtract(aNum1, aNum2: Double): Double;
    function Multiply(aNum1, aNum2: Double): Double;
    function Divide(aNum1, aNum2: Double): Double;
  end;

implementation

end.

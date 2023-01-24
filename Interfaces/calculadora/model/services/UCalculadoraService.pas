unit UCalculadoraService;

interface

uses
  UICalculadoraService;

type
  TTypeCalc = (opSum, opSub, opMult, opDiv);

  TCalculadoraService = class
    private
      Fnum1 : Double;
      Fnum2 : Double;
      FCalculadoService : ICalculadoraService;
    public
      function processarCal(aTypeCal : TTypeCalc): Double;
      constructor Create(const aNum1, aNum2 : Double; aCalculadoraService : ICalculadoraService);
  end;
implementation

{ TCalculadoraService }

constructor TCalculadoraService.Create(const aNum1, aNum2: Double;
  aCalculadoraService: ICalculadoraService);
begin
  Fnum1 := aNum1;
  Fnum2 := aNum2;
  FCalculadoService := aCalculadoraService;
end;

function TCalculadoraService.processarCal(aTypeCal: TTypeCalc): Double;
begin
  case aTypeCal of
    opSum:
      Result := FCalculadoService.Sum(Fnum1, Fnum2);
    opSub:
      Result := FCalculadoService.Subtract(Fnum1, Fnum2);
    opMult:
      Result := FCalculadoService.Multiply(Fnum1, Fnum2);
    opDiv:
      Result := FCalculadoService.Divide(Fnum1, Fnum2);
  end;
end;

end.

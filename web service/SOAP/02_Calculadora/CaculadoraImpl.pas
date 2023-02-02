{ Invokable implementation File for TCaculadora which implements ICaculadora }

unit CaculadoraImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, CaculadoraIntf;

type

  { TCaculadora }
  TCaculadora = class(TInvokableClass, ICaculadora)
  public
    function echoSomar(const aNum, aNum2: Double): Double; stdcall;
    function echoSubtrair(const aNum, aNum2: Double): Double; stdcall;
    function echoDividir(const aNum, aNum2: Double): Double; stdcall;
    function echoMultiplicar(const aNum, aNum2: Double): Double; stdcall;
  end;

implementation

uses
  System.SysUtils;




{ TCaculadora }

function TCaculadora.echoDividir(const aNum, aNum2: Double): Double;
begin
if (aNum = 0) or (aNum2 = 0) then
begin
   raise Exception.Create('Por favor não faça divisao por zero');
end
else
  Result := aNum/ aNum2;
end;

function TCaculadora.echoMultiplicar(const aNum, aNum2: Double): Double;
begin
   Result := aNum* aNum2;
end;

function TCaculadora.echoSomar(const aNum, aNum2: Double): Double;
begin
  Result := aNum+ aNum2;
end;

function TCaculadora.echoSubtrair(const aNum, aNum2: Double): Double;
begin
   Result := aNum- aNum2;
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TCaculadora);
end.


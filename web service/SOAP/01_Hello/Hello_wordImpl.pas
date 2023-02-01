{ Invokable implementation File for THello_word which implements IHello_word }

unit Hello_wordImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, Hello_wordIntf;

type

  { THello_word }
  THello_word = class(TInvokableClass, IHello_word)
  public
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
  end;

implementation

function THello_word.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implement method echoEnum }
  Result := Value;
end;

function THello_word.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implement method echoDoubleArray }
  Result := Value;
end;

function THello_word.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implement method echoMyEmployee }
  Result := Value;
end;

function THello_word.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implement method echoDouble }
  Result := Value;
end;


initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(THello_word);
end.


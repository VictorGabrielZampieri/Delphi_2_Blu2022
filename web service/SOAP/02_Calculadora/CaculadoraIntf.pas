{ Invokable interface ICaculadora }

unit CaculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  ICaculadora = interface(IInvokable)
  ['{0579A73E-745A-4E98-B797-8C9F093403A1}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function echoSomar(const aNum, aNum2: Double): Double; stdcall;
    function echoSubtrair(const aNum, aNum2: Double): Double; stdcall;
    function echoDividir(const aNum, aNum2: Double): Double; stdcall;
    function echoMultiplicar(const aNum, aNum2: Double): Double; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICaculadora));

end.

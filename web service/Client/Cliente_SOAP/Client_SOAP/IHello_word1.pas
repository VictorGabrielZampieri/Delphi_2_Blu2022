// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9090/wsdl/IHello_word
//  >Import : http://localhost:9090/wsdl/IHello_word>0
// Version  : 1.0
// (03/02/2023 19:28:51 - - $Rev: 103843 $)
// ************************************************************************ //

unit IHello_word1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TMyEmployee          = class;                 { "urn:Hello_wordIntf"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "urn:Hello_wordIntf"[GblSmpl] }
  TEnumTest = (etNone, etAFew, etSome, etAlot);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : TMyEmployee, global, <complexType>
  // Namespace : urn:Hello_wordIntf
  // ************************************************************************ //
  TMyEmployee = class(TRemotable)
  private
    FLastName: string;
    FFirstName: string;
    FSalary: Double;
  published
    property LastName:  string  read FLastName write FLastName;
    property FirstName: string  read FFirstName write FFirstName;
    property Salary:    Double  read FSalary write FSalary;
  end;

  TDoubleArray = array of Double;               { "urn:Hello_wordIntf"[GblCplx] }

  // ************************************************************************ //
  // Namespace : urn:Hello_wordIntf-IHello_word
  // soapAction: urn:Hello_wordIntf-IHello_word#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IHello_wordbinding
  // service   : IHello_wordservice
  // port      : IHello_wordPort
  // URL       : http://localhost:9090/soap/IHello_word
  // ************************************************************************ //
  IHello_word = interface(IInvokable)
  ['{1012607A-CA53-8141-52C8-C748D876561E}']
    function  echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function  echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function  echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function  echoDouble(const Value: Double): Double; stdcall;
    function  echoHelloWord: string; stdcall;
  end;

function GetIHello_word(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IHello_word;


implementation
  uses System.SysUtils;

function GetIHello_word(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IHello_word;
const
  defWSDL = 'http://localhost:9090/wsdl/IHello_word';
  defURL  = 'http://localhost:9090/soap/IHello_word';
  defSvc  = 'IHello_wordservice';
  defPrt  = 'IHello_wordPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IHello_word);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IHello_word }
  InvRegistry.RegisterInterface(TypeInfo(IHello_word), 'urn:Hello_wordIntf-IHello_word', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IHello_word), 'urn:Hello_wordIntf-IHello_word#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TEnumTest), 'urn:Hello_wordIntf', 'TEnumTest');
  RemClassRegistry.RegisterXSClass(TMyEmployee, 'urn:Hello_wordIntf', 'TMyEmployee');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TDoubleArray), 'urn:Hello_wordIntf', 'TDoubleArray');

end.
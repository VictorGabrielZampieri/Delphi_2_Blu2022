// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9090/wsdl/ICaculadora
// Version  : 1.0
// (03/02/2023 19:50:48 - - $Rev: 103843 $)
// ************************************************************************ //

unit ICaculadora1;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:CaculadoraIntf-ICaculadora
  // soapAction: urn:CaculadoraIntf-ICaculadora#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : ICaculadorabinding
  // service   : ICaculadoraservice
  // port      : ICaculadoraPort
  // URL       : http://localhost:9090/soap/ICaculadora
  // ************************************************************************ //
  ICaculadora = interface(IInvokable)
  ['{9A984119-3499-F735-18C3-4D5585372A9B}']
    function  echoSomar(const aNum: Double; const aNum2: Double): Double; stdcall;
    function  echoSubtrair(const aNum: Double; const aNum2: Double): Double; stdcall;
    function  echoDividir(const aNum: Double; const aNum2: Double): Double; stdcall;
    function  echoMultiplicar(const aNum: Double; const aNum2: Double): Double; stdcall;
  end;

function GetICaculadora(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICaculadora;


implementation
  uses System.SysUtils;

function GetICaculadora(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICaculadora;
const
  defWSDL = 'http://localhost:9090/wsdl/ICaculadora';
  defURL  = 'http://localhost:9090/soap/ICaculadora';
  defSvc  = 'ICaculadoraservice';
  defPrt  = 'ICaculadoraPort';
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
    Result := (RIO as ICaculadora);
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
  { ICaculadora }
  InvRegistry.RegisterInterface(TypeInfo(ICaculadora), 'urn:CaculadoraIntf-ICaculadora', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICaculadora), 'urn:CaculadoraIntf-ICaculadora#%operationName%');

end.
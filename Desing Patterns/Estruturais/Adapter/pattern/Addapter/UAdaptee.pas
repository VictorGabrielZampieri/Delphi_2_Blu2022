unit UAdaptee;

interface

uses
  UWebServiceCorreios, System.Classes;

type
  TWebServiceCorreios = class
    private
    FParametros: ConsultaCEP;
    FResposta: enderecoERP;

    procedure BeforeExecute(const aMethodName: String; aSOAPRequest: TStream);
    public
      destructor Destroy; override;
      procedure DefinirParametrosConsulta(const aCep: String);
      procedure ConsultarCEP;
      function ObterResposta(const aInformacao: String): String;
  end;

implementation

uses
  System.SysUtils, Soap.SOAPHTTPClient;

{ TWebServiceCorreios }

procedure TWebServiceCorreios.BeforeExecute(const aMethodName: String;
  aSOAPRequest: TStream);
var
  xResquest: TStringList;
begin
  //Sobrescreve a requisicao SOAP para deixa-la de acordo com a estrutura
  //exigida pelo webService

  xResquest := TStringList.Create;
  try
     xResquest.Text :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/">' +
      '  <soapenv:Header/>' +
      '    <soapenv:Body>'   +
      '      <cli:consultaCEP>' +
      '        <cep>'  + FParametros.cep  + '</cep>'+
      '      </cli:consultaCEP>'+
      '    </soapenv:Body>' +
      '</soapenv:Envelope>';
       aSOAPRequest.Position := 0;
    aSOAPRequest.Size := Length(xResquest.Text);
    xResquest.SaveToStream(aSOAPRequest);
  finally
     FreeAndNil(xResquest);
  end;
end;

procedure TWebServiceCorreios.ConsultarCEP;
var
  xCorreios: AtendeCliente;
  xHTTPRIO: THTTPRIO;
begin
  xHTTPRIO := THTTPRIO.Create(nil);
  xHTTPRIO.OnBeforeExecute := Self.BeforeExecute;

  xCorreios := GetAtendeCliente(True, '', xHTTPRIO);
  FResposta := xCorreios.consultaCEP(FParametros).return;
end;

procedure TWebServiceCorreios.DefinirParametrosConsulta(const aCep: String);
begin
  FParametros := consultaCEP.Create;
  FParametros.cep := aCep;

end;

destructor TWebServiceCorreios.Destroy;
begin
  FreeAndNil(FParametros);
  FreeAndNil(FResposta);
  inherited;
end;

function TWebServiceCorreios.ObterResposta(const aInformacao: String): String;
begin
  Result := EmptyStr;

  if aInformacao = 'Logradouro' then
    Result := FResposta.end_
  else if aInformacao = 'Bairro' then
    Result := FResposta.bairro
  else if aInformacao = 'Cidade' then
    Result := FResposta.cidade;
end;

end.

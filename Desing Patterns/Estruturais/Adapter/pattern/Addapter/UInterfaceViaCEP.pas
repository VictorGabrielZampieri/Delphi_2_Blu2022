unit UInterfaceViaCEP;

interface

type
  IWebServiceViaCep = interface
  ['{77B4F44F-8E28-4728-9464-A532BAE7299E}']
  procedure ConsultarEnderecoWebService(const aCep: String);
  function ObterLogradouro: String;
  function ObterBairro: String;
  function ObterCidade: String;
  end;

implementation

end.

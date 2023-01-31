unit UConcreteDecorator_DataHora;

interface

uses
  UDecorator;

type
  TDataHoraDecorator = class(TDecorator)
    protected
      function ObterDadosExcecao: String; Override;
    end;

implementation

{ TDataHoraDecorator }

uses
  System.SysUtils;

function TDataHoraDecorator.ObterDadosExcecao: String;
begin
  Result := Inherited ObterDadosExcecao;
  Result := Result+'Data/Hora: '+ FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;

end.

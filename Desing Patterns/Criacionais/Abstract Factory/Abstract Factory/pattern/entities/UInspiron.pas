unit UInspiron;

interface

uses
  UInterface;

type
  TIInspiron = class(TInterfacedObject, IDesktop)
    function  BuscarNomeProcessador: String;
    function  BuscarTamanhoHD: String;
  end;
implementation

{ TIInspiron }

function TIInspiron.BuscarNomeProcessador: String;
begin
  Result := 'Intel Core i5';
end;

function TIInspiron.BuscarTamanhoHD: String;
begin
  Result := '1 TB';
end;


end.

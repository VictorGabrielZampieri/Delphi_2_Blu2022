unit UMacbook;

interface

uses
  UInterface;

type
  TIMacbook = class(TInterfacedObject, INotebook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

implementation

{ TIMac }

function TIMacbook.BuscarMemoriaRam: String;
begin
  Result := '4GB DDR3';
end;

function TIMacbook.BuscarTamanhoTela: String;
begin
  Result := '11.6 polegadas';
end;

end.

unit UVostro;

interface

uses
  UInterface;

type
  TIVostro = class(TInterfacedObject, INotebook)
     function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

implementation

{ TIVostro }

function TIVostro.BuscarMemoriaRam: String;
begin
  Result := '3GB DDR3';
end;

function TIVostro.BuscarTamanhoTela: String;
begin
  Result := 'Tela de 14 polegadas';
end;

end.

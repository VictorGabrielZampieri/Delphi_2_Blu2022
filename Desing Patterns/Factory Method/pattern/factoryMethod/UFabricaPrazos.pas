unit UFabricaPrazos;

interface

uses
  UTipoPrazo;

type
    TFabricaPrazos = class(TInterfacedObject, IFactoryMethod)
  private
  public
      function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;

implementation

uses
  UPrazoAnual, UPrazoMensal;


{ TPrazoMensal }

function TFabricaPrazos.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
begin
  if aPrazo = 'Mensal' then
    Result := TPrazoMensal.Create
  else
    Result := TPrazoAnual.Create;


end;

end.

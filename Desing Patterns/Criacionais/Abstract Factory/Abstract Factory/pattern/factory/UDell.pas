unit UDell;

interface

uses
  UInterface;

type
  TDell = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

uses
  UVostro, UInspiron;



{ TDell }

function TDell.ConsultarDesktop: IDesktop;
begin
  Result := TIInspiron.Create;
end;

function TDell.ConsultarNotebook: INotebook;
begin
   Result := TIVostro.create;
end;

end.

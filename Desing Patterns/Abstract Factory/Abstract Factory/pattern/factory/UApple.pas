unit UApple;

interface

uses
  UInterface;

type
  TApple = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

uses
  UMac, UMacbook;

{ TApple }

function TApple.ConsultarDesktop: IDesktop;
begin
   Result := TIMac.Create;
end;

function TApple.ConsultarNotebook: INotebook;
begin
   Result := TIMacbook.Create;
end;

end.

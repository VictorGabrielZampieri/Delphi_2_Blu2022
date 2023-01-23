unit UFila;

interface

uses
  Generics.Collections, UPessoa, Vcl.Dialogs;

type
  TFila = class
    private
      FPacientes: TQueue<TPessoa>;
    public
      Destructor destroy; override;
      Constructor Create;
      procedure Adicionar(aPessoa: TPessoa);
      function Proximo : TPessoa;
      function PeekPaciente : TPessoa;

  end;

implementation

uses
  System.SysUtils;

{ Fila }

procedure TFila.Adicionar(aPessoa: TPessoa);
begin
  FPacientes.Enqueue(aPessoa);
end;

constructor TFila.Create;
begin
  FPacientes := TQueue<TPessoa>.Create;
end;

destructor TFila.destroy;
begin
   FPacientes.Clear;
   FreeAndNil(FPacientes);
  inherited;
end;

function TFila.PeekPaciente: TPessoa;
begin
  Result := FPacientes.Peek;
end;

function TFila.Proximo: TPessoa;
begin
  if (FPacientes.Count = 0) then
  begin
    ShowMessage('Não Há mais Pacientes na fila');
  end
  else if (FPacientes.Count = 1) then
    Result := FPacientes.Peek
  else
    Result :=  FPacientes.Dequeue;
end;

end.

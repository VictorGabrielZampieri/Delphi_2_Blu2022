unit UDisciplina;

interface

type
  TDisciplina = class
    private
      FCodigo    : Integer;
      FDescricao : String;
    function GetCodigo: Integer;
    function GetDescricao: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    public

    property  Codigo: Integer Read GetCodigo write SetCodigo;
    property  Descricao: String Read GetDescricao write SetDescricao;
  end;

implementation

{ TDisciplina }

function TDisciplina.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TDisciplina.GetDescricao: String;
begin
  Result := FDescricao;
end;

procedure TDisciplina.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TDisciplina.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.

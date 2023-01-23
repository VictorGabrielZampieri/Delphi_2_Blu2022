unit UPessoa;

interface

type
  TPessoa = class
    private
      FCpf : String;
      FNome : String;
      FEspecialidade : String;
    function GetCpf: String;
    function GetEspecialidade: String;
    function GetNome: String;
    procedure SetCpf(const Value: String);
    procedure SetEspecialidade(const Value: String);
    procedure SetNome(const Value: String);
    public
      property Cpf : String Read GetCpf write SetCpf;
      property Nome : String Read GetNome write SetNome;
      property Especialidade : String Read GetEspecialidade write SetEspecialidade;
  end;

implementation

{ TPessoa }

function TPessoa.GetCpf: String;
begin
  Result := FCpf;
end;

function TPessoa.GetEspecialidade: String;
begin
  Result := FEspecialidade;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetCpf(const Value: String);
begin
  FCpf := Value;
end;

procedure TPessoa.SetEspecialidade(const Value: String);
begin
  FEspecialidade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.

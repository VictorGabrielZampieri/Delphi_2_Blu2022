unit UJogador;

interface

type
  TJogador = class
    private
      FID : Integer;
      FNome : String;
      FIdade : Integer;
      FPosicao : String;
    function GetID: Integer;
    function GetIdade: Integer;
    function GetNome: String;
    function GetPosicao: String;
    procedure SetID(const Value: Integer);
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPosicao(const Value: String);
    public
       property ID: Integer Read GetID write SetID;
       property Idade: Integer Read GetIdade write SetIdade;
       property Nome: String Read GetNome write SetNome;
       property Posicao: String Read GetPosicao write SetPosicao;
  end;

implementation

{ TJogador }

function TJogador.GetID: Integer;
begin
  Result := FID;
end;

function TJogador.GetIdade: Integer;
begin
  Result := FIdade;
end;

function TJogador.GetNome: String;
begin
  Result := FNome;
end;

function TJogador.GetPosicao: String;
begin
  Result := FPosicao;
end;

procedure TJogador.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TJogador.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TJogador.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TJogador.SetPosicao(const Value: String);
begin
  FPosicao := Value;
end;

end.

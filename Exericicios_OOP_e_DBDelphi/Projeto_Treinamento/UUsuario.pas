unit UUsuario;

interface

type
  TUsuario = Class
    private
      FId          : Integer;
      FNome        : String;
      FSenha       : String;
      FHash        : String;
      FStatusLogin : Boolean;
    function GetHash: String;
    function GetId: Integer;
    function GetNome: String;
    function GetSenha: String;
    function GetStatus: Boolean;
    procedure SetHash(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetSenha(const Value: String);
    procedure SetStatus(const Value: Boolean);
    public

    procedure Login(aSenha : String);

    property ID      : Integer Read GetId write SetId;
    property Nome    : String Read GetNome write SetNome;
    property Senha   : String Read GetSenha write SetSenha;
    property Hash    : String Read GetHash write SetHash;
    property Status  : Boolean Read GetStatus write SetStatus;
  End;
implementation

{ TUsuario }

function TUsuario.GetHash: String;
begin
  Result := FHash;
end;

function TUsuario.GetId: Integer;
begin
  Result := FId;
end;

function TUsuario.GetNome: String;
begin
  Result := FNome;
end;

function TUsuario.GetSenha: String;
begin
  Result := FSenha;
end;

function TUsuario.GetStatus: Boolean;
begin
  Result := FStatusLogin;
end;

procedure TUsuario.Login(aSenha: String);
begin
 // http://conexaoss.blogspot.com/2016/09/delphi-criptografar-e-decriptografar.html
end;

procedure TUsuario.SetHash(const Value: String);
begin
  FHash := value;
end;

procedure TUsuario.SetId(const Value: Integer);
begin
  FId := value;
end;

procedure TUsuario.SetNome(const Value: String);
begin
  FNome := value;
end;

procedure TUsuario.SetSenha(const Value: String);
begin
  FSenha := value;
end;

procedure TUsuario.SetStatus(const Value: Boolean);
begin
  FStatusLogin := value;
end;

end.

unit UEndereco;

interface

type
  TEndereco = Class
    private
      FId          : Integer;
      FRua         : String;
      FBairro      : String;
      FNumero      : String;
      FComplemento : String;
    function GetBairro: String;
    function GetComplemento: String;
    function GetId: Integer;
    function GetNumero: String;
    function GetRua: String;
    procedure SetBairro(const Value: String);
    procedure SetComplemento(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetNumero(const Value: String);
    procedure SetRua(const Value: String);

    public

    constructor Create(const aRua, aBairro, aNumero : String; aComplemento : String = '');
    property ID          : Integer Read GetId write SetId;
    property Rua         : String Read GetRua write SetRua;
    property Bairro      : String Read GetBairro write SetBairro;
    property Numero      : String Read GetNumero write SetNumero;
    property Complemento : String Read GetComplemento write SetComplemento;
  End;
implementation

{ TEndereco }

constructor TEndereco.Create(const aRua, aBairro, aNumero: String;
  aComplemento: String);
begin
  FRua         := aRua;
  FBairro      := aBairro;
  FNumero      := aNumero;
  FComplemento := aComplemento;
end;

function TEndereco.GetBairro: String;
begin
  Result := FBairro;
end;

function TEndereco.GetComplemento: String;
begin
  Result := FComplemento;
end;

function TEndereco.GetId: Integer;
begin
  Result := FId;
end;

function TEndereco.GetNumero: String;
begin
  Result := FNumero;
end;

function TEndereco.GetRua: String;
begin
  Result := FRua;
end;

procedure TEndereco.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TEndereco.SetComplemento(const Value: String);
begin
  FComplemento := Value;
end;

procedure TEndereco.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TEndereco.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TEndereco.SetRua(const Value: String);
begin
  FRua := Value;
end;

end.

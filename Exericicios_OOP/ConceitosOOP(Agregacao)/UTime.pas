unit UTime;

interface

uses
  System.Generics.Collections, UJogador;

type
  TTime = class
    private
      FID : Integer;
      FNomeTime : String;
      FTecnico : String;
      FAnoFundacao : TDate;
      FJogadores : TList<TJogador>;

    function GetAno: TDate;
    function GetID: Integer;
    function GetNomeTime: String;
    function GetTecnico: String;

    procedure SetAno(const Value: TDate);
    procedure SetID(const Value: Integer);
    procedure SetNomeTime(const Value: String);
    procedure SetTecnico(const Value: String);
    function GetJogadores: TList<TJogador>;

    public
      constructor Create(aJogadores : TList<TJogador>);

       property ID: Integer Read GetID write SetID;
       property NomeTime: String Read GetNomeTime write SetNomeTime;
       property Tecnico: String Read GetTecnico write SetTecnico;
       property AnoFundacao: TDate Read GetAno write SetAno;
       property Jogadores : TList<TJogador> Read GetJogadores;
  end;
implementation

{ TTime }

constructor TTime.Create(aJogadores: TList<TJogador>);
begin
  Inherited create;

  FJogadores := aJogadores;
end;

function TTime.GetAno: TDate;
begin
  Result := FAnoFundacao;
end;

function TTime.GetID: Integer;
begin
  Result := FID;
end;

function TTime.GetJogadores: TList<TJogador>;
begin
  Result := FJogadores;
end;

function TTime.GetNomeTime: String;
begin
  Result := FNomeTime;
end;

function TTime.GetTecnico: String;
begin
  Result := FTecnico;
end;

procedure TTime.SetAno(const Value: TDate);
begin
  FAnoFundacao := Value;
end;

procedure TTime.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TTime.SetNomeTime(const Value: String);
begin
  FNomeTime := Value;
end;

procedure TTime.SetTecnico(const Value: String);
begin
  FTecnico := Value;
end;

end.

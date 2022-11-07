unit UElevador;

interface

type
  TElevador = class
  private
    FAndarAtual : Integer;
    FTotalAndares : Integer;   //terreo = 0 ele não conta
    FCapacidadeMaxima : Integer;
    FQuantidadePessoas : Integer;

    function GetAndarAtual: Integer;
    function GetCapacidadeMax: Integer;
    function GetQuantidadePessoas: Integer;
    function GetTotalAndares: Integer;

  public
    constructor Create(const aCapacidade: Integer; const aTotalAndares: Integer; const aTerreo : Integer = 0; const aVazio : Integer = 0);
    property Andar_Atual: Integer Read GetAndarAtual;
    property Total_Andares: Integer Read GetTotalAndares;
    property Capacidade_Max: Integer Read GetCapacidadeMax ;
    property QuantidadePessoas: Integer Read GetQuantidadePessoas;
    procedure Entra(aQtndEntrando : Integer);
    procedure Sair(aQtndSaindo : Integer);
    procedure Sobe(aAndar : Integer);
    procedure Descer(aAndar : Integer);
  end;

implementation

uses
  System.SysUtils;

{ TElevador }

constructor TElevador.Create(const aCapacidade, aTotalAndares, aTerreo,
  aVazio: Integer);
begin
  FAndarAtual := aTerreo;
  FQuantidadePessoas := aVazio;
  FTotalAndares := aTotalAndares;
  FCapacidadeMaxima := aCapacidade;
end;

procedure TElevador.Descer(aAndar: Integer);
begin
  if Not (aAndar >= 0) then
  begin
    raise Exception.Create('Não é Possível Descer Mais');
  end

  else
    FAndarAtual := aAndar;
end;

procedure TElevador.Entra(aQtndEntrando: Integer);
begin
  if not (aQtndEntrando <= (FCapacidadeMaxima - FQuantidadePessoas)) then
  begin
    raise Exception.Create('Quantidade Maxima já alcançada');
  end
  else if not (aQtndEntrando > 0)  then
  begin
   raise Exception.Create('Valor Inválido');
  end
  else
      FQuantidadePessoas := FQuantidadePessoas + aQtndEntrando;
end;

function TElevador.GetAndarAtual: Integer;
begin
  Result := FAndarAtual;
end;

function TElevador.GetCapacidadeMax: Integer;
begin
  Result := FCapacidadeMaxima;
end;

function TElevador.GetQuantidadePessoas: Integer;
begin
  Result := FQuantidadePessoas;
end;

function TElevador.GetTotalAndares: Integer;
begin
  Result := FTotalAndares;
end;

procedure TElevador.Sair(aQtndSaindo: Integer);
begin
  if not (aQtndSaindo <= FQuantidadePessoas) then
  begin
    raise Exception.Create('Não Há niguem no elevador para sair');
  end
  else if not (aQtndSaindo > 0)  then
  begin
   raise Exception.Create('Valor Inválido');
  end

  else
      FQuantidadePessoas := FQuantidadePessoas - aQtndSaindo;
end;

procedure TElevador.Sobe(aAndar: Integer);
begin
  if Not (aAndar <= FTotalAndares) then
  begin
    raise Exception.Create('Não é Possível Subir Mais');
  end

  else
    FAndarAtual := aAndar;
  
end;

end.

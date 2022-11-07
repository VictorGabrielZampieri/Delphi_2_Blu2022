unit UAviao;

interface

type
  TEnumTipoCargo = (opComercial, opCivil);
  TAviao = class
    private
      FModelo                 : String;
      FTurbinas               : Integer;
      FTremDePouso            : Boolean;
      FAssentos               : Integer;
      FQuantidadeCombustivel  : Double;
      FEnumTipoCargo          : TEnumTipoCargo;

    function GetAssentos: Integer;
    function GetCargo: TEnumTipoCargo;
    function GetModelo: String;
    function GetQtndCombustivel: Double;
    function GetTremDePouso: Boolean;
    function GetTurbinas: Integer;

    procedure SetAssentos(const Value: Integer);
    procedure SetCargo(const Value: TEnumTipoCargo);
    procedure SetModelo(const Value: String);
    procedure SetQtndCombustivel(const Value: Double);
    procedure SetTremDePouso(const Value: Boolean);
    procedure SetTurbinas(const Value: Integer);

    public

      property Turbinas: Integer Read GetTurbinas write SetTurbinas;
      property Assentos: Integer Read GetAssentos write SetAssentos;
      property Cargo: TEnumTipoCargo Read GetCargo write SetCargo;
      property Modelo: String Read GetModelo write SetModelo;
      property QuantidadeCombustivel: Double Read GetQtndCombustivel write SetQtndCombustivel;
      property Trem_De_Pouso: Boolean Read GetTremDePouso write SetTremDePouso;

      Function SubirTremDePouso : String;
      Function AbaixarTremDePouso : String;
      Function Acelerar : String;
      Function Desacelerar : String;
      Function Ligar : String;
      Function Desligar : String;
      Function VirarLeme(aAngulo : Double) : String;
      Function AlterarLeme(aAngulo : Double) : String;
  end;

implementation

{ TAviao }

function TAviao.AbaixarTremDePouso: String;
begin
  if (FTremDePouso = false) then
  begin
    FTremDePouso := True;
    Result := 'Abaixando Trem de Pouso';
  end;
end;

function TAviao.Acelerar: String;
begin
  Result := 'Acelerando as Turbinas';
end;

function TAviao.AlterarLeme(aAngulo: Double): String;
begin
  if (aAngulo < 0) then
  Result := 'Decendo o Aviao em '
  else
  Result := 'Subindo o Aviao em ';
end;

function TAviao.Desacelerar: String;
begin
  Result := 'Desacelerando as Turbinas';
end;

function TAviao.Desligar: String;
begin
  if (FTremDePouso = true) then
  Result := 'Desligando os motores'
  else if (FTremDePouso = false) then
  Result := 'Não é possivel pousar sem os Trem de Pouso!'
  else if (FQuantidadeCombustivel <= 0) then
  Result := 'Desligando por Falta de Combustivel';
end;

function TAviao.GetAssentos: Integer;
begin
  Result := FAssentos;
end;

function TAviao.GetCargo: TEnumTipoCargo;
begin
  Result := FEnumTipoCargo;
end;

function TAviao.GetModelo: String;
begin
  Result := FModelo;
end;

function TAviao.GetQtndCombustivel: Double;
begin
  Result := FQuantidadeCombustivel;
end;

function TAviao.GetTremDePouso: Boolean;
begin
  Result := FTremDePouso;
end;

function TAviao.GetTurbinas: Integer;
begin
  Result := FTurbinas;
end;

function TAviao.Ligar: String;
begin
  Result := 'Ligando o Aviao';
end;

procedure TAviao.SetAssentos(const Value: Integer);
begin
  FAssentos := Value;
end;

procedure TAviao.SetCargo(const Value: TEnumTipoCargo);
begin
  FEnumTipoCargo := Value;
end;

procedure TAviao.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TAviao.SetQtndCombustivel(const Value: Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TAviao.SetTremDePouso(const Value: Boolean);
begin
  FTremDePouso := Value;
end;

procedure TAviao.SetTurbinas(const Value: Integer);
begin
  FTurbinas := Value;
end;

function TAviao.SubirTremDePouso: String;
begin
  if (FTremDePouso = True) then
  begin
    FTremDePouso := false;
    Result := 'Subindo Trem de Pouso';
  end;
end;

function TAviao.VirarLeme(aAngulo: Double): String;
begin
  if (aAngulo < 0) then
  Result := 'Virando a Esquerda em '
  else
  Result := 'Virando a Direita em ';
end;

end.

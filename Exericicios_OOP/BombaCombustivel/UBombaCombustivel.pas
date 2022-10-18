unit UBombaCombustivel;

interface

type
  TBomba = class
    Private
      FTipoCombustivel : String;
      FValorCombustivel : Currency; //por litro
      FQuantidadeCombustivel : Double;

       function GetQuantidade_Combustivel: Double;
       function GetTipo_Combustivel: String;
       function GetValor_Combustivel: Currency;

       procedure SetQuantidade_Combustivel(const Value: Double);
       procedure SetTipo_Combustivel(const Value: String);
       procedure SetValor_Combustivel(const Value: Currency);
    public
       property Tipo_Combustivel: String Read GetTipo_Combustivel write SetTipo_Combustivel;
       property Valor_Combustivel: Currency Read GetValor_Combustivel write SetValor_Combustivel;
       property Quantidade_Combustivel: Double Read GetQuantidade_Combustivel write SetQuantidade_Combustivel;

       function  AbastecerPorValor(aValor : Currency) : Double;
       function  AbastecerPorLitro(aLitros : Double)  : Currency;
       procedure AlterarValor(aNovoValor : Currency);
       procedure AlterarCombustivel(aNovoCombustivel : String);
       procedure AlterarQuantidadeCombustivel(aQntdParaAlterar : Double);
  end;

implementation

{ TBomba }

function TBomba.AbastecerPorLitro(aLitros: Double): Currency;
var
  xValor : Currency;
  xNovaQntdBomba : Double;
begin
  xValor := FValorCombustivel * aLitros;
  xNovaQntdBomba := FQuantidadeCombustivel - aLitros;
  Self.AlterarQuantidadeCombustivel(xNovaQntdBomba);
  Result := xValor;
end;

function TBomba.AbastecerPorValor(aValor: Currency): Double;
var
  xLitros : Double;
  xNovaQntdBomba : Double;
begin
  xLitros := aValor / FValorCombustivel;  // eu compro 7 reais de gasolina, e ela custa 3,50 eu terei 2 litros, matematicamente 7/3,50 = 2L
  xNovaQntdBomba := FQuantidadeCombustivel - xLitros;
  Self.AlterarQuantidadeCombustivel(xNovaQntdBomba);
  Result := xLitros;
end;

procedure TBomba.AlterarCombustivel(aNovoCombustivel: String);
begin
  FTipoCombustivel := aNovoCombustivel;
end;

procedure TBomba.AlterarQuantidadeCombustivel(aQntdParaAlterar : Double);
begin
  FQuantidadeCombustivel := aQntdParaAlterar;
end;

procedure TBomba.AlterarValor(aNovoValor: Currency);
begin
  FValorCombustivel := aNovoValor;
end;

function TBomba.GetQuantidade_Combustivel: Double;
begin
  Result := FQuantidadeCombustivel;
end;

function TBomba.GetTipo_Combustivel: String;
begin
  Result := FTipoCombustivel;
end;

function TBomba.GetValor_Combustivel: Currency;
begin
  Result := FValorCombustivel;
end;

procedure TBomba.SetQuantidade_Combustivel(const Value: Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TBomba.SetTipo_Combustivel(const Value: String);
begin
  FTipoCombustivel := Value;
end;

procedure TBomba.SetValor_Combustivel(const Value: Currency);
begin
  FValorCombustivel := Value;
end;

end.

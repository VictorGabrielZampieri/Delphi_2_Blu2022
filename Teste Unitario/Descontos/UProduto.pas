unit UProduto;

interface

type
TProduto = Class
  private
    FNome_Produto    : String;
    FQuantidade      : Integer;
    FPreco_Unitario  : Currency;
    FValor_Total     : Currency;
    function GetNome_Produto: String;
    function GetPreco_Unitario: Currency;
    function GetQuantidade: Integer;
    function GetValor_Total: Currency;
    procedure SetNome_Produto(const Value: String);
    procedure SetPreco_Unitario(const Value: Currency);
    procedure SetQuantidade(const Value: Integer);
    procedure SetValor_Total(const Value: Currency);
  public
    property Nome_Produto : String Read GetNome_Produto write SetNome_Produto;
    property Quantidade : Integer Read GetQuantidade write SetQuantidade;
    property Preco_Unitario : Currency Read GetPreco_Unitario write SetPreco_Unitario;
    property Valor_Total : Currency Read GetValor_Total write SetValor_Total;

    function RetornarValorTotal : Currency;
End;

implementation

{ TProduto }

function TProduto.GetNome_Produto: String;
begin
  Result := FNome_Produto;
end;

function TProduto.GetPreco_Unitario: Currency;
begin
  Result := FPreco_Unitario;
end;

function TProduto.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

function TProduto.GetValor_Total: Currency;
begin
  Result := FValor_Total;
end;

function TProduto.RetornarValorTotal: Currency;
var
  xValor_Total : Currency;
begin
  if (FQuantidade <= 10) then
  begin
    xValor_Total := (FPreco_Unitario*FQuantidade);
  end
  else if (FQuantidade >= 11) and ( FQuantidade <= 50) then
  begin
    xValor_Total := (Preco_Unitario*Quantidade);
    xValor_Total := xValor_Total-(10*xValor_Total/100);
  end
  else if (FQuantidade > 50)  then
  begin
    xValor_Total := (Preco_Unitario*Quantidade);
    xValor_Total := xValor_Total-(25*xValor_Total/100);
  end;
  FValor_Total := xValor_Total;
  Result := xValor_Total;
end;

procedure TProduto.SetNome_Produto(const Value: String);
begin
  FNome_Produto := Value;
end;

procedure TProduto.SetPreco_Unitario(const Value: Currency);
begin
  FPreco_Unitario := Value;
end;

procedure TProduto.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
end;


procedure TProduto.SetValor_Total(const Value: Currency);
begin
  FValor_Total := Value;
end;

end.

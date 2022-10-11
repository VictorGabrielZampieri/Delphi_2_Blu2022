unit UContaCorrente;

interface

type
  TContaCorrente = class
  private
    FNumeroConta  : Integer;
    FNomeUsuario  : String;
    FSaldo        : Currency;

    function GetNome: String;
    function GetNumero: Integer;
    function GetSaldo: Currency;

    procedure setNome(const Value: String);
    procedure setNumero(const Value: Integer);
    procedure setSaldo(const Value: Currency);
   
  public
     constructor Create(const aNumeroConta: Integer; const aNomeCorrentista: String; const aSaldo: Currency = 0);
    procedure AlterarNome(aNovoNome : String);
    procedure Depositar(aQtdDeposito : Currency);
    procedure Saque(aQtdSaque : Currency);

    property  Numero  : Integer  read  GetNumero write setNumero;
    property  Nome    : String   read  GetNome   write setNome;
    property  Saldo   : Currency read  GetSaldo  write setSaldo;

  end;


implementation

{ TContaCorrente }

procedure TContaCorrente.AlterarNome(aNovoNome : String);
begin
   FNomeUsuario := aNovoNome;
end;

constructor TContaCorrente.Create(const aNumeroConta: Integer;
  const aNomeCorrentista: String; const aSaldo: Currency);
begin
  FNumeroConta  := aNumeroConta;
  FNomeUsuario  := aNomeCorrentista;
  FSaldo        := aSaldo;
end;

procedure TContaCorrente.Depositar(aQtdDeposito: Currency);
begin
   FSaldo := FSaldo + aQtdDeposito;
end;

procedure TContaCorrente.Saque(aQtdSaque: Currency);
begin
   FSaldo := FSaldo - aQtdSaque;
end;

function TContaCorrente.GetNome: String;
begin
   Result :=  FNomeUsuario;
end;

function TContaCorrente.GetNumero: Integer;
begin
   Result := FNumeroConta;
end;

function TContaCorrente.GetSaldo: Currency;
begin
   Result := FSaldo;
end;

procedure TContaCorrente.setNome(const Value: String);
begin
  FNomeUsuario  := Value;
end;

procedure TContaCorrente.setNumero(const Value: Integer);
begin
  FNumeroConta  := Value;
end;

procedure TContaCorrente.setSaldo(const Value: Currency);
begin
  FSaldo  := Value;
end;

end.

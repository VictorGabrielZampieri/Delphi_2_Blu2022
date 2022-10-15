unit UPessoa;

interface

type
  TPessoa = class
    private
      FNome : String;
      FEndereco : String;

    function GetEndereco: String;
    function GetNome: String;

    procedure SetEndereco(const Value: String);
    procedure SetNome(const Value: String);

      public
        function Gravar(aPessoa: TPessoa): String;
        property Nome: String Read GetNome write SetNome;
        property Endereco: String Read GetEndereco write SetEndereco;
  end;

  TPessoaJuridica = Class(TPessoa)
    private
      FCNPJ : String;
      FFIE   : String;
    function GetCNPJ: String;
    function GetFIE: String;

    procedure SetCNPJ(const Value: String);
    procedure SetFIE(const Value: String);
     public
       function CNPJ_Valido : Boolean;

       property CNPJ: String Read GetCNPJ write SetCNPJ;
       property FIE: String Read GetFIE write SetFIE;
  End;

  TPessoaFisica = Class(TPessoa)
    private
      FCPF : String;
      FIdade  : Byte;
    function GetCPF: String;
    function GetIdade: Byte;

    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Byte);
     public
       function CPF_Valido : Boolean;

       property CPF: String Read GetCPF write SetCPF;
       property Idade: Byte Read GetIdade write SetIdade;
  End;
implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

function TPessoa.Gravar(aPessoa: TPessoa): String;
begin
   Result := 'Nome : '+ FNome+ ' Endereco : '+ FEndereco;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido: Boolean;
var  dig10, dig11, c1, c2: string;
    s, i, r, peso: integer;
begin

  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              CPF_Valido := false;
              exit;
            end;
  try

    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin

      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10);

    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

    c1  := CPF[10];
    c2  := CPF[11];
    if ((dig10 = CPF[10]) and (dig11 = CPF[11])) then
    begin
     CPF_Valido := true;
    end

    else
     CPF_Valido := false;
  except
    CPF_Valido := false
  end;
end;


function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIdade := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido: Boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin

  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            CNPJ_Valido := false;
            exit;
          end;


  try

    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin

      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13);


    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);


    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then CNPJ_Valido := true
    else CNPJ_Valido := false;
  except
    CNPJ_Valido := false
  end;
end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetFIE: String;
begin
  Result := FFIE;
end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TPessoaJuridica.SetFIE(const Value: String);
begin
  FFIE := Value;
end;

end.

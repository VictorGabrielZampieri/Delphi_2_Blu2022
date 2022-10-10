unit UPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
    FNome : String;
    FDataNascimento : TDate;
    FAltura : Double;
    function GetAltura: Double;
    function GetData: TDate;
    function GetNome: String;

    procedure SetAltura(const Value: Double);
    procedure SetData(const Value: TDate);
    procedure SetNome(const Value: String);

    public
      function ExibirDados : String;
      function CalcularIdade : Double;
      property Nome: String read GetNome  write SetNome;
      property DataNascimento: TDate read GetData  write SetData;
      property Altura: Double read GetAltura  write SetAltura;
  end;

implementation

{ TPessoa }

function TPessoa.CalcularIdade: Double;
var
  xIdade : Double;
  begin
  xIdade := Trunc((Date - FDataNascimento)/365.25);
  result := xIdade;
end;

function TPessoa.ExibirDados: String;
begin
   Result := ('Olá meu nome é '+ FNome +', Eu Nasci em ' + DateToStr(FDataNascimento)+ ', A Minha Altura é de ' + FormatFloat('0.00',FAltura)+'m');
end;

function TPessoa.GetAltura: Double;
begin
  Result  := FAltura;
end;

function TPessoa.GetData: TDate;
begin
  Result  := FDataNascimento;
end;

function TPessoa.GetNome: String;
begin
  Result  := FNome;
end;

procedure TPessoa.SetAltura(const Value: Double);
begin
   FAltura := Value;
end;

procedure TPessoa.SetData(const Value: TDate);
begin
   FDataNascimento := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
   FNome := Value;
end;

end.

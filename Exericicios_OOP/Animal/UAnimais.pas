unit UAnimais;

interface

type
  TEnumAnimal = (opCachorro, opGato, opPato);

  //TObject - 1º Classe do delphi
  TAnimal = class // Classe abstrata ou classe base
  private
    FPatas: Byte;

    function GetPatas: Byte;
    procedure SetPatas(const aValue: Byte);

  public
    // Método Abstrato
    function RetornarSom: String; virtual; abstract;
    property Patas: Byte Read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TPato = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

implementation

{TAnimal}

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas  :=  aValue;
end;

function TAnimal.GetPatas: Byte;
begin
  Result  :=  FPatas;
end;

{TCachorro}

function TCachorro.RetornarSom: string;
begin
  Result  :='Au Au'
end;

Constructor TCachorro.Create;
begin
  FPatas  :=  4;
end;

{TGato}

function TGato.RetornarSom: string;
begin
  Result  :='Meow Meow'
end;

Constructor TGato.Create;
begin
  FPatas  :=  4;
end;

{TPato}

function TPato.RetornarSom: string;
begin
  Result  :='Quak Quak'
end;

Constructor TPato.Create;
begin
  FPatas  :=  2;
end;

end.

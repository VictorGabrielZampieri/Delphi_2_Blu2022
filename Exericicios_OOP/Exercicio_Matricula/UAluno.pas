unit UAluno;

interface

uses
  UDisciplina;

type
  TAluno = class
  private
    FMatricula : Integer;
    FNome : String;
    FPrimeiraNota : Double;
    FSegundaNota : Double;
    FTrabalho : Double;
    FDisciplina : TDisciplina;
    function GetDisciplina: TDisciplina;
    function GetMatricula: Integer;
    function GetNome: String;
    function GetPrimeiraNota: Double;
    function GetSegundaNota: Double;
    function GetTrabalho: Double;

    procedure SetDisciplina(const Value: TDisciplina);
    procedure SetMatricula(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPrimeiraNota(const Value: Double);
    procedure SetSegundaNota(const Value: Double);
    procedure SetTrabalho(const Value: Double);
  public
    property Matricula : Integer  Read GetMatricula write SetMatricula;
    property Nome : String  Read GetNome write SetNome;
    property PrimeiraNota : Double  Read GetPrimeiraNota write SetPrimeiraNota;
    property SegundaNota  : Double  Read GetSegundaNota write SetSegundaNota;
    property Trabalho  : Double  Read GetTrabalho write SetTrabalho;
    property Disciplina  : TDisciplina  Read GetDisciplina write SetDisciplina;

    function Media(aPrimeiraProva, aSegundaProva , aTrabalho : Double) : Double;
  end;

implementation

{ TAluno }

function TAluno.GetDisciplina: TDisciplina;
begin
  Result := FDisciplina;
end;

function TAluno.GetMatricula: Integer;
begin
  Result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  Result := FNome;
end;

function TAluno.GetPrimeiraNota: Double;
begin
  Result := FPrimeiraNota;
end;

function TAluno.GetSegundaNota: Double;
begin
  Result := FSegundaNota;
end;

function TAluno.GetTrabalho: Double;
begin
  Result := FTrabalho;
end;



function TAluno.Media(aPrimeiraProva, aSegundaProva,
  aTrabalho: Double): Double;
var
  xMedia : Double;
  xNotas : Double;
  xPesoProvas : Double;
  xPesoTrabalho : Double;
begin
  xMedia := aPrimeiraProva + aSegundaProva;
  xPesoProvas := 2.5;
  xPesoTrabalho := 2;

end;

procedure TAluno.SetDisciplina(const Value: TDisciplina);
begin
  FDisciplina := Value;
end;

procedure TAluno.SetMatricula(const Value: Integer);
begin
  FMatricula  := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome  := Value;
end;

procedure TAluno.SetPrimeiraNota(const Value: Double);
begin
  FPrimeiraNota  := Value;
end;

procedure TAluno.SetSegundaNota(const Value: Double);
begin
  FSegundaNota  := Value;
end;

procedure TAluno.SetTrabalho(const Value: Double);
begin
  FTrabalho  := Value;
end;

end.

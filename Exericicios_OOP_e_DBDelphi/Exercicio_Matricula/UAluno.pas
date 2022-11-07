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
    destructor destroy; override;
    property Matricula : Integer  Read GetMatricula write SetMatricula;
    property Nome : String  Read GetNome write SetNome;
    property PrimeiraNota : Double  Read GetPrimeiraNota write SetPrimeiraNota;
    property SegundaNota  : Double  Read GetSegundaNota write SetSegundaNota;
    property Trabalho  : Double  Read GetTrabalho write SetTrabalho;
    property Disciplina  : TDisciplina  Read GetDisciplina write SetDisciplina;

    function Media : Double;
    function aFinal : Double;
  end;

implementation

uses
  System.SysUtils;

{ TAluno }


function TAluno.aFinal: Double;
Var
  xMedia : Double;
begin
  xMedia := Self.Media;
   if(xMedia<2.5) or (xMedia>=5) Then
   Result := 0;

   Result := 10 - xMedia;

end;

destructor TAluno.destroy;
begin
  FreeAndNil(FDisciplina);
  inherited;
end;

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
  Result := FNome;     {
    Métodos são procedures ou funções coesas (que fazem sentido)
   }
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

 {
  Coesão é o princípio Orientado a Objetos mais associado a garantir
  que uma classe seja projetada com um propósito único e bem focado
 }

function TAluno.Media: Double;
var
  xMedia : Double;
  xPesoProvas : Double;
  xPesoTrabalho : Double;
begin
  xPesoProvas := 2.5;
  xPesoTrabalho := 2;

  xMedia := ((Self.FPrimeiraNota * xPesoProvas)+(Self.FSegundaNota * xPesoProvas)+(Self.FTrabalho * xPesoTrabalho))/(xPesoProvas+xPesoProvas*xPesoTrabalho);
  Result := xMedia;

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

{
  é o princípio pelo qual duas ou mais classes derivadas da mesma superclasse
  podem invocar métodos que têm a mesma assinatura, mas comportamentos distintos.
}
procedure TAluno.SetTrabalho(const Value: Double);
begin
  FTrabalho  := Value;
end;

end.

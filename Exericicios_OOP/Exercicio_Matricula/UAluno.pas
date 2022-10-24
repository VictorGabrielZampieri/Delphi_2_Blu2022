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
    {classe  É uma representacao de um objeto do mundo real
     Atri e proprie são características únicas da classe
    }
    property PrimeiraNota : Double  Read GetPrimeiraNota write SetPrimeiraNota;
    property SegundaNota  : Double  Read GetSegundaNota write SetSegundaNota;
    property Trabalho  : Double  Read GetTrabalho write SetTrabalho;
    property Disciplina  : TDisciplina  Read GetDisciplina write SetDisciplina;

    function Media : Double;
    function aFinal : Double;
  end;

implementation

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

procedure TAluno.SetTrabalho(const Value: Double);
begin
  FTrabalho  := Value;
end;

end.

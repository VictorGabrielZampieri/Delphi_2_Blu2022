program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  function MaiorIdade(const aIdade: Byte) : Boolean;
begin
  if aIdade >= 18 then
Result  := True     // um ; faz o compilador entender que ? um if de uma unica linha
  else
Result := False;

{
if aIdade >= 18 then
begin
Result  := True  
end   
  else
  begin
Result := False;
end;

ou

if aIdade >= 18 then
Result  := True  
  
  else
  begin
Result := False;
end ;

comver??o de um byte para enum (nome do enum(nome da variavel a ser convertida))
}

end;

   function Periodo(const aHora: Byte) : String;     //o tipo de retor ? String
  begin
    if aHora < 12 then
        Result := 'Bom dia'
 else
  if aHora < 18 then
  Result := 'Boa tarde'
  else
  Result :='Boa Noite';
  end;

var
  xIdade: Byte;
  xHora:  Byte;
  xStrPeriodo:  String;
  xEntrada: String;

begin
  try
    writeln('Ol? entre com sua idade:');
    Readln(xIdade);

    Writeln('Entre com o hor?rio:');
    Readln(xHora);

    xStrPeriodo := Periodo(xHora);     // Perido ? fun??o que esta sendo chamdada

    //outro tipo de if 'if not(Maior idade(xIdade))'
    if MaiorIdade(xIdade) {func??o no if} then
     Writeln(xStrPeriodo + ' voc? ? maior de idade.')
  else
  writeln(xStrPeriodo + ' voc? n?o ? maior de idade.');

  Readln(xEntrada);

  except
  on E: Exception do
  Writeln(E.ClassName, ': ', E.Message);
  end;

  end.

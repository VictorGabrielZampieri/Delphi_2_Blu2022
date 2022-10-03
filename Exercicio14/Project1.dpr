program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
 TRegCliente = record
  Codigo: Integer;
  Nome: String;
  Idade: Byte;
 end;

 TListaCliente = array of TRegCliente;

var
  xContinuar: Integer;
  xCliente: TRegCliente;
  xListaCliente:  TListaCliente;

procedure AddCliente(const aRegCliente: TRegCliente);
begin
  SetLength(xListaCliente, Length(xListaCliente) + 1);
  xListaCliente[Length(xListaCliente)-1]  := aRegCliente;
end;

procedure ListarClientes;
var
  I: Integer;
  xRegCliente: TRegCliente;
  begin
    Writeln;
    Writeln('Listando...');
    Writeln;

    for I := 0 to Length(xListaCliente)-1 do
    begin
      xRegCliente := xListaCliente[I];

      Writeln('C�digo: ' + xRegCliente.Codigo.ToString);
      Writeln('Nome..: ' + xRegCliente.Nome);
      Writeln('Idade.: '+ xRegCliente.Idade.ToString);
      Writeln;
    end;
  end;


begin
  try
    repeat
      Writeln('Entre com o C�digo do Cliente: ');
      Readln(xCliente.Codigo);

      Writeln('Entre com o Nome do Cliente: ');
      Readln(xCliente.Nome);

      Writeln('Entre com a Idade do Cliente: ');
      Readln(xCliente.Idade);

      AddCliente(xCliente);

      Writeln('Deseja cadastrar mais clientes (1-Sim/ 2-N�o)');
      Readln(xContinuar);
    until (xContinuar = 2);

    ListarClientes;

    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

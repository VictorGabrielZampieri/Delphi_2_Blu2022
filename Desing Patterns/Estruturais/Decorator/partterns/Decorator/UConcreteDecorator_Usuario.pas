unit UConcreteDecorator_Usuario;

interface

uses
  UDecorator;

type
  TUsuarioDecorator = class(TDecorator)
    private
      function ObterNomeUsuario: String;
    protected
      function ObterDadosExcecao: String; override;
  end;

implementation

{ TUsuarioDecorator }

uses
  winapi.Windows;

function TUsuarioDecorator.ObterDadosExcecao: String;
begin
  Result := Inherited ObterDadosExcecao;
  Result := Result + 'Usuario: '+ Self.ObterNomeUsuario;
end;

function TUsuarioDecorator.ObterNomeUsuario: String;
var
  xSize: DWord;
begin
  //Retorna o login do usuario do sistema operacional
  xSize := 1024;
  SetLength(Result, xSize);
  GetUserName(PChar(Result), xSize);
  SetLength(Result, xSize -1);
end;

end.

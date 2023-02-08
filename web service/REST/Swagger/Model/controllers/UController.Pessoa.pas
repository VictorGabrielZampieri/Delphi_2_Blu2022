unit UController.Pessoa;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UPessoas;

type
 [SwagPath('pessoa', 'Pessoas')]
 TPessoaController = class
   private
   public
     [SwagGet('Listar Pessoas', True)]
     [SwagParamQuery('id', 'id da pessoa')]
     [SwagResponse(200, TPessoa, 'Informacoes da pessoa', True)]
     class procedure GetPessoas(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagGet('{id}', 'Procurar uma Pessoa')]
     [SwagParamPath('id', 'id da pessoa')]
     [SwagResponse(200, TPessoa, 'Informacoes da pessoa')]
     [SwagResponse(404)]
     class procedure FindUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagPost('Adicionar Nova Pessoa', True)]
     [SwagParamBody('Informações da Pessoa', TPessoa)]
     [SwagResponse(201, TPessoa)]
     [SwagResponse(400)]
     class procedure InsertUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagPut('{id}', 'Atualizar uma Pessoa')]
     [SwagParamPath('id', 'id da pessoa')]
     [SwagParamBody('Informações da Pessoa', TPessoa)]
     [SwagResponse(204)]
     [SwagResponse(400)]
     [SwagResponse(404)]
     class procedure UpdateUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagDELETE('{id}', 'Deletar uma Pessoa')]
     [SwagParamPath('id', 'id da pessoa')]
     [SwagResponse(204)]
     [SwagResponse(400)]
     [SwagResponse(404)]
     class procedure DeleteUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

 end;

implementation

{ TPessoaController }

class procedure TPessoaController.DeleteUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TPessoaController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id":1, "nome": "Victor Gabriel"}');
end;

class procedure TPessoaController.GetPessoas(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id":1, "nome": "Victor Gabriel"}');
end;

class procedure TPessoaController.InsertUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TPessoaController.UpdateUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.

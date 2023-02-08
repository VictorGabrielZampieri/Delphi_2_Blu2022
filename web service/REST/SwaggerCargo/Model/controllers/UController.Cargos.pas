unit UController.Cargos;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UCargos;

type
 [SwagPath('cargo', 'Cargos')]
 TCargoController = class
   private
   public
     [SwagGet('Listar Cargos', True)]
     [SwagParamQuery('id', 'id do Cargo')]
     [SwagResponse(200, TCargo, 'Informacoes da Cargo', True)]
     class procedure GetOfficers(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagGet('{id}', 'Procurar um cargo')]
     [SwagParamPath('id', 'id do Cargo')]
     [SwagResponse(200, TCargo, 'Informacoes do Cargo')]
     [SwagResponse(404)]
     class procedure FindOfficer(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagPost('Adicionar Novo Cargo', True)]
     [SwagParamBody('Informações do Cargo', TCargo)]
     [SwagResponse(201, TCargo)]
     [SwagResponse(400)]
     class procedure InsertOfficer(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagPut('{id}', 'Atualizar um Cargo')]
     [SwagParamPath('id', 'id do Cargo')]
     [SwagParamBody('Informações do Cargo', TCargo)]
     [SwagResponse(204)]
     [SwagResponse(400)]
     [SwagResponse(404)]
     class procedure UpdateOfficer(Req: THorseRequest; Res: THorseResponse; Next: TProc);

     [SwagDELETE('{id}', 'Deletar um Cargo')]
     [SwagParamPath('id', 'id do Cargo')]
     [SwagResponse(204)]
     [SwagResponse(400)]
     [SwagResponse(404)]
     class procedure DeleteOfficer(Req: THorseRequest; Res: THorseResponse; Next: TProc);

 end;

implementation

{ TPessoaController }

class procedure TCargoController.DeleteOfficer(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TCargoController.FindOfficer(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id":1, "descricao": "Lixeiro", "id_pessoa": 3}');
end;

class procedure TCargoController.GetOfficers(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id":1, "descricao": "Lixeiro", "id_pessoa": 3}}');
end;

class procedure TCargoController.InsertOfficer(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TCargoController.UpdateOfficer(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.

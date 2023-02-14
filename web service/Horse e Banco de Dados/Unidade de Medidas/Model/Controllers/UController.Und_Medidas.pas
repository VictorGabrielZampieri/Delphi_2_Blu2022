unit UController.Und_Medidas;

interface

uses
  Horse;

type
  TControllerUnidades_Medidas = class
    private
    public
      class procedure GetUndMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure GetUndMedidas(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure PostUndMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure DeleteUndMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TControllerUnidades_Medidas }

uses
  UDAO.Intf, UDAO.Unidade_Medida, System.JSON, System.SysUtils;

class procedure TControllerUnidades_Medidas.DeleteUndMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO : IDAO;
  xId : Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOUndMedidas.Create;

  if (xDAO.DeletarRegistro(xId)) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerUnidades_Medidas.GetUndMedidas(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO : IDAO;
  xId : Integer;
begin
   if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOUndMedidas.Create;

  Res.Send<TJSONObject> (xDAO.ProcurarPorId(xId));

end;

class procedure TControllerUnidades_Medidas.GetUndMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO : IDAO;
begin
  xDAO := TDAOUndMedidas.Create;

  Res.Send<TJSONArray> (xDAO.ObterRegistros);

end;

class procedure TControllerUnidades_Medidas.PostUndMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO : IDAO;
begin
  xDAO := TDAOUndMedidas.Create;

  if (xDAO.AdicionarRegistro(Req.Body<TJSONObject>)) then
    Res.Status(THTTPStatus.Created);

end;

end.

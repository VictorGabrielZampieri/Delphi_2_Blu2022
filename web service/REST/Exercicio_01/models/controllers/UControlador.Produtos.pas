unit UControlador.Produtos;

interface

uses
  Horse,
  Horse.Jhonson,
  Horse.Commons,
  System.SysUtils,
  System.JSON,
  GBSwagger.Path.Attributes,
  UProduto, UDadosGerais;

type

  [SwagPath('produto', 'Produtos')]
  TControllerProduto = class
  private
  public
    [SwagGet('Listar Pordutos', True)]
    [SwagParamQuery('id', 'id do Produto')]
    [SwagResponse(200, TProduto, 'Informacoes do Produto', True)]
    class procedure GetProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagPost('Adicionar Novo Produto', True)]
    [SwagParamBody('Informações do Produto', TProduto)]
    [SwagResponse(201, TProduto)]
    [SwagResponse(400)]
    class procedure PostProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagDELETE('{id}', 'Deletar um Produto')]
    [SwagParamPath('id', 'id do Produto')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);
  end;

implementation

{ TControllerProduto }

class procedure TControllerProduto.DeleteProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xId: Integer;
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    xId := Req.Params.Items['id'].ToInteger;

    if (xDadosProdutos.RemoverProduto(xId)) then
      Res.Status(THTTPStatus.NoContent)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosProdutos.Free;
  end;
end;

class procedure TControllerProduto.GetProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    Res.Send<TJSONArray>(xDadosProdutos.JSON);
  finally
    xDadosProdutos.Free;
  end;
end;

class procedure TControllerProduto.PostProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    if xDadosProdutos.AdicionarProduto(Req.Body<TJSONObject>) then
      Res.Status(THTTPStatus.OK)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosProdutos.Free;
  end;

end;

end.

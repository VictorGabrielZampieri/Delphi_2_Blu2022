unit UDAO.Unidade_Medida;

interface
uses
  UDAO.Intf,
  System.JSON,
  DataSet.Serialize;

type
  TDAOUndMedidas = class(TInterfacedObject, IDAO)
     function ObterRegistros: TJSONArray;
     function ProcurarPorId(const aIdentificador: Integer): TJSONObject;
     function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
     function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

uses
  FireDac.Comp.Client,
  System.SysUtils,
  UUtil.Banco;

{ TDAOUndMedidas }

function TDAOUndMedidas.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
   try
    Result := TUtilBanco.AdicionarRegistro('UNIDADEMEDIDA', aRegistro.ToJSON);
  except on E: Exception do
    raise Exception.Create('Erro ao Adicionar Registro: '+e.Message);
   end;
end;

function TDAOUndMedidas.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilBanco.RemoverRegistro('UNIDADEMEDIDA', aIdentificador);
  except on E: Exception do
  raise Exception.Create('Erro ao Remover Registro: '+e.Message);
  end;
end;

function TDAOUndMedidas.ObterRegistros: TJSONArray;
var
  xQuery : TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM UNIDADEMEDIDA');

      Result := xQuery.ToJSONArray();
    except on E: Exception do
      raise Exception.Create('Erro ao Obter Registros'+ e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;

end;

function TDAOUndMedidas.ProcurarPorId(
  const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;

  try
    try
      xQuery := TUtilBanco.ExecutarConsulta(Format('SELECT * FROM UNIDADEMEDIDA WHERE ID = %d', [aIdentificador]));
      Result := xQuery.ToJSONObject();
    except on E: Exception do
      raise Exception.Create('Erro ao Obter Registros'+ e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;

end;

end.

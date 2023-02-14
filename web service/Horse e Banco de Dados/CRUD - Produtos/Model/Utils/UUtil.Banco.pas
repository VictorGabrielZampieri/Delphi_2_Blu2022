unit UUtil.Banco;

interface

uses
  FireDAC.Comp.Client,
  FireDAC.Phys.MySQL,
  FireDAC.DApt,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  Data.DB,
  DataSet.Serialize,
  System.SysUtils;

type
  TUtilBanco = class
    private
      class function Conexao: TFDConnection;
    public
      class function ExecutarConsulta(const aSQL: String): TFDQuery;
      class function AdicionarRegistro(const aTabela: String; const aJSON: String): Boolean;
      class function RemoverRegistro(const aTabela: String; const aIdentificador: Integer): Boolean;
  end;

implementation

{ TUtilBanco }

class function TUtilBanco.AdicionarRegistro(const aTabela,
  aJSON: String): Boolean;
  const COMANDO_INSERT = 'INSERT INTO %s (%s) VALUES (%s)';
var
  I: Integer;
  xMemTable: TFDMemTable;
  xQuery: TFDQuery;
  xColunas: String;
  xValores: String;
begin
  xQuery    := TFDQuery.Create(nil);
  xMemTable := TFDMemTable.Create(nil);
  try
    try
      xMemTable.LoadFromJSON(aJSON);
      //ToJSONArray e LoadFromToJSON - DataSet.Serialize

      for I := 0 to Pred(xMemTable.FieldCount)do
        begin
          xColunas := xColunas + xMemTable.Fields[I].FieldName+ ',';

          if (xMemTable.Fields[I].DataType = ftFloat) then
            xValores := xValores + StringReplace(FloatToStr(xMemTable.Fields[I].AsFloat), ',', '.', [rfReplaceAll]) + ','
          else
            xValores := xValores + QuotedStr(xMemTable.Fields[I].AsString) + ',';
        end;

        xColunas := Copy(xColunas, 1, Length(xColunas)-1);
        xValores := Copy(xValores, 1, Length(xValores)-1);

        xQuery.Connection := Self.Conexao;
        xQuery.SQL.Clear;
        xQuery.SQL.Add(Format(COMANDO_INSERT, [aTabela, xColunas, xValores]));
        xQuery.ExecSQL;

        Result := True;
    except on E: Exception do
      raise Exception.Create(e.Message);
    end;
  finally
    FreeAndNil(xQuery);
    FreeAndNil(xMemTable);
  end;
end;

class function TUtilBanco.Conexao: TFDConnection;
var
  xDriver: TFDPhysMySQLDriverLink;
begin
  xDriver := TFDPhysMySQLDriverLink.Create(nil);
  Result  := TFDConnection.Create(nil);

  //Driver de conexao do mysql
  xDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

  //Parametros de configuracao do banco
  with Result do
  begin
  DriverName := 'MySQL';
  LoginPrompt := False;
  Params.Add('Database=api');
  Params.Add('User_Name=root');
  Params.Add('Password=root');
  Params.Add('Server=localhost');
  Params.Add('DriverID=MySQL');
  Open;
  end;

end;

class function TUtilBanco.ExecutarConsulta(const aSQL: String): TFDQuery;
var
  xQuery : TFDQuery;
begin
  xQuery := TFDQuery.Create(nil);
  try
    xQuery.Connection := Self.Conexao;
    xQuery.Open(aSQL);

    Result := xQuery;
  except on E: Exception do
    raise Exception.Create(e.Message);
  end;

end;

class function TUtilBanco.RemoverRegistro(const aTabela: String;
  const aIdentificador: Integer): Boolean;
const COMANDO_DELETE = 'DELETE FROM %s WHERE ID = %d';
var
  xQuery: TFDQuery;
begin
  xQuery := TFDQuery.Create(nil);
  try
    try
      xQuery.Connection := Self.Conexao;
      xQuery.SQL.Clear;
      xQuery.SQL.Add(Format(COMANDO_DELETE, [aTabela, aIdentificador]));
      xQuery.ExecSQL;

      Result := True;
    except on E: Exception do
      raise Exception.Create(e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;

end;

end.

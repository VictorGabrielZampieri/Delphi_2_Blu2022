program PRetornando_Dados;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  FireDac.Comp.Client,
  FireDAC.DApt,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  Data.DB,
  System.SysUtils,
  FireDAC.Phys.MySQL;

begin
  THorse.Use(Jhonson);
  THorse.Use(Query); // Middleware do Query deve vir sempre depois do Jhonson

  //Usando dados em memoria

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xMemTable: TFDMemTable;
    begin
      xMemTable := TFDMemTable.Create(nil);
      xMemTable.FieldDefs.Add('Codigo', ftInteger, 0, False);
      xMemTable.FieldDefs.Add('Nome', ftString, 100, False);

      xMemTable.LogChanges    := False;
      xMemTable.CachedUpdates := True;

      xMemTable.Close;
      xMemTable.CreateDataSet;
      xMemTable.Open;

      xMemTable.AppendRecord([1, 'Ping']);
      xMemTable.AppendRecord([2, 'Pong']);
      xMemTable.ApplyUpdates;

      Res.Send<TFDMemTable> (xMemTable);
    end);

    //Lendo dados do banco Sakila (Actors)
    THorse.Get('/list',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xConxao: TFDConnection;
      xDriver: TFDPhysMySQLDriverLink;
      xQuery: TFDQuery;
    begin
      xDriver   := TFDPhysMySQLDriverLink.Create(nil);
      xConxao   := TFDConnection.Create(nil);
      xQuery    := TFDQuery.Create(nil);

      //Driver de Conecxão do mysql
      xDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

      //Parãmetros de configuracao do banco
      xConxao.DriverName    := 'MySQL';
      xConxao.LoginPrompt   := False;
      xConxao.Params.Add('Database=sakila');
      xConxao.Params.Add('User_Name=root');
      xConxao.Params.Add('Password=root');
      xConxao.Params.Add('Server=localhost');
      xConxao.Params.Add('DriverID=MySQL');

      //Query
      xQuery.Connection := xConxao;
      xQuery.Open('SELECT * FROM ACTOR');

      Res.Send<TFDQuery> (xQuery);
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
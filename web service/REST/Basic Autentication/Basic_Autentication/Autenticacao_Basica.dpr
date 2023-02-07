program Autenticacao_Basica;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.Commons,
  System.SysUtils,
  System.JSON,
  UDadosGerais in 'model\Service\UDadosGerais.pas';

begin
  THorse.Use(Jhonson());

  THorse.Use(HorseBasicAuthentication(
    function (const aUserName, aPassWord: String): Boolean
    begin
      //Aqui teria a logica para validar o usuario do banco de dados

      Result := aUserName.Equals('user') and aPassWord.Equals('password');
    end));


  THorse.Get('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargos.json');
      try
         Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;
    end);

    THorse.Post('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargos.json');
      try
        if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.OK)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

    THorse.Delete('/cargos/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xId: Integer;
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargos.json');
      try
         xId := Req.Params.Items['id'].ToInteger;

         if (xDadosPessoas.RemoverRegistro(xId)) then
          Res.Status(THTTPStatus.NoContent)
         else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);


  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.

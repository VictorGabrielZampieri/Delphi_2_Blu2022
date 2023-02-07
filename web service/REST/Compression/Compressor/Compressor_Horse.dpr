program Compressor_Horse;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.Compression,
  Horse.Commons,
  System.SysUtils,
  System.JSON,
  UDadosGerais in 'model\Service\UDadosGerais.pas';

begin
  //Ao ultilizar o compressior ele tem que vir antes do Jhonson
  THorse.Use(Compression());

  THorse.Use(Jhonson());

  THorse.Use(HorseBasicAuthentication(
    function (const aUserName, aPassWord: String): Boolean
    begin
      //Aqui teria a logica para validar o usuario do banco de dados

      Result := aUserName.Equals('user') and aPassWord.Equals('password');
    end));

//Testando Ping
THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      I: Integer;
      LPong: TJSONArray;
    begin
      LPong := TJSONArray.Create;
      for I := 0 to 1000 do
        LPong.Add(TJSONObject.Create(TJSONPair.Create('ping', 'pong')));
      Res.Send(LPong);
    end);



  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.

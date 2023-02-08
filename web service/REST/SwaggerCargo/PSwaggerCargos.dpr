program PSwaggerCargos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UCargos in 'Model\entities\UCargos.pas',
  UController.Cargos in 'Model\controllers\UController.Cargos.pas';

procedure SwaggerConfig;
   begin
      //Programacao funcional
     Swagger
      .Register
       .SchemaOnError(TAPIError).
        &End
     .Info.
         Title('Minha Segunda Api Documentada')
        .Description('API Horse')
        .Contact.Name('Victor G. Zampieri')
        .Email('victorgzampieri@gmail.com')
        .URL('http://www.mypage.com.br')
       .&End
     .&End
     .BasePath('v1');
   end;

   procedure Registry;
   begin
   //Versionamento de api - v1
    THorse.Group.Prefix('v1').Get('/cargos', TCargoController.GetOfficers)
    .Get('/cargos/:id', TCargoController.FindOfficer)
    .Post('/cargos', TCargoController.InsertOfficer)
    .Put('/cargos/:id', TCargoController.UpdateOfficer)
    .Delete('/cargos/:id', TCargoController.DeleteOfficer);
   end;

begin
  THorse.Use(CORS).Use(HorseSwagger);

  //http://localhost:9090/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TCargoController);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
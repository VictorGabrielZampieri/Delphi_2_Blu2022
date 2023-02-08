program PSwagger;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoas in 'Model\entities\UPessoas.pas',
  UController.Pessoa in 'Model\controllers\UController.Pessoa.pas';


  procedure SwaggerConfig;
   begin
      //Programacao funcional
     Swagger
      .Register
       .SchemaOnError(TAPIError).
        &End
     .Info.
         Title('Minha Primeira Api Documentada')
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
    THorse.Group.Prefix('v1').Get('/pessoas', TPessoaController.GetPessoas)
    .Get('/pessoas/:id', TPessoaController.FindUser)
    .Post('/pessoas', TPessoaController.InsertUser)
    .Put('/pessoas/:id', TPessoaController.UpdateUser)
    .Delete('/pessoas/:id', TPessoaController.DeleteUser);
   end;

begin
  THorse.Use(CORS).Use(HorseSwagger);

  //http://localhost:9090/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TPessoaController);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
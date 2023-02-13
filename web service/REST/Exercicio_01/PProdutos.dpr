program PProdutos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.GBSwagger,
  System.JSON,
  System.SysUtils,
  UDadosGerais in 'models\Services\UDadosGerais.pas',
  UProduto in 'models\entities\UProduto.pas',
  UControlador.Produtos in 'models\controllers\UControlador.Produtos.pas';

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
    THorse.Group.Prefix('v1').Get('/produtos', TControllerProduto.GetProduto)
    .Post('/produtos', TControllerProduto.PostProduto)
    .Delete('/produtos/:id', TControllerProduto.DeleteProduto);
   end;

begin
  THorse
    .Use(Jhonson())
    .Use(CORS)
    .Use(HorseSwagger)
    .Use(HorseBasicAuthentication(
    function (const aUserName, aPassWord: String): Boolean
    begin

      Result := aUserName.Equals('user') and aPassWord.Equals('password');
    end));

  //http://localhost:9090/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TControllerProduto);

  Registry;


  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
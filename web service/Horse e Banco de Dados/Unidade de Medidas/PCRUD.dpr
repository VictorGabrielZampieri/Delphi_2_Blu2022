program PCRUD;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  System.SysUtils,
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.Intf in 'Model\DAO\UDAO.Intf.pas',
  UDAO.Produtos in 'Model\DAO\UDAO.Produtos.pas',
  UController.Produtos in 'Model\Controllers\UController.Produtos.pas',
  UDAO.Unidade_Medida in 'Model\DAO\UDAO.Unidade_Medida.pas',
  UController.Und_Medidas in 'Model\Controllers\UController.Und_Medidas.pas';

procedure Registry;
   begin
   //Versionamento de api - v1
    THorse.Group.Prefix('v1').Get('/produtos', TControllerProdutos.GetProdutos)
    .Get('/produtos/:id', TControllerProdutos.GetProduto)
    .Post('/produtos', TControllerProdutos.PostProduto)
    .Delete('/produtos/:id', TControllerProdutos.DeleteProduto)
    .Get('/UndMedidas', TControllerUnidades_Medidas.GetUndMedida)
    .Get('/UndMedidas/:id', TControllerUnidades_Medidas.GetUndMedida)
    .Post('/UndMedidas', TControllerUnidades_Medidas.PostUndMedida)
    .Delete('/UndMedidas/:id', TControllerUnidades_Medidas.DeleteUndMedida);
   end;

begin
  THorse.Use(Jhonson);
  THorse.Use(Query);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
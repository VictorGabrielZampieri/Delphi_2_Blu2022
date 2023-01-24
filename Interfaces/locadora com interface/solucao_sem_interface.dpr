program solucao_sem_interface;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UVehicle in 'model\entities\UVehicle.pas',
  UCarRental in 'model\entities\UCarRental.pas',
  UInvoice in 'model\entities\UInvoice.pas',
  UBrazilTaxService in 'model\services\UBrazilTaxService.pas',
  URentalService in 'model\services\URentalService.pas',
  UTaxService in 'model\services\UTaxService.pas',
  UUSATaxService in 'model\services\UUSATaxService.pas';

var
  xCarModel: String;
  xStrStart, xStrFinish : String;
  xStart, xFinish: TDateTime;
  xCarRental: TCarRental;
  xStrPrincePerHour, xStrPricePerDay : String;
  xPrincePerHour, xPricePerDay : Double;
  xRentalService: TRentalService;
begin
  try
    Writeln('Entre com os dados do aluguel:');
    Writeln('Modelo do Carro:');
    Readln(xCarModel);

    Writeln('Retirada (dd/mm/yyy hh:mm):');
    Readln(xStrStart);
    xStart := StrToDateTime(xStrStart);

    Writeln('Retorno (dd/mm/yyy hh:mm):');
    Readln(xStrFinish);
    xFinish := StrToDateTime(xStrFinish);

    xCarRental := TCarRental.Create(xStart, xFinish, TVehicle.Create(xCarModel));

    Writeln('Entre com o preco por hora:');
    Readln(xStrPrincePerHour);
    xPrincePerHour := StrToFloatDef(xStrPrincePerHour,0);

    Writeln('Entre com o preço por dia:');
    Readln(xStrPricePerDay);
    xPricePerDay := StrToFloatDef(xStrPricePerDay,0);

    //xRentalService := TRentalService.Create(xPricePerDay, xPrincePerHour, TBrazilTaxService.Create);
    xRentalService := TRentalService.Create(xPricePerDay, xPrincePerHour, TUSATaxService.Create);
    xRentalService.ProcessInvoice(xCarRental);

    Writeln('Fatura:');
    Writeln('Pagamento básico...: ', xCarRental.Invoice.BasicPayment.ToString);
    Writeln('Imposto............: ', xCarRental.Invoice.Tax.ToString);
    Writeln('Total..............: ', xCarRental.Invoice.TotalPayment.ToString);

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

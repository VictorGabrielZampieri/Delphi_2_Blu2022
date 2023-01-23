program solucao_sem_interface;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UVehicle in 'model\entities\UVehicle.pas',
  UCarRental in 'model\entities\UCarRental.pas',
  UInvoice in 'model\entities\UInvoice.pas',
  UBrazilTaxService in 'model\services\UBrazilTaxService.pas',
  URentalService in 'model\services\URentalService.pas';

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
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

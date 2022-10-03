unit Ufrm28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRecordFuncionario = Record
    Nome : String;
    SalarioAtual : Currency;
    Reajuste : Integer;
    NovoSalario : Currency;
  End;

  TArrayFuncionarios = Array of TRecordFuncionario;

  Tfrm28 = class(TForm)
    mmFuncionarios: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    edtRegistrar: TButton;
    edtQuantidadeFuncionarios: TEdit;
    procedure edtRegistrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Controle;
    procedure RegistrarSalarioMinimo(var aSalarioMin : Currency);
    function  RegistrarFuncionarios : TArrayFuncionarios;
    function  AplicarReajuste(aArrayFuncionarios : TArrayFuncionarios; aSalarioMinimo : Currency) : TArrayFuncionarios;
    procedure ExibirInformacoes(aArrayFuncionarios : TArrayFuncionarios); 
  public
    { Public declarations }
  end;

var
  frmExercicio28: Tfrm28;

implementation

{$R *.dfm}

{ Tfrm28 }

function Tfrm28.AplicarReajuste(aArrayFuncionarios: TArrayFuncionarios; aSalarioMinimo : Currency): TArrayFuncionarios;
var
  I : Integer;
begin

  for I := 0 to Length(aArrayFuncionarios)-1 do
    begin
    
      if (aArrayFuncionarios[I].SalarioAtual < (aSalarioMinimo*3)) then
      begin
        aArrayFuncionarios[I].Reajuste := 50;
        aArrayFuncionarios[I].NovoSalario := aArrayFuncionarios[I].SalarioAtual*0.50;
      end

      else if (aArrayFuncionarios[I].SalarioAtual >= (aSalarioMinimo*3)) or (aArrayFuncionarios[I].SalarioAtual <= (aSalarioMinimo*10)) then
        begin
        aArrayFuncionarios[I].Reajuste := 20;
        aArrayFuncionarios[I].NovoSalario := aArrayFuncionarios[I].SalarioAtual*0.20;
        end

      else if (aArrayFuncionarios[I].SalarioAtual > (aSalarioMinimo*10)) or (aArrayFuncionarios[I].SalarioAtual <= (aSalarioMinimo*20)) then
        begin
        aArrayFuncionarios[I].Reajuste := 15;
        aArrayFuncionarios[I].NovoSalario := aArrayFuncionarios[I].SalarioAtual*0.15;
        end

      else
        begin
         aArrayFuncionarios[I].Reajuste := 10;
         aArrayFuncionarios[I].NovoSalario := aArrayFuncionarios[I].SalarioAtual*0.10;
        end;
    end;
    Result := aArrayFuncionarios;
end;

procedure Tfrm28.Controle;
var
  xSalarioMinimo : Currency;
  xArrayFuncionarios : TArrayFuncionarios;
begin
  xSalarioMinimo := 0;
  RegistrarSalarioMinimo(xSalarioMinimo);
  xArrayFuncionarios := RegistrarFuncionarios;
  xArrayFuncionarios := AplicarReajuste(xArrayFuncionarios, xSalarioMinimo);
  ExibirInformacoes(xArrayFuncionarios);
end;

procedure Tfrm28.edtRegistrarClick(Sender: TObject);
begin
  Self.Controle;
end;

procedure Tfrm28.ExibirInformacoes(aArrayFuncionarios: TArrayFuncionarios);
var
 xFolhaPagamneto : Currency;
 I : Integer;
begin
  xFolhaPagamneto := 0;
  
  for I := 0 to Length(aArrayFuncionarios)-1 do
  begin
     mmFuncionarios.Lines.Add(aArrayFuncionarios[I].Nome + ' Recebeu um Reajuste de '+ IntToStr(aArrayFuncionarios[I].Reajuste)+'% Salário Atual : '+ FormatFloat('0.00', aArrayFuncionarios[I].NovoSalario));
     xFolhaPagamneto := xFolhaPagamneto + aArrayFuncionarios[I].NovoSalario;
  end;
    mmFuncionarios.Lines.Add('Nova Folha : '+ CurrToStr(xFolhaPagamneto));
    
end;

function Tfrm28.RegistrarFuncionarios: TArrayFuncionarios;
var
  xFuncionario : TRecordFuncionario;
  xArrayFuncionarios : TArrayFuncionarios;
  xQuantidadeFuncionarios, I : Integer;
begin
  xQuantidadeFuncionarios := StrToInt(edtQuantidadeFuncionarios.Text);
  SetLength(xArrayFuncionarios, xQuantidadeFuncionarios);

  for I := 0 to Length(xArrayFuncionarios)-1 do
    begin
      xFuncionario.Nome := InputBox('Nome','Informe o Nome Do Funcionário','');
      xFuncionario.SalarioAtual := StrToCurr(InputBox('Salario','Informe o Salário Atual Do Funcionário',''));

      xArrayFuncionarios[I] := xFuncionario;
    end;
    Result := xArrayFuncionarios;
end;

procedure Tfrm28.RegistrarSalarioMinimo(var aSalarioMin : Currency);
begin
  aSalarioMin := StrToCurr(inputBox('Salário Minimo','Informe o Salário Minimo',''));
end;

end.

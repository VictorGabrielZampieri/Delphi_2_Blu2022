unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls;

type
  TEnum_Operacoes = (opSomar, opSubtrair, opMultiplicar, opDividir);
  TForm1 = class(TForm)
    btn_calcular: TButton;
    cmb_Operacoes: TComboBox;
    edt_Num1: TEdit;
    edt_num2: TEdit;
    lbl_Resultado: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btn_calcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure Operar;
    procedure Calcular(aNum1, aNum2 : Double; aOperacao: String);
    procedure TratrarResposta;
  public
    { Public declarations }
     const SUCESSO : Integer = 200;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_calcularClick(Sender: TObject);
begin
  Self.Operar;
end;

procedure TForm1.Operar;
var
  xNum1, xNum2 : Double;

begin

  if not (TryStrToFloat(edt_Num1.Text, xNum1)) then
    raise Exception.Create('Número 1 Inválido');

  if not (TryStrToFloat(edt_Num2.Text, xNum2)) then
    raise Exception.Create('Número 2 Inválido');

  case TEnum_Operacoes(cmb_Operacoes.ItemIndex)  of
    opSomar:
      Self.Calcular(xNum1, xNum2, 'somar');


    opSubtrair:
       Self.Calcular(xNum1, xNum2, 'subtrair');

    opMultiplicar:
      Self.Calcular(xNum1, xNum2, 'multiplicar');

    opDividir:
    begin
       if (xNum1 = 0) or (xNum2 = 0) then
       begin
        lbl_Resultado.Caption := 'Não pode divisao por zero';
          raise Exception.Create('Não pode divisao por zero');
       end;
       Self.Calcular(xNum1, xNum2, 'dividir');
    end;
  end;
end;

procedure TForm1.Calcular(aNum1, aNum2: Double; aOperacao: String);
begin
  RESTClient1.BaseURL := 'http://localhost:9090/'+aOperacao+'/'+aNum1.ToString+'/'+aNum2.ToString;
  RESTRequest1.Execute;
  Self.TratrarResposta;
end;

procedure TForm1.TratrarResposta;
begin
  if RESTResponse1.StatusCode = SUCESSO then
    lbl_Resultado.Caption := 'Resultado: '+ RESTResponse1.Content
  else
   lbl_Resultado.Caption := Format('Erro na Requisição: Status(%d)',[RESTResponse1.StatusCode]);
end;

end.

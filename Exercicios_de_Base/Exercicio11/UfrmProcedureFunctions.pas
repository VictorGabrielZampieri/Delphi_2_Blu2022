unit UfrmProcedureFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;

type
  TfrmProcedureFunctions = class(TForm)
    btnProcedure: TButton;
    btnFunction: TButton;
    btnParametroeReferencia: TButton;
    btnParametroConstante: TButton;
    btnArrayAberto: TButton;
    btnArrayAbertoVariante: TButton;
    btnFormat: TButton;
    btnDateFormatada: TButton;
    btnSobrecarga: TButton;
    btnParametroDefault: TButton;
    btnDeclaracaoForward: TButton;
    procedure btnProcedureClick(Sender: TObject);
    procedure btnFunctionClick(Sender: TObject);
    procedure btnParametroeReferenciaClick(Sender: TObject);
    procedure btnParametroConstanteClick(Sender: TObject);
    procedure btnArrayAbertoVarianteClick(Sender: TObject);
    procedure btnFormatClick(Sender: TObject);
    procedure btnDateFormatadaClick(Sender: TObject);
    procedure btnSobrecargaClick(Sender: TObject);
    procedure btnParametroDefaultClick(Sender: TObject);
    procedure btnDeclaracaoForwardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcedureFunctions: TfrmProcedureFunctions;

implementation

{$R *.dfm}

//Procedure e Function

procedure OlaMundo;  //Isso ? uma procedure
begin
  ShowMessage('Ol? Mundo');
end;

function RetornarNomeSobreNome: String;   //Isso ? uma function
begin
  Result  := 'Victor Gabriel Zampieri';
end;

procedure DoubleTheValue(var Value: Integer);  //Procedure com parametro por referencia(no caso altera o valor da var passada)
begin
  Value := Value *2;
end;

function DoubleTheValue2(const Value: Integer) :  Integer;   //Procedure com Parametro de referencia Constante
begin
  // Value :=  value * 2; //compiler erro
  Result  :=  Value;
end;

function Sum(const A: Array of Integer):  Integer;   //Paramentros com Array Aberto
var
 I:  Integer;
begin
  Result := 0;

  for I := Low (A) to High (A) do
    Result  :=  Result  + A[I];
end;

//Paramentro Default
procedure NewMessage(aMsg: String; aCaption: String = 'Message';
                      aSeparador: String = SLineBreak);  //o = define quanto vira parametro opcional
                                                           //Quando h? um defult os outros depois dele tabemdevem ser
var
  xMensagem: String;
begin
  xMensagem := aCaption;
  xMensagem := xMensagem + ': ';
  xMensagem := xMensagem + aMsg;
  xMensagem := xMensagem + aSeparador;

  ShowMessage(xMensagem);
end;

//Declaracao forward
procedure Hello; forward;
procedure DoubleHello; forward;

procedure Hello;
begin
  if MessageDlg('Do you want a double message', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  DoubleHello
  else
  ShowMessage('Hello');
end;

procedure DoubleHello;
begin
  Hello;
  Hello;
end;

//Sobrecarga de funcoes
function Min(A, B:  Integer): Integer;  Overload;
begin
  Result  := A;
  if B < A then
  Result  := B;
end;

function Min(A, B:  Double): Double;  Overload;
begin
  Result  := A;
  if B < A then
  Result  := B;
end;

function Min(A, B:  Extended): Extended;  Overload;
begin
  Result  := A;
  if B < A then
  Result  := B;
end;

procedure TfrmProcedureFunctions.btnArrayAbertoVarianteClick(Sender: TObject);
var
  xNum1:  Integer;
  xNum2:  Double;
begin
  xNum1 :=  20;
  xNum2 :=  1500.50;

  ShowMessage(
  Format('Total do caixa ? de %d',  [xNum1]));

  ShowMessage(
  Format('Ol? %s, money: %f',['Victor', xNum2]));
end;

procedure TfrmProcedureFunctions.btnFormatClick(Sender: TObject);
var
text  : String;
begin
    ShowMessage(Format('%s', ['Hello']));

    ShowMessage(Format('String = %s', ['Hello']));
    ShowMessage('');

    ShowMessage(Format('Decimal          = %d', [-123]));
    ShowMessage(Format('Exponent         = %e', [12345.678]));
    ShowMessage(Format('Fixed            = %f', [12345.678]));
    ShowMessage(Format('General          = %g', [12345.678]));
    ShowMessage(Format('Number           = %n', [12345.678]));
    ShowMessage(Format('Money            = %m', [12345.678]));
    ShowMessage(Format('Pointer          = %p', [addr(text)]));
    ShowMessage(Format('String           = %s', ['Eai']));
    ShowMessage(Format('Usigened decimal = %u', [123]));
    ShowMessage(Format('Hexadecimal      = %x', [140]));
end;

procedure TfrmProcedureFunctions.btnFunctionClick(Sender: TObject);
begin
var
  xNomeSobreNome: String;
  begin
    xNomeSobreNome  := RetornarNomeSobrenome;
    ShowMessage(xNomeSobreNome);
  end;
end;

procedure TfrmProcedureFunctions.btnParametroConstanteClick(Sender: TObject);
begin
  var
  x:  Integer;
  begin
    x := 10;
    DoubleTheValue2(x);
    ShowMessage(x.ToString);
  end;
end;

procedure TfrmProcedureFunctions.btnParametroDefaultClick(Sender: TObject);
begin
   NewMessage('Something wrong here!');
   NewMessage('Something wrong here!', 'Attention');
   NewMessage('Hello', 'Message', '--');
end;

procedure TfrmProcedureFunctions.btnParametroeReferenciaClick(Sender: TObject);
begin
var
x:  Integer;
begin
  x :=  10;
  DoubleTheValue(x);
  ShowMessage(x.ToString);
end;
end;

procedure TfrmProcedureFunctions.btnProcedureClick(Sender: TObject);
begin
    OlaMundo;
end;

procedure TfrmProcedureFunctions.btnSobrecargaClick(Sender: TObject);
var
  xNum1, xNum2: Integer;
  xNum3, xNum4: Double;
  xNum5, xNum6: Extended;
begin
  xNum1 := 1; xNum2 :=  2;
  xNum3 := 1; xNum4 :=  2;
  xNum5 := 1; xNum6 :=  2;

   ShowMessage(Min(xNum1, xNum2).ToString);
   ShowMessage(Min(xNum3, xNum4).ToString);
   ShowMessage(Min(xNum5, xNum6).ToString);
end;

procedure TfrmProcedureFunctions.btnDateFormatadaClick(Sender: TObject);
var
  myDate  : TDateTime;
begin
  myDate  :=  EncodeDateTime(2000, 1, 5, 1, 2, 3, 4);

  ShowMessage('               d/m/y = '+
              FormatDateTime('d/m/y', myDate));

  ShowMessage('                dd/mm/yy = ' +
              FormatDateTime('dd/mm/yy', myDate));


  ShowMessage('                ddd d de mmmm yyyy = ' +
              FormatDateTime('dddd d of mmmm yyyy', myDate));

  ShowMessage('                ddddd = ' +
              FormatDateTime('ddddd', myDate));

  ShowMessage('                dddddd = ' +
              FormatDateTime('dddddd', myDate));

  ShowMessage('                c = ' +
              FormatDateTime('c', myDate));
end;

procedure TfrmProcedureFunctions.btnDeclaracaoForwardClick(Sender: TObject);
begin
  DoubleHello;
end;

end.

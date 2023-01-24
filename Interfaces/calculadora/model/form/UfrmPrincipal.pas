unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCalculadoraService, UCalculadoraServiceDefault;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    edt_num1: TEdit;
    edt_num2: TEdit;
    btnCalcular: TButton;
    mm_historico: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimparCampos;
    procedure Calcular;
    procedure ExibirMemo(aResposta : Double);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Self.Calcular;
end;

procedure TForm1.Calcular;
var
  xCalcular : TCalculadoraService;
  xResposta : Double;
begin
  xCalcular := TCalculadoraService.Create(StrToFloat(edt_num1.Text), StrToFloat(edt_num2.Text), TCalculatorServiceDefault.Create);
  try
   xResposta := xCalcular.processarCal(TTypeCalc(ComboBox1.ItemIndex));
   Self.ExibirMemo(xResposta);
   Self.LimparCampos;
  finally
   FreeAndNil(xCalcular);
  end;
end;

procedure TForm1.ExibirMemo(aResposta : Double);
begin
  mm_historico.Lines.Add('--------------------');
  mm_historico.Lines.Add('|Resultado: '+ FloatToStr(aResposta)+'|');
  mm_historico.Lines.Add('--------------------');
end;

procedure TForm1.LimparCampos;
begin
  edt_num1.Clear;
  edt_num2.Clear;
end;

end.

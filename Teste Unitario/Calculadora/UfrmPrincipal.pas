unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Ucalculadora;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResultado: TLabel;
    edtNum1: TEdit;
    edtNum2: TEdit;
    cbxOperacoes: TComboBox;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirResultado(aResultado : Double);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  FCalculadora : TCalculador;
  xResultado, xNum1, xNum2 : Double;
begin
  FCalculadora := TCalculador.Create;
  xResultado := 0;
  xNum1 := StrToFloat(edtNum1.Text);
  xNum2 := StrToFloat(edtNum2.Text);

  case TEnumOperacoes(cbxOperacoes.ItemIndex) of
    opSomar :
     xResultado := FCalculadora.somar(xNum1, xNum2);

   opSubtrair :
    xResultado := FCalculadora.Subtrair(xNum1, xNum2);

   opMultiplicar :
    xResultado := FCalculadora.multiplicar(xNum1, xNum2);

   opDividir :
    xResultado := FCalculadora.dividir(xNum1, xNum2);

  end;
  Self.ExibirResultado(xResultado);
  FreeAndNil(FCalculadora);
end;

procedure TfrmPrincipal.ExibirResultado(aResultado: Double);
begin
  lblResultado.Caption := aResultado.ToString;
end;


end.

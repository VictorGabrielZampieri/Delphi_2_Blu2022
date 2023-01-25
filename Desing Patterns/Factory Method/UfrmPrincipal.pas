unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtValor: TEdit;
    edtQtdParcelas: TEdit;
    cmbPrazoParcelas: TComboBox;
    btnGerar: TButton;
    Memo1: TMemo;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UTipoPrazo, UFabricaPrazos;

{$R *.dfm}

procedure TForm1.btnGerarClick(Sender: TObject);
var
  xFabrica: IFactoryMethod;
  xPrazo: ITipoPrazo;
  xDescricao, xjuros, xprojecao, xtotal: String;
begin
  xFabrica := TFabricaPrazos.Create;
  xPrazo := xFabrica.ConsultarPrazo(cmbPrazoParcelas.Text);

  Memo1.Lines.Add(xPrazo.ConsultarDescricao);
  Memo1.Lines.Add(xPrazo.ConsultarJuros);
  Memo1.Lines.Add(xPrazo.ConsultarProjecao(StrToInt(edtValor.Text),
    StrToInt(edtQtdParcelas.Text)));
  Memo1.Lines.Add(xPrazo.ConsultarTotal);
end;


end.

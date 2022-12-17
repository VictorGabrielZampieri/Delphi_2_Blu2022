unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lyt_Top: TLayout;
    Rect_Top: TRectangle;
    lbl_Titulo: TLabel;
    lyt_altura: TLayout;
    edt_altura: TEdit;
    lbl_altura: TLabel;
    Layout1: TLayout;
    Rec_cor_fundo: TRectangle;
    lyt_peso: TLayout;
    edt_peso: TEdit;
    lbl_peso: TLabel;
    lyt_Peso_ideal: TLayout;
    lbl_peso_ideal: TLabel;
    lyt_botao: TLayout;
    Rec_cor_fundo_botao: TRectangle;
    btn_Calcular: TSpeedButton;
    procedure btn_CalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirResposta(aResposta : String);
    procedure ClassificarPeso(aImc : Double);
    procedure CalcularIMC;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TForm1 }        //terminbar splash

procedure TfrmPrincipal.btn_CalcularClick(Sender: TObject);
begin
  Self.CalcularIMC;
end;

procedure TfrmPrincipal.CalcularIMC;
var
  xKg : Double;
  xMassa : Double;
  xAltura : Double;
  xIMC : Double;
begin

  if (edt_altura.Text.IsEmpty) or (edt_peso.Text.IsEmpty) then
    raise Exception.Create('Por favor preencha todos os campos');

  if not (TryStrToFloat(edt_altura.Text, xAltura)) then
    raise Exception.Create('Altura inválido');

    if not (TryStrToFloat(edt_peso.Text, xKg)) then
     raise Exception.Create('Peso inválido');

  xMassa := xAltura*xAltura;

  xIMC := xKg/xMassa;

  Self.ClassificarPeso(xIMC);
end;

procedure TfrmPrincipal.ClassificarPeso(aImc: Double);
var
  xResposta : String;
  xImcStr : String;
begin
  xImcStr := FormatFloat( '#,##0.00',aImc);

  if (aImc < 18.5) then
  begin
    xResposta := 'Magreza ('+ xImcStr +')';
  end
  else if (aImc >= 18.5) and (aImc <= 24.9) then
  begin
    xResposta := 'Peso Ideal ('+ xImcStr +')';
  end
  else if (aImc >= 25.0) and (aImc <= 29.9) then
  begin
    xResposta := 'Sobrepeso ('+ xImcStr +')';
  end
  else if (aImc >= 30.0) and (aImc <= 39.9) then
  begin
    xResposta := 'Obesidade ('+ xImcStr +')';
  end
  else if (aImc >= 40.0) then
  begin
    xResposta := 'Obesidade Grave ('+ xImcStr +')';
  end;

  Self.ExibirResposta(xResposta);
end;

procedure TfrmPrincipal.ExibirResposta(aResposta: String);
begin

  lbl_peso_ideal.Text := aResposta;
end;

end.

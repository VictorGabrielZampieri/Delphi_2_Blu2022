unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TfrmPrincipal = class(TForm)
    edtSaldo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lbtQuantidade: TLabel;
    btnAdicionar: TButton;
    btnComprarMacas: TButton;
    lblComprarMacas: TLabel;
    btnTrabalhar: TButton;
    lblCaixas: TLabel;
    lblQuantidadeCaixas: TLabel;
    btnFazerCaixa: TButton;
    lblVendas: TLabel;
    lblNumeroVendas: TLabel;
    btnVendas: TButton;
    lblPrecotxt: TLabel;
    lblPrecoMercado: TLabel;
    lblPro: TLabel;
    lblCura: TLabel;
    lblQuantidadeMer: TLabel;
    lblPlVendas: TLabel;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnComprarMacasClick(Sender: TObject);
    procedure btnTrabalharClick(Sender: TObject);
    procedure btnFazerCaixaClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarSaldo;
    procedure ComprarMacas;
    procedure Trabalhar;
    procedure FazerCaixa;
    procedure AlteraPrecoMercado;
    procedure VenderCaixa;
    procedure AlterarProcura;
    procedure AlterarQuantMercado;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.AdicionarSaldo;
var
  xSaldo, xValorPassado : Currency;
  xQuantidadeMercado : String;
begin
  xSaldo := 0;
  xValorPassado := StrToCurr(edtSaldo.Text);

  if (xValorPassado <= 2500) then
  begin
  xSaldo := xValorPassado;

  edtSaldo.Text := CurrToStr(xSaldo);
  end
    else
  begin
  edtSaldo.Text := '1';
  end;

  xQuantidadeMercado := '50';
  lblQuantidadeMer.Caption := xQuantidadeMercado;
  edtSaldo.ReadOnly := True;
  btnTrabalhar.Visible := True;
  btnAdicionar.Visible := False;

  lblComprarMacas.Visible := True;
  Label2.Visible := True;
  lbtQuantidade.Visible := True;
  btnComprarMacas.Visible := True;
end;

procedure TfrmPrincipal.AlteraPrecoMercado;
var
  xPreco, xNovoPreco, xRvlr : Double;
  xPrecoE : Extended;
  xProcura : String;
begin
  xPreco := StrToFloat(lblPrecoMercado.Caption);
  xPrecoE := StrToFloat(lblPrecoMercado.Caption);
  xProcura := lblCura.Caption;


  if (xPreco < 1200) then
begin

  xRvlr := Random(1000);

  if (xRvlr <= 10) then
  begin
    if (xProcura = 'Muito Alta') then
      xNovoPreco := xPreco * 10000
    else if (xProcura = 'Alta') then
      xNovoPreco := xPreco * 100
    else if (xProcura = 'Media') then
      xNovoPreco := xPreco * 50
    else if (xProcura = 'Baixa') then
      xNovoPreco := xPreco * 20
    else if (xProcura = 'Muito Baixa') then
      xNovoPreco := xPreco * 2;
  end;

  if (xRvlr <= 250) and (xRvlr >= 11) then
  begin
      if (xProcura = 'Muito Alta') then
      xNovoPreco := xPreco * 7
    else if (xProcura = 'Alta') then
      xNovoPreco := xPreco * 4
    else if (xProcura = 'Media') then
      xNovoPreco := xPreco * 2
    else if (xProcura = 'Baixa') then
      xNovoPreco := xPreco * 1.7
    else if (xProcura = 'Muito Baixa') then
      xNovoPreco := xPreco * 1.2;
  end;

  if (xRvlr <= 450) and (xRvlr >= 251) then
  begin
      if (xProcura = 'Muito Alta') then
      xNovoPreco := xPreco + 187.5
    else if (xProcura = 'Alta') then
      xNovoPreco := xPreco
    else if (xProcura = 'Media') then
      xNovoPreco := xPreco - 200.87
    else if (xProcura = 'Baixa') then
      xNovoPreco := xPrecoE / 2
    else if (xProcura = 'Muito Baixa') then
      xNovoPreco := xPrecoE / 10;
  end;

  if (xRvlr <= 750) and (xRvlr >= 451) then
  begin
       if (xProcura = 'Muito Alta') then
      xNovoPreco := xPreco + 187.5
    else if (xProcura = 'Alta') then
      xNovoPreco := xPreco
    else if (xProcura = 'Media') then
      xNovoPreco := xPrecoE - (xPrecoE / 2)
    else if (xProcura = 'Baixa') then
      xNovoPreco := xPrecoE - (xPrecoE * 2)
    else if (xProcura = 'Muito Baixa') then
      xNovoPreco := xPrecoE - (xPrecoE + 250);
  end;

  if (xRvlr <= 1000) and (xRvlr >= 751) then
  begin
      if (xProcura = 'Muito Alta') then
      xNovoPreco := xPreco + 799.99
    else if (xProcura = 'Alta') then
      xNovoPreco := xPreco + 499.34
    else if (xProcura = 'Media') then
      xNovoPreco := xPreco + 250
    else if (xProcura = 'Baixa') then
      xNovoPreco := xPreco + 100
    else if (xProcura = 'Muito Baixa') then
      xNovoPreco := xPreco + 57.65;
  end;
end
  else
   xNovoPreco := xPreco - 243.89;

   if (xNovoPreco < -250) then
    xNovoPreco := xPreco + 57.65;

  lblPrecoMercado.Caption := xNovoPreco.ToString;
  lblPrecoMercado.Caption := FormatFloat('0.00',xNovoPreco);

end;

procedure TfrmPrincipal.AlterarProcura;
var
 xQuantidadeMer : Integer;
 xProcuraAtual : String;
begin
  xQuantidadeMer := StrToInt(lblQuantidadeMer.Caption);
  xProcuraAtual := '';

  if (xQuantidadeMer >= 100) then
    xProcuraAtual := 'Muito Alta';

  if (xQuantidadeMer >= 75) and (xQuantidadeMer < 90) then
    xProcuraAtual := 'Alta';

  if (xQuantidadeMer >= 50) and (xQuantidadeMer < 75)then
    xProcuraAtual := 'Media';

  if (xQuantidadeMer >= 25)  and (xQuantidadeMer < 50)then
    xProcuraAtual := 'Baixa';

  if (xQuantidadeMer >= 0) and (xQuantidadeMer < 25)then
    xProcuraAtual := 'Muito Baixa';

   if (xQuantidadeMer < 0) then
    xProcuraAtual := 'Muito Alta';

    lblCura.Caption := xProcuraAtual;
end;

procedure TfrmPrincipal.AlterarQuantMercado;
var
  xQuantidadeMercado, XRandom, xVendas, xControle : Integer;
begin
   xQuantidadeMercado := StrToInt(lblQuantidadeMer.Caption);
   xVendas := StrToInt(lblPlVendas.Caption);
   xControle := 75;

   if (xQuantidadeMercado = 0) then
   lblQuantidadeMer.Caption := xControle.ToString

   else
   begin
   XRandom := Random(10);

   if (xRandom = 1) then
   lblQuantidadeMer.Caption := (xQuantidadeMercado - xVendas).ToString
   else if (XRandom = 2) or (XRandom = 3)then
   lblQuantidadeMer.Caption := (xQuantidadeMercado - 1).ToString
   else if (XRandom = 4) then
   lblQuantidadeMer.Caption := (xQuantidadeMercado - 3).ToString
   else if (XRandom = 5) then
   lblQuantidadeMer.Caption := (xQuantidadeMercado - 10).ToString
   else if (XRandom = 6) or (XRandom <= 8) then
   lblQuantidadeMer.Caption := (xQuantidadeMercado + 1).ToString
   else if (XRandom = 0) or (xVendas < 5) then
   lblQuantidadeMer.Caption := (xQuantidadeMercado + 5).ToString;
   end;
end;

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  self.AlterarProcura;
  self.AlterarQuantMercado;
  self.AlteraPrecoMercado;
  self.AdicionarSaldo;
end;

procedure TfrmPrincipal.btnComprarMacasClick(Sender: TObject);
begin
  self.AlterarProcura;
  self.AlterarQuantMercado;
  self.ComprarMacas;
  self.AlteraPrecoMercado;
end;

procedure TfrmPrincipal.btnFazerCaixaClick(Sender: TObject);
begin
  self.AlterarProcura;
  self.AlterarQuantMercado;
  self.AlteraPrecoMercado;
  self.FazerCaixa;
end;

procedure TfrmPrincipal.btnTrabalharClick(Sender: TObject);
begin
  self.AlterarProcura;
  self.AlterarQuantMercado;
  self.AlteraPrecoMercado;
  self.Trabalhar;
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  self.AlterarQuantMercado;
  Self.VenderCaixa;
  self.AlterarProcura;
  self.AlteraPrecoMercado;
end;

procedure TfrmPrincipal.ComprarMacas;
var
  xSaldo : Currency;
  xMacas : Integer;
begin
  xSaldo := StrToCurr(edtSaldo.Text);
  if (xSaldo >= 10) then
  begin
  xMacas := StrToInt(lbtQuantidade.Caption);

  xSaldo := xSaldo - 10;
  xMacas := xMacas + 5;

  edtSaldo.Text := CurrToStr(xSaldo);
  lbtQuantidade.Caption := xMacas.ToString;

    if (xMacas >= 50) then
      begin
        lblCaixas.Visible := true;
        lblQuantidadeCaixas.Visible := true;
        btnFazerCaixa.Visible := true;
        lblNumeroVendas.Visible := true;
        lblPrecotxt.Visible := true;
        lblPrecoMercado.Visible := true;
        lblPro.Visible := true;
        lblCura.Visible := true;
     end;
  end
  else
  ShowMessage('Voc? n?o possui Saldo para comprar ma??s, Parab?ns!')
end;

procedure TfrmPrincipal.FazerCaixa;
var
  xCaixas, xMacas : Integer;
begin
   xCaixas := StrToInt(lblQuantidadeCaixas.Caption);
   xMacas := StrToInt(lbtQuantidade.Caption);

    if (xMacas - 50 >= 0) then
     begin
      xMacas := xMacas - 50;
      xCaixas := xCaixas + 1;

      lbtQuantidade.Caption := xMacas.ToString;
      lblQuantidadeCaixas.Caption := xCaixas.ToString;

        if (xCaixas > 5) then
        begin
          lblVendas.Visible := true;
          lblNumeroVendas.Visible := true;
          btnVendas.Visible := true;
        end;
     end
     else
     ShowMessage('Voc? n?o possui Ma??s o suficiente');

end;

procedure TfrmPrincipal.Trabalhar;
var
  xSaldo : Currency;
begin

  xSaldo := StrToCurr(edtSaldo.Text);

  xSaldo := xSaldo + 15;

  edtSaldo.Text := CurrToStr(xSaldo);
end;

procedure TfrmPrincipal.VenderCaixa;
var
  xSaldo, xValorMercado : Currency;
  xCaixa : Integer;
begin
  xSaldo := StrToCurr(edtSaldo.Text);
  xValorMercado := StrToCurr(lblPrecoMercado.Caption);
  xCaixa := StrToInt(lblQuantidadeCaixas.Caption);

  if (xCaixa > 0) then
    begin
      xCaixa := xCaixa -1;
      xSaldo := xSaldo + xValorMercado;

      edtSaldo.Text := CurrToStr(xSaldo);
      lblQuantidadeCaixas.Caption := xCaixa.ToString;
    end
  else
     ShowMessage('Voc? N?o possui caixas para vender');

end;

end.

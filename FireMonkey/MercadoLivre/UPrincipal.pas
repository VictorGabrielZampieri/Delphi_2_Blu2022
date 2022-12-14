unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblCentavosProduto: TLabel;
    lblTituloProduto: TLabel;
    lblReaisProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    linhaEnvio: TLine;
    lblCentavosParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lyt_botao_compra: TLayout;
    Rectangle1: TRectangle;
    btn_compra: TSpeedButton;
    lyt_compra_ok: TLayout;
    imgOk: TImage;
    lyt_loading_compra: TLayout;
    rect_barr: TRectangle;
    lblMsmLoading: TLabel;
    Rec_fundo: TRectangle;
    Rec_fundo_branco_top: TRectangle;
    lyt_detalhes: TLayout;
    Rec_fundo_branco_bottom: TRectangle;
    circuloProduto: TCircle;
    lblProduto: TLabel;
    lblQuantidade: TLabel;
    linhaProduto: TLine;
    CirculoEndereco: TCircle;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_compraClick(Sender: TObject);
  private
    { Private declarations }

    FLoop : String;

    procedure LoadingCompra(aInd : Boolean);
    procedure Comprar_WS;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.btn_compraClick(Sender: TObject);
begin
  Self.LoadingCompra(True);
  rect_barr.Margins.Right := Rec_fundo.Width;
  FLoop :='S';

  Self.Comprar_WS;

  TThread.CreateAnonymousThread(procedure
  begin
    while (FLoop = 'S') do
    begin
      if (rect_barr.Margins.Right <= 0) then
        rect_barr.Margins.Right := Rec_fundo.Width;

        Sleep(150);

        TThread.Synchronize(nil, procedure
        begin
          rect_barr.Margins.Right := rect_barr.Margins.Right - 1;
        end);
    end;

    //Finalizou com erro ...
    if (FLoop =  'ERRO') then
    begin
      TThread.Synchronize(nil, procedure
      begin
        Self.LoadingCompra(False);
        ShowMessage('Erro ao finalizar compra');
      end);
    end;

    //Finalizou com sucesso ...
    if (FLoop = 'OK') then
    begin
      TThread.Synchronize(nil, procedure
      begin
        lyt_loading_compra.AnimateFloat('Margins.Left', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Margins.Right', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Opacity', 0, 0.3);
      end);

      Sleep(450);

      TThread.Synchronize(nil, procedure
      begin
        lyt_compra_ok.Visible := true;
        lyt_compra_ok.AnimateFloat('Opacity', 1, 0.4);
      end);

      Sleep(1000);

      TThread.Synchronize(nil, procedure
      begin
        ShowMessage('Compra realizada com sucesso');
      end);
    end;
  end).Start
end;

procedure TfrmPrincipal.Comprar_WS;
begin
  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(5000);
    //...
    //...
    //...
    FLoop := 'OK';
  end).Start;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Self.LoadingCompra(False);
end;

procedure TfrmPrincipal.LoadingCompra(aInd: Boolean);
begin
  Rec_fundo_branco_top.Visible    := aInd;
  Rec_fundo_branco_bottom.Visible := aInd;

  lyt_botao_compra.Visible        := not aInd;
  lyt_loading_compra.Visible      := aInd;
  lyt_compra_ok.Visible           := False;
  lyt_compra_ok.Opacity           := 0;
end;

end.

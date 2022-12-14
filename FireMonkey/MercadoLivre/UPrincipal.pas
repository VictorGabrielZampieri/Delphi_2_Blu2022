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
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.

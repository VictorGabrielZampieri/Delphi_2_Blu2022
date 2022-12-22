unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.TabControl;

type
  TfrmPrincipal = class(TForm)
    FlowLayout1: TFlowLayout;
    rect_CMachiatto: TRectangle;
    rect_Machiatto: TRectangle;
    lblMachiatto: TLabel;
    lbl_pricesMachiatto: TLabel;
    rect_CLatte: TRectangle;
    rect_latte: TRectangle;
    lbl_latte: TLabel;
    lbl_pricesLatte: TLabel;
    lyt_principal: TLayout;
    rect_fundo_principal: TRectangle;
    lyt_top_bar: TLayout;
    rect_more: TRectangle;
    img_more: TImage;
    rect_bag: TRectangle;
    img_bag: TImage;
    lay_search_bar: TLayout;
    rect_search_bar: TRectangle;
    edt_search: TEdit;
    rect_lup: TRectangle;
    img_lup: TImage;
    lyt_Conteudo: TLayout;
    lyt_center: TLayout;
    lyt_pop_drinks: TLayout;
    lbl_popular_drinks: TLabel;
    rect_CAmericano: TRectangle;
    rect_Americano: TRectangle;
    lbl_Americano: TLabel;
    lbl_pricesAmericano: TLabel;
    rect_CPiccolo: TRectangle;
    rect_piccolo: TRectangle;
    lbl_piccolo: TLabel;
    lbl_pricesPiccolo: TLabel;
    rect_CCappuccino: TRectangle;
    rect_Cappuccino: TRectangle;
    lbl_Cappuccino: TLabel;
    lbl_priceCappuccino: TLabel;
    rect_CFrapucciono: TRectangle;
    rect_Frapucciono: TRectangle;
    lbl_Frapuccino: TLabel;
    lbl_priceFrapuccino: TLabel;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Circle4: TCircle;
    Circle5: TCircle;
    Circle6: TCircle;
    lyt_bottom_bar: TLayout;
    lyt_bar: TLayout;
    rect_bar: TRectangle;
    rect_home: TRectangle;
    img_home: TImage;
    lbl_home: TLabel;
    img_user: TImage;
    img_heart: TImage;
    img_bell: TImage;
    lyt_cafe: TLayout;
    rect_fundo_lyt_cafe: TRectangle;
    lyt_top_menu: TLayout;
    img_back: TImage;
    img_more_vert: TImage;
    lyt_name_description: TLayout;
    lyt_name: TLayout;
    lbl_coffe_name: TLabel;
    lyt_description: TLayout;
    lbl_description: TLabel;
    lyt_image_coffe: TLayout;
    rect_img_coffe: TRectangle;
    lyt_Size: TLayout;
    lyt_SizeLabel: TLayout;
    lbl_Size: TLabel;
    cir_Small: TCircle;
    lbl_Small: TLabel;
    cir_Medium: TCircle;
    lbl_Medium: TLabel;
    cir_Large: TCircle;
    lbl_Large: TLabel;
    lyt_Quantity: TLayout;
    Layout2: TLayout;
    lbl_Quantity: TLabel;
    cir_Less: TCircle;
    cir_qnt: TCircle;
    lbl_qnt: TLabel;
    cir_plus: TCircle;
    img_Less: TImage;
    img_plus: TImage;
    lyt_Shop: TLayout;
    Layout1: TLayout;
    lbl_price: TLabel;
    cir_buy: TCircle;
    img_buy: TImage;
    lyt_img_buy: TLayout;
    lbl_IDR: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;

    procedure OnClickCoffe(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.OnClickCoffe(Sender: TObject);
var
  xPosicao: Integer;
  xRetangulo : String;
  xCafe: String;
begin
  TabControl1.ActiveTab := TabItem2;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao   := Pos('_', xRetangulo);
  xCafe   := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if (xCafe = 'CMachiatto') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CMachiatto.Fill.Bitmap;
    lbl_coffe_name.Text        := lblMachiatto.Text;
    lbl_IDR.Text               := lbl_pricesMachiatto.Text;
  end
  else if(xCafe = 'CLatte') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CLatte.Fill.Bitmap;
    lbl_coffe_name.Text        := lbl_latte.Text;
    lbl_IDR.Text               := lbl_pricesLatte.Text;
  end
  else if(xCafe = 'CAmericano') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CAmericano.Fill.Bitmap;
    lbl_coffe_name.Text        := lbl_Americano.Text;
    lbl_IDR.Text               := lbl_pricesAmericano.Text;
  end
  else if(xCafe = 'CPiccolo') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CPiccolo.Fill.Bitmap;
    lbl_coffe_name.Text        := lbl_piccolo.Text;
    lbl_IDR.Text               := lbl_pricesPiccolo.Text;
  end
  else if(xCafe = 'CCappuccino') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CCappuccino.Fill.Bitmap;
    lbl_coffe_name.Text        := lbl_Cappuccino.Text;
    lbl_IDR.Text               := lbl_priceCappuccino.Text;
  end
  else if(xCafe = 'CFrapucciono') then
  begin
    rect_img_coffe.Fill.Bitmap := rect_CFrapucciono.Fill.Bitmap;
    lbl_coffe_name.Text        := lbl_Frapuccino.Text;
    lbl_IDR.Text               := lbl_priceFrapuccino.Text;
  end
end;

end.

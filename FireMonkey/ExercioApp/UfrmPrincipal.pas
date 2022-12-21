unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmPrincipal = class(TForm)
    FlowLayout1: TFlowLayout;
    Rec_1_1: TRectangle;
    rect_Machiatto: TRectangle;
    lblMachiatto: TLabel;
    lbl_prices: TLabel;
    rect_1_2: TRectangle;
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
    rect_2_1: TRectangle;
    rect_Americano: TRectangle;
    lbl_Americano: TLabel;
    lbl_pricesAmericano: TLabel;
    rect_2_2: TRectangle;
    rect_picco: TRectangle;
    lbl_picco: TLabel;
    lbl_pricesPiccolo: TLabel;
    rect_3_1: TRectangle;
    rect_Cappuccino: TRectangle;
    lbl_Cappuccino: TLabel;
    lbl_priceCappuccino: TLabel;
    rect_3_2: TRectangle;
    Rectangle8: TRectangle;
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
    VertScrollBox1: TVertScrollBox;
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

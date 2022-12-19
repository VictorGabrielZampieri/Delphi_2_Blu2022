unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects;

type
  TForm1 = class(TForm)
    lyt_Cliente: TLayout;
    lyt_top: TLayout;
    Rect_fundo_top: TRectangle;
    Label1: TLabel;
    Rec_fundo: TRectangle;
    FlowLayout1: TFlowLayout;
    Rect_beer: TRectangle;
    Image1: TImage;
    lbl_Bar_Hoteis: TLabel;
    lbl_bars_qnt: TLabel;
    Rectangle1: TRectangle;
    Image2: TImage;
    lbl_Fine_dinenig_places: TLabel;
    lbl_Fine_dining: TLabel;
    Rectangle2: TRectangle;
    Image3: TImage;
    lbl_Cafes_places: TLabel;
    lbl_Cafes: TLabel;
    Rectangle3: TRectangle;
    Image4: TImage;
    lbl_proximos_places: TLabel;
    lbl_proximo: TLabel;
    Rectangle4: TRectangle;
    Image5: TImage;
    lbl_fast_food_places: TLabel;
    lbl_fast_food: TLabel;
    Rectangle5: TRectangle;
    Image6: TImage;
    Label10: TLabel;
    lbl_: TLabel;
    ShadowEffect1: TShadowEffect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.

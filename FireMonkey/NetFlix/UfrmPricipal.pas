unit UfrmPricipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects;

type
  TfrmPrincipal = class(TForm)
    imgCartaz: TImage;
    ImgDegradeUp: TImage;
    ImgLogo: TImage;
    lytGenero: TLayout;
    imgBtnMenu: TImage;
    lblFiltro: TLabel;
    lytMenu: TLayout;
    Layout1: TLayout;
    imgTitulo: TImage;
    imgDegrade: TImage;
    Label1: TLabel;
    imgBtnAssistir: TImage;
    Layout2: TLayout;
    imgBtnPlus: TImage;
    Layout3: TLayout;
    imiBtnSaibaMais: TImage;
    lblMinhaLista: TLabel;
    lblSaibaMais: TLabel;
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

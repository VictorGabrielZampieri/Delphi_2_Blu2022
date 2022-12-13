unit UfrmPricipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects, FMX.Ani,
  FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    imgCartaz: TImage;
    ImgDegradeUp: TImage;
    ImgLogo: TImage;
    lytGenero: TLayout;
    imgBtnMenu: TImage;
    lblFiltro: TLabel;
    Layout1: TLayout;
    imgTitulo: TImage;
    imgDegrade: TImage;
    Label1: TLabel;
    imgBtnAssistir: TImage;
    Layout2: TLayout;
    imgBtnPlus: TImage;
    Layout3: TLayout;
    imgBtnSaibaMais: TImage;
    lblMinhaLista: TLabel;
    lblSaibaMais: TLabel;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
    lytFecha: TLayout;
    imgBtnClose: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
  private
    { Private declarations }
    procedure LoadMenu;
    procedure OpenMenu(ind : Boolean);
    procedure SetupMenu(Item : TListBoxItem; texto : String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os Gêneros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Disponível para Download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Ação');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolecente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asiáticos');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Comédia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mistério');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
end;

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
  //Esconde o item Selecionado
  ListBox1.ItemIndex := -1;

  //Volta a listagem para o inicio
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if (ind) then
  begin
    lytMenu.Visible := True;
    lytMenu.Tag := 1;
    lytGenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;
  end
  else
  begin
    lytMenu.tag := 0;
    lytGenero.AnimateFloat('Opacity', 1,0.4);
    FloatAnimation1.Inverse := True;
  end;
  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(Item: TListBoxItem; texto: String);

begin

end;

end.

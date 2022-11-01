unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    imgProdutos: TImage;
    imgCompradores: TImage;
    imgFornecedores: TImage;
    imgUnidadeMedida: TImage;
    imgPedidos: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imgFundo: TImage;
    procedure imgCompradoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores;

procedure TfrmPrincipal.imgCompradoresClick(Sender: TObject);
begin
  if not Assigned(frmCompredores) then
    frmCompredores := frmCompredores.Create(self);

    frmCompredores.Show;
end;

end.

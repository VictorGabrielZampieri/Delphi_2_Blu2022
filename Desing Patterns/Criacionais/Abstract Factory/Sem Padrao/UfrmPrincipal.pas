unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    cbx_marcas: TComboBox;
    btn_exibir: TButton;
    gbx_dados_notebook: TGroupBox;
    lblTamanhoTela: TLabel;
    lbl_MemoriaRam: TLabel;
    lblProcessador: TLabel;
    lblTamanhoHD: TLabel;
    gbx_dados_desktop: TGroupBox;
    procedure btn_exibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btn_exibirClick(Sender: TObject);
begin
  //Dados do Notebook
  if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Dell') then
  begin
    lblTamanhoTela.Caption := 'Tela de 14 polegadas';
    lbl_MemoriaRam.Caption := '3GB DDR3';
  end
  else if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Apple') then
  begin
   lblTamanhoTela.Caption := '11.6 polegadas';
   lbl_MemoriaRam.Caption := '4GB DDR3';
  end;

  //Dados desktop
  if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Dell') then
  begin
    lblProcessador.Caption := 'Intel Core i5';
    lblTamanhoHD.Caption   := '1 TB';
  end
  else if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Apple') then
  begin
    lblProcessador.Caption := 'Intel Core i7';
    lblTamanhoHD.Caption   := '500 GB';
  end;
end;

end.

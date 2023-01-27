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

uses
  UInterface, UDell, UApple;

{$R *.dfm}

procedure TfrmPrincipal.btn_exibirClick(Sender: TObject);
var
  xMarca: IFactoryMarca;
  xNotebook: INoteBook;
  xDesktop: IDesktop;
begin
  //Instancia a marca -> unico If da Aplicação
  if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Dell') then
  begin
    xMarca := TDell.Create;
  end
  else if (cbx_marcas.Items[cbx_marcas.ItemIndex] = 'Apple') then
  begin
   xMarca := TApple.Create;
  end;

  //Consulta (constroi) os objs
  xNotebook := xMarca.ConsultarNotebook;
  xDesktop := xMarca.ConsultarDesktop;

  //Exibe os Dados
  lblTamanhoTela.Caption := xNotebook.BuscarTamanhoTela;
  lbl_MemoriaRam.Caption := xNotebook.BuscarMemoriaRam;

  lblProcessador.Caption := xDesktop.BuscarNomeProcessador;
  lblTamanhoHD.Caption   := xDesktop.BuscarTamanhoHD;

  //Detalhe importante como usamos interface para as variaveis
  //Não precisamos destruir seus objs. O Delphi faz isso por nós
end;

end.

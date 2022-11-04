program Pedido;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompredores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmUnidadeMedidas in 'UfrmUnidadeMedidas.pas' {frmUnidadeMedidas},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProduto},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCompredores, frmCompredores);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmUnidadeMedidas, frmUnidadeMedidas);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmPedidos, frmPedidos);
  Application.Run;
end.

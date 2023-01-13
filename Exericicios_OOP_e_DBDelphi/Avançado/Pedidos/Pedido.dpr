program Pedido;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompredores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmUnidadeMedidas in 'UfrmUnidadeMedidas.pas' {frmUnidadeMedidas},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProduto},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos},
  UfrmRelUnidadeMedida in 'UfrmRelUnidadeMedida.pas' {frmRelUnidadeMedida},
  URelCompradores in 'URelCompradores.pas' {frmRelCompradores},
  UfrmRelProdutos in 'UfrmRelProdutos.pas' {frmRelProdutos},
  UfrmRelFornecedores in 'UfrmRelFornecedores.pas' {frmRelFornecedores},
  UfrmRelPedidos in 'UfrmRelPedidos.pas' {frmRelPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TfrmRelCompradores, frmRelCompradores);
  Application.CreateForm(TfrmRelProdutos, frmRelProdutos);
  Application.CreateForm(TfrmRelFornecedores, frmRelFornecedores);
  Application.CreateForm(TfrmRelPedidos, frmRelPedidos);
  Application.Run;
end.

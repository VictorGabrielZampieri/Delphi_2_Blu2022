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
  UfrmRelUnidadeMedida in 'UfrmRelUnidadeMedida.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

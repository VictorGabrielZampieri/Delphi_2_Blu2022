unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    lblLogradouro: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    edtCEP: TEdit;
    btnConsultarViaCep: TButton;
    btnConsultarCorreio: TButton;
    procedure btnConsultarViaCepClick(Sender: TObject);
    procedure btnConsultarCorreioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
   UTarget, UInterfaceViaCEP, UWebServiceViaCEP, UAdaptee, UAdapter;

{$R *.dfm}

procedure TfrmPrincipal.btnConsultarCorreioClick(Sender: TObject);
var
  xWebServiceCorreios: TWebServiceCorreios;
  xAdapte: IWebServiceViaCep;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  //Instancia o obj de consulta dos correios (adapter)
  xWebServiceCorreios := TWebServiceCorreios.Create;

  //Instanciao o adaptador (adpater)
  xAdapte := TAdapter.Create(xWebServiceCorreios);

  //Instacia o comunicador (Target), injetando o adaptador
  xComunicador := TComunicador.Create(xAdapte);

  xRetorno := TStringList.Create;
  try
      //O Target consulta o endereco (usltilizando o objeto injetado) e retorna os dados
      xRetorno := xComunicador.ConsultarEndereco(edtCEP.Text);

      lblLogradouro.Caption := xRetorno.Values['Logradouro'];
      lblBairro.Caption := xRetorno.Values['Bairro'];
     lblCidade.Caption := xRetorno.Values['cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
    FreeAndNil(xWebServiceCorreios);
  end;
end;

procedure TfrmPrincipal.btnConsultarViaCepClick(Sender: TObject);
var
  xWebServiceVaiCEP: IWebServiceViaCEP;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  //Instância o objeto da classe de consulta
  xWebServiceVaiCEP := TWebServiceViaCEP.Create;

  //Instância o comunicador (Target), injetando o objeto de consulta
  xComunicador := TComunicador.Create(xWebServiceVaiCEP);

  xRetorno := TStringList.Create;
  try
    //o target consulta o endereco (ultilizando o objeto injetado) e retorna os dados
    xRetorno := xComunicador.ConsultarEndereco(edtCEP.Text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption := xRetorno.Values['Bairro'];
    lblCidade.Caption := xRetorno.Values['cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
  end;
end;

end.

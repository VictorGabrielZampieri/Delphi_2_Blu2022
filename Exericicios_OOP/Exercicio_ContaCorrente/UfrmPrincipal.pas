unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TfrmPrincipal = class(TForm)
    btnCadastro: TButton;
    btnAlterarNome: TButton;
    btnDeposito: TButton;
    btnSaque: TButton;
    edtNumeroConta: TEdit;
    edtNomeUsuario: TEdit;
    edtSaldo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDeposito: TEdit;
    edtSaque: TEdit;
    edtNovoNome: TEdit;
    Label4: TLabel;
    mmExtrato: TMemo;
    btnSair: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnAlterarNomeClick(Sender: TObject);
    procedure btnSaqueClick(Sender: TObject);
    procedure btnDepositoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    FContaCorrente : TContaCorrente;
    procedure Cadastrar;
    procedure AlterarNome;
    procedure FazerDeposito;
    procedure FazerSaque;
    procedure Sair;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AlterarNome;
var
  xNovoNome : String;
begin
  xNovoNome := edtNovoNome.Text;
  FContaCorrente.AlterarNome(xNovoNome);
  edtNomeUsuario.Text := FContaCorrente.Nome;
  mmExtrato.Lines.Add('Nome Alterado Para: ' + xNovoNome);
  edtNovoNome.Text  := '';
end;

procedure TfrmPrincipal.btnAlterarNomeClick(Sender: TObject);
begin
  self.AlterarNome;
end;

procedure TfrmPrincipal.btnCadastroClick(Sender: TObject);
begin
  self.Cadastrar;
end;

procedure TfrmPrincipal.btnDepositoClick(Sender: TObject);
begin
  Self.FazerDeposito;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Self.Sair;
end;

procedure TfrmPrincipal.btnSaqueClick(Sender: TObject);
begin
  Self.FazerSaque;
end;

procedure TfrmPrincipal.Cadastrar;
var
  xNumero : Integer;
  xNome   : String;
  xSaldo  : Currency;
begin
  xNumero := StrToIntDef(edtNumeroConta.Text,0);
  xNome   := edtNomeUsuario.Text;
  if (TryStrToCurr(edtSaldo.Text, xSaldo))  then
  begin
    if (xSaldo > 0) then

      begin
        xSaldo := StrToCurr(edtSaldo.Text);
        FContaCorrente := TContaCorrente.Create(xNumero, xNome, xSaldo);
      end;
  end
  else
  begin
    edtSaldo.Text           := '0';
    FContaCorrente := TContaCorrente.Create(xNumero, xNome);
  end;

    btnSair.Visible         := True;
    btnDeposito.Visible     := True;
    btnSaque.Visible        := True;
    btnAlterarNome.Visible  := True;
    edtNovoNome.Visible     := True;
    edtSaque.Visible        := True;
    edtDeposito.Visible     := True;
    btnCadastro.Visible     := False;
    edtNumeroConta.ReadOnly := True;
    edtNomeUsuario.ReadOnly := True;
    edtSaldo.ReadOnly       := True;
end;

procedure TfrmPrincipal.FazerDeposito;
var
  xQntDeposito : Currency;
begin
  xQntDeposito    := StrToCurr(edtDeposito.Text);
  if (xQntDeposito >= 1) then
  begin
  FContaCorrente.Depositar(xQntDeposito);
  edtSaldo.Text := CurrToStr(FContaCorrente.Saldo);
  mmExtrato.Lines.Add('Foi Aplicado: ' + CurrToStr(xQntDeposito) + ' R$');
  end

  else
  ShowMessage('O Valor Do Deposito É Inválido!');
  edtDeposito.Text := '';
end;

procedure TfrmPrincipal.FazerSaque;
var
  xQntSaque : Currency;
begin
  xQntSaque    := StrToCurr(edtSaque.Text);
  if (FContaCorrente.Saldo > 0) and (xQntSaque <= FContaCorrente.Saldo) then
  begin
  FContaCorrente.Saque(xQntSaque);
  edtSaldo.Text := CurrToStr(FContaCorrente.Saldo);
  mmExtrato.Lines.Add('Foi Retirado: ' + CurrToStr(xQntSaque) + ' R$');
  end

  else
  ShowMessage('Você Não Possui Saldo Suficiente Para Realizar Essa Ação!');
  edtSaque.Text := '';
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FContaCorrente);
end;

procedure TfrmPrincipal.Sair;
begin
  FContaCorrente  := nil;

    edtNumeroConta.Text     := '';
    edtNomeUsuario.Text     := '';
    edtSaldo.Text           := '';
    btnSair.Visible         := False;
    btnDeposito.Visible     := False;
    btnSaque.Visible        := False;
    btnAlterarNome.Visible  := False;
    edtNovoNome.Visible     := False;
    edtSaque.Visible        := False;
    edtDeposito.Visible     := False;
    btnCadastro.Visible     := True;
    edtNumeroConta.ReadOnly := False;
    edtNomeUsuario.ReadOnly := False;
    edtSaldo.ReadOnly       := False;
    mmExtrato.Lines.Clear;
end;

end.

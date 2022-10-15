unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UPessoa;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    btnPessoaFisica: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btnPessoaJuridica: TButton;
    edtCpf_Cnpj: TEdit;
    edtIdade_Fie: TEdit;
    lblCpf_Cnpj: TLabel;
    lblIdade_Fie: TLabel;
    btnCadastrar: TButton;
    mmExibirPessoa: TMemo;
    btnExibir: TButton;
    btnNovaPessoa: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExibirClick(Sender: TObject);
    procedure btnPessoaFisicaClick(Sender: TObject);
    procedure btnPessoaJuridicaClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnNovaPessoaClick(Sender: TObject);
  private
    { Private declarations }
    TxPessoaFisica   : TPessoaFisica;
    TxPessoaJuridica : TPessoaJuridica;
    xControle : Boolean;
    procedure ExibirEditPessoaFisica(var aControle : Boolean);
    procedure ExibirEditPessoaJuridica(var aControle : Boolean);
    procedure Controle;
    procedure CadastrarPessoaFisica;
    procedure CadastrarPessoaJuridica;
    procedure Exibir;
    procedure LimparPessoas;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  Self.Controle;
end;

procedure TfrmPrincipal.btnExibirClick(Sender: TObject);
begin
  Self.Exibir;
end;

procedure TfrmPrincipal.btnNovaPessoaClick(Sender: TObject);
begin
  Self.LimparPessoas;
end;

procedure TfrmPrincipal.btnPessoaFisicaClick(Sender: TObject);
begin
  Self.ExibirEditPessoaFisica(xControle);
end;

procedure TfrmPrincipal.btnPessoaJuridicaClick(Sender: TObject);
begin
  Self.ExibirEditPessoaJuridica(xControle);
end;

procedure TfrmPrincipal.CadastrarPessoaFisica;
var
  xNome     : String;
  xEndereco : String;
  xCPF      : String;
  xIdade    : Byte;
  xValido   : Boolean;
begin
  xNome     := edtNome.Text;
  xEndereco := edtEndereco.Text;
  xCPF      := edtCpf_Cnpj.Text;
  xIdade    := StrToInt(edtIdade_Fie.Text);

  TxPessoaFisica := TPessoaFisica.Create;

    TxPessoaFisica.Nome     := xNome;
    TxPessoaFisica.Endereco := xEndereco;
    TxPessoaFisica.CPF      := xCPF;
    TxPessoaFisica.Idade    := xIdade;

    xValido := TxPessoaFisica.CPF_Valido;
    if not (xValido) then
    begin
      ShowMessage('CPF Invalido');
      Self.LimparPessoas;
    end
    else
    begin
    ShowMessage('Pessoa Cadastrada');
      btnCadastrar.Visible := false;
      btnPessoaFisica.Visible   := False;
      btnPessoaJuridica.Visible := False;
      btnNovaPessoa.Visible     := True;
    end;
end;

procedure TfrmPrincipal.CadastrarPessoaJuridica;
var
  xNome     : String;
  xEndereco : String;
  xCNPJ     : String;
  xFIE      : String;
  xValido   : Boolean;
begin
  xNome     := edtNome.Text;
  xEndereco := edtEndereco.Text;
  xCNPJ     := edtCpf_Cnpj.Text;
  xFIE      := edtIdade_Fie.Text;

  TxPessoaJuridica := TPessoaJuridica.Create;

    TxPessoaJuridica.Nome     := xNome;
    TxPessoaJuridica.Endereco := xEndereco;
    TxPessoaJuridica.CNPJ     := xCNPJ;
    TxPessoaJuridica.FIE      := xFIE;

   xValido := TxPessoaJuridica.CNPJ_Valido;
    if not (xValido) then
    begin
      ShowMessage('CNPJ Invalido');
      Self.LimparPessoas;
    end
    else
    begin
    ShowMessage('Pessoa Cadastrada!');
      btnCadastrar.Visible      := False;
      btnPessoaFisica.Visible   := False;
      btnPessoaJuridica.Visible := False;
      btnNovaPessoa.Visible     := True;
    end;
end;

procedure TfrmPrincipal.Controle;
begin
  if (xControle = True) then
  begin
    Self.CadastrarPessoaFisica;
  end

  else
  Begin
    Self.CadastrarPessoaJuridica;
  End;
  edtNome.Text      := '';
  edtEndereco.Text  := '';
  edtCpf_Cnpj.Text  := '';
  edtIdade_Fie.Text := '';
end;

procedure TfrmPrincipal.Exibir;
var
  xMensagem : String;
begin
    if (xControle = True) then
    begin
     xMensagem := TxPessoaFisica.Gravar(TxPessoaFisica);
     mmExibirPessoa.Lines.Add(xMensagem);
    end

    else
    begin
     xMensagem := TxPessoaJuridica.Gravar(TxPessoaJuridica);
     mmExibirPessoa.Lines.Add(xMensagem);
    end;

end;

procedure TfrmPrincipal.ExibirEditPessoaFisica;
begin
  lblCpf_Cnpj.Caption       := 'CPF : ';
  lblIdade_Fie.Caption      := 'Idade : ';
  edtCpf_Cnpj.Visible       := True;
  edtIdade_Fie.Visible      := True;
  lblCpf_Cnpj.Visible       := True;
  lblIdade_Fie.Visible      := True;
  btnCadastrar.Visible      := True;
  btnExibir.Visible         := True;
  btnPessoaJuridica.Visible := True;
  btnPessoaFisica.Visible   := False;
  mmExibirPessoa.Visible    := True;
  xControle := True;
end;

procedure TfrmPrincipal.ExibirEditPessoaJuridica;
begin
  lblCpf_Cnpj.Caption       := 'CNPJ : ';
  lblIdade_Fie.Caption      := 'FIE : ';
  edtCpf_Cnpj.Visible       := True;
  edtIdade_Fie.Visible      := True;
  lblCpf_Cnpj.Visible       := True;
  lblIdade_Fie.Visible      := True;
  btnCadastrar.Visible      := True;
  btnExibir.Visible         := True;
  mmExibirPessoa.Visible    := True;
  btnPessoaFisica.Visible   := True;
  btnPessoaJuridica.Visible := False;
  xControle                 := False;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(TxPessoaFisica);
   FreeAndNil(TxPessoaJuridica);
end;

procedure TfrmPrincipal.LimparPessoas;
begin
  FreeAndNil(TxPessoaFisica);
  FreeAndNil(TxPessoaJuridica);
  edtNome.Text              := '';
  edtEndereco.Text          := '';
  edtCpf_Cnpj.Text          := '';
  edtIdade_Fie.Text         := '';
  lblCpf_Cnpj.Caption       := 'CPF : ';
  lblIdade_Fie.Caption      := 'Idade : ';
  edtCpf_Cnpj.Visible       := False;
  edtIdade_Fie.Visible      := False;
  lblCpf_Cnpj.Visible       := False;
  lblIdade_Fie.Visible      := False;
  btnCadastrar.Visible      := False;
  btnExibir.Visible         := False;
  btnPessoaJuridica.Visible := True;
  btnPessoaFisica.Visible   := True;
  mmExibirPessoa.Visible    := False;
  btnNovaPessoa.Visible     := False;
end;

end.

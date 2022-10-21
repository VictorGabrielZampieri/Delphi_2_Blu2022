unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    lblAndar: TLabel;
    Label1: TLabel;
    cmAndares: TComboBox;
    btnSelecionar: TButton;
    lblPessoas: TLabel;
    Label3: TLabel;
    btnDescer: TButton;
    btnEntrar: TButton;
    btnCriarElevador: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure btnCriarElevadorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnDescerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FElevador : TElevador;

    procedure CriarElevador;
    procedure PopularAndares;
    procedure Subir;
    procedure Descer;
    procedure EntrarPessoas;
    procedure SairPessoas;
    procedure AbrirPorta;
    procedure FechaPorta;
    procedure Bloquear;
    procedure Liberar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.AbrirPorta;
begin
  while (Image2.Width > 97)  do
  begin
    Image2.Width := Image2.Width - 1;
  end;

  while (Image3.Width > 115) do
  begin
    Image3.Width := Image3.Width - 1;
  end;

   Image3.Left := 310;
end;

procedure TfrmPrincipal.Bloquear;
begin
    btnDescer.Enabled  := False;
    btnEntrar.Enabled  := False;
    Label3.Visible     := False;
    lblPessoas.Visible := False;
end;

procedure TfrmPrincipal.btnCriarElevadorClick(Sender: TObject);
begin
  Self.CriarElevador;
  Self.PopularAndares;
  ShowMessage('Elevador Instalado!!!');
  Self.Liberar;
end;

procedure TfrmPrincipal.btnDescerClick(Sender: TObject);
begin
  Self.AbrirPorta;
  Self.SairPessoas;
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
  Self.AbrirPorta;
  Self.EntrarPessoas;
end;

procedure TfrmPrincipal.btnSelecionarClick(Sender: TObject);
begin
  if (cmAndares.ItemIndex < FElevador.Andar_Atual) then
    Self.Descer
  else if (cmAndares.ItemIndex > FElevador.Andar_Atual) then
    Self.Subir
  else
    ShowMessage('Selecione um Andar diferente!');
end;

procedure TfrmPrincipal.CriarElevador;
var
  xCapacidade : Integer;
  xTotalAndares : Integer;
begin
  if not (TryStrToInt(inputBox('Capacidade' ,'Informe a Capaciadade Maxima de Pessoas no Elevador', ''), xCapacidade)) then
  begin
    raise Exception.Create('Valor Inválido na Capacidade de Pessoas');
  end
  else if not(TryStrToInt(inputBox('Andares' ,'Informe Quantos Andares o Prédio Possui', ''), xTotalAndares)) then
  begin
    raise Exception.Create('Valor Inválido na Capacidade de Pessoas');
  end
  else
  FElevador := TElevador.Create(xCapacidade, xTotalAndares);
end;

procedure TfrmPrincipal.Descer;
begin
  Self.FechaPorta;
  FElevador.Descer(cmAndares.ItemIndex);

  if (FElevador.Andar_Atual = 0) then
  begin
    lblAndar.Caption := 'Térreo';
  end
  else
  begin
    lblAndar.Caption := FElevador.Andar_Atual.ToString + 'º';
  end;
end;

procedure TfrmPrincipal.EntrarPessoas;
var
  xPessoasEntrando : Integer;
  xResposta : String;
begin
  xResposta := inputBox('Pessoas Entrando','Informe a Quantidade de Pessoas Que Vão Entrar','');
  if not (TryStrToInt(xResposta, xPessoasEntrando)) then
   raise Exception.Create('Valor Inválido');

  Self.FElevador.Entra(xPessoasEntrando);
  lblPessoas.Caption := FElevador.QuantidadePessoas.ToString;
end;

procedure TfrmPrincipal.FechaPorta;
begin
   while (Image2.Width < 161)  do
  begin
    Image2.Width := Image2.Width + 1;
  end;

  while (Image3.Width > 195) do
  begin
    Image3.Width := Image3.Width + 1;
  end;
  Image3.Left := 248;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FElevador);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Self.Bloquear;
end;

procedure TfrmPrincipal.Liberar;
begin
  if not(FElevador = nil) then
  begin
    btnDescer.Enabled        := True;
    btnEntrar.Enabled        := True;
    Label3.Visible           := True;
    lblPessoas.Visible       := True;
    btnCriarElevador.Visible := False;
  end;
end;

procedure TfrmPrincipal.PopularAndares;
var
  I : Integer;
begin
  for I := 0 to (FElevador.Total_Andares-1) do
  begin
    cmAndares.Items.Add((I+1).ToString + 'º Andar');
  end;
end;

procedure TfrmPrincipal.SairPessoas;
var
  xPessoasSaindo : Integer;
  xResposta : String;
begin
  xResposta := inputBox('Pessoas Saindo','Informe a Quantidade de Pessoas Que Vão Sair','');
  if not (TryStrToInt(xResposta, xPessoasSaindo)) then
   raise Exception.Create('Valor Inválido');

  Self.FElevador.Sair(xPessoasSaindo);
  lblPessoas.Caption := FElevador.QuantidadePessoas.ToString;
end;

procedure TfrmPrincipal.Subir;
begin
  Self.FechaPorta;
  FElevador.Sobe(cmAndares.ItemIndex);
  lblAndar.Caption := FElevador.Andar_Atual.ToString + 'º';
end;

end.

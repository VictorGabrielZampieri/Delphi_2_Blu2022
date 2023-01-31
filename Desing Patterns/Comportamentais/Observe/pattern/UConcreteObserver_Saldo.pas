unit UConcreteObserver_Saldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UObserver,
  UNotificacao;

type
  TfrmSaldo = class(TFrame, IObserver)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_creditos: TLabel;
    lbl_debitos: TLabel;
    lbl_saldo: TLabel;
  private
    { Private declarations }
    FCreditos: Real;
    FDebitos: Real;
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation


{$R *.dfm}

{ TfrmSaldo }

procedure TfrmSaldo.Atualizar(aNotificacao: TNotificacao);
var
  xSaldo: Real;
begin
  //Soma o valor da variavel conforme o tipo da operacao
  if aNotificacao.Operacao = 'Crédito' then
    FCreditos := FCreditos + aNotificacao.Valor
  else if aNotificacao.Operacao = 'Débito' then
   FDebitos := FDebitos + aNotificacao.Valor;

   //Calcula o saldo
   xSaldo := FCreditos - FDebitos;

   lbl_creditos.Caption := FormatFloat('###,##0.00', FCreditos);
   lbl_debitos.Caption := FormatFloat('###,##0.00', FDebitos);
   lbl_saldo.Caption := FormatFloat('###,##0.00', xSaldo);
end;

end.

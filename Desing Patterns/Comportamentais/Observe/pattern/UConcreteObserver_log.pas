unit UConcreteObserver_log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UNotificacao, UObserver;

type
  TfrmLog = class(TFrame, IObserver)
    lbl_log_operacoes: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation


{$R *.dfm}

{ TFrame2 }

procedure TfrmLog.Atualizar(aNotificacao: TNotificacao);
var
  xTextoLog: String;
begin
  xTextoLog := Format('Uma Operação de %s de %.2f foi adicionada', [aNotificacao.Operacao, aNotificacao.Valor]);
  Memo1.Lines.Add(xTextoLog);
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnPingPong: TButton;
    btnHello_World: TButton;
    lbl_Resultado: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnPingPongClick(Sender: TObject);
    procedure btnHello_WorldClick(Sender: TObject);
  private
    { Private declarations }
    procedure HelloWord;
    procedure PingPong;
    procedure TratarResposta;
  public
    { Public declarations }
    const SUCESSO : Integer = 200;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnHello_WorldClick(Sender: TObject);
begin
  Self.HelloWord;
end;

procedure TfrmPrincipal.btnPingPongClick(Sender: TObject);
begin
  Self.PingPong;
end;

procedure TfrmPrincipal.HelloWord;
begin
  RESTClient1.BaseURL := 'http://localhost:9090/helloworld';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TfrmPrincipal.PingPong;
begin
  RESTClient1.BaseURL := 'http://localhost:9090/ping';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TfrmPrincipal.TratarResposta;
begin
  if RESTResponse1.StatusCode = SUCESSO then
    lbl_Resultado.Caption := 'Resultado: '+ RESTResponse1.Content
  else
   lbl_Resultado.Caption := Format('Erro na Requisição: Status(%d)',[RESTResponse1.StatusCode]);
end;

end.

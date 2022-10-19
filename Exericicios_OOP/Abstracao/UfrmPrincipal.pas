unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UAviao, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnTremDePouso: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTremDePousoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAviao : TAviao;

    procedure CriarAviao;
    procedure Ligar;
    procedure Desligar;
    procedure Desacelerar;
    procedure Acelerar;
    procedure VirarLeme;
    procedure AlterarLeme;
    procedure AlterarTremDePouso;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

{ TfrmPrincipal }

procedure TfrmPrincipal.Acelerar;
begin
  ShowMessage(FAviao.Acelerar);
end;

procedure TfrmPrincipal.AlterarLeme;
var
  xAngulo : Double;
begin
  xAngulo := StrToFloat(inputBox('Angulo' ,'Para qual Altitude?', ''));
  ShowMessage(FAviao.AlterarLeme(xAngulo) + xAngulo.ToString);
end;

procedure TfrmPrincipal.AlterarTremDePouso;
begin
  if (btnTremDePouso.Caption = 'Subir Trem de Pouso') then
  begin
  ShowMessage(FAviao.SubirTremDePouso);
  btnTremDePouso.Caption := 'Descer Trem de Pouso';
  end
  else if (btnTremDePouso.Caption = 'Descer Trem de Pouso') then
  begin
   btnTremDePouso.Caption := 'Subir Trem de Pouso';
   ShowMessage(FAviao.AbaixarTremDePouso);
  end;
end;

procedure TfrmPrincipal.btnTremDePousoClick(Sender: TObject);
begin
 Self.AlterarTremDePouso;
end;

procedure TfrmPrincipal.CriarAviao;
begin
     FAviao := nil;
     FAviao := TAviao.Create;

     FAviao.Turbinas := 4;
     FAviao.Assentos := 30;
     FAviao.Cargo    := opCivil;
     FAviao.Modelo   := 'Andromeda-44v';
     FAviao.QuantidadeCombustivel := 40000;
     FAviao.Trem_De_Pouso := True;
end;

procedure TfrmPrincipal.Desacelerar;
begin
  ShowMessage(FAviao.Desacelerar);
end;

procedure TfrmPrincipal.Desligar;
begin
 ShowMessage(FAviao.Desligar);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FAviao);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Self.CriarAviao;
end;

procedure TfrmPrincipal.Ligar;
begin
  ShowMessage(FAviao.Ligar);
end;

procedure TfrmPrincipal.VirarLeme;
var
  xAngulo : Double;
begin
  xAngulo := StrToFloat(inputBox('Angulo' ,'Para qual Direção virar?', ''));
  ShowMessage(FAviao.VirarLeme(xAngulo) + xAngulo.ToString);
end;

end.

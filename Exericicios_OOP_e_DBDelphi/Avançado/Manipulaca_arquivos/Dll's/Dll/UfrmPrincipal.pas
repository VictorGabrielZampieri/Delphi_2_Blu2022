unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNomePc: TEdit;
    edtNomeUser: TEdit;
    edtDirSistema: TEdit;
    edtDirWindows: TEdit;
    edtDirTemp: TEdit;
    edtVersaoWindows: TEdit;
    btnInformacoes: TButton;
    procedure btnInformacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  UInforPC;

procedure TForm1.btnInformacoesClick(Sender: TObject);
begin
  edtNomePc.Text  := TInfoPC.ComputerName;
  edtNomeUser.Text  := TInfoPC.UserName;
  edtDirSistema.Text :=  TInfoPC.SystemDirectory;
  edtDirWindows.Text := TInfoPC.WindowsDirectory;
  edtDirTemp.Text := TInfoPC.TempPath;
  edtVersaoWindows.Text := TInfoPC.VersionEx;
end;

end.

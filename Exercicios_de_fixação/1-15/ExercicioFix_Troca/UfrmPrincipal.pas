unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtVariavel1: TEdit;
    edtVariavel2: TEdit;
    lblVar1: TLabel;
    lblVar2: TLabel;
    btnTroca: TButton;
    procedure btnTrocaClick(Sender: TObject);
  private
    { Private declarations }
    procedure TrocarValores(var aVariavel_A, aVariavel_B : String);
    procedure ExibirTroca;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnTrocaClick(Sender: TObject);
begin
  Self.ExibirTroca;
end;

procedure TfrmPrincipal.ExibirTroca;
var
  xVariavel_A, xVariavel_B : String;
begin
    xVariavel_A := edtVariavel1.Text;
    xVariavel_B := edtVariavel2.Text;

    lblVar1.Caption := xVariavel_A;
    lblVar2.Caption := xVariavel_B;

    self.TrocarValores(xVariavel_A, xVariavel_B);

    edtVariavel1.Text := xVariavel_A;
    edtVariavel2.Text := xVariavel_B;

    lblVar1.Visible := True;
    lblVar2.Visible := True;

end;

procedure TfrmPrincipal.TrocarValores(var aVariavel_A, aVariavel_B: String);
var
  xControle : String;
begin
    xControle := aVariavel_A;
    aVariavel_A := aVariavel_B;
    aVariavel_B := xControle;

end;

end.

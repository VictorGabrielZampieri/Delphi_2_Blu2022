unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Ufrm28, Ufrm29;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exercicio281: TMenuItem;
    Exercicio291: TMenuItem;
    Exercicio301: TMenuItem;
    procedure Exercicio281Click(Sender: TObject);
    procedure Exercicio291Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Exercicio281Click(Sender: TObject);
begin
  if frmExercicio28 = nil then
    frmExercicio28 := Tfrm28.Create(Self);

    frmExercicio28.Show;
end;

procedure TfrmPrincipal.Exercicio291Click(Sender: TObject);
begin
  if frm29 = nil then
    frm29 := Tfrm29.Create(Self);

    frm29.Show;
end;

end.

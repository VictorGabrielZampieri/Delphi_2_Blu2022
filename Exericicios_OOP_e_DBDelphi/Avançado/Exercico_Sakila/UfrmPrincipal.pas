unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    Relatrios2: TMenuItem;
    Exercicio021: TMenuItem;
    Exercicio022: TMenuItem;
    procedure Relatrios2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UfrmRelAtor;

{$R *.dfm}

procedure TfrmPrincipal.Relatrios2Click(Sender: TObject);
begin
 if not Assigned(frmRelAtor) then
    frmRelAtor := TfrmRelAtor.Create(self);

    frmRelAtor.Show;
end;

end.

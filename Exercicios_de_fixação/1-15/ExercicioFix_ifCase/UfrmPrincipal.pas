unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
   TNivel = (opEstagiario, opJunior, opPleno, opSenior);

  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    btnIf: TButton;
    btnCase: TButton;
    rgNivel: TRadioGroup;
    Label1: TLabel;
    procedure btnIfClick(Sender: TObject);
    procedure btnCaseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCaseClick(Sender: TObject);
var
  xNome : String;
begin
  xNome := edtNome.Text;

  case TNivel(rgNivel.ItemIndex) of

    opEstagiario:
    begin
      ShowMessage('Eu ' + xNome + ' sou do n?vel Estagi?rio.');
    end;

    opJunior:
    begin
      ShowMessage('Eu ' + xNome + ' sou do n?vel J?nior.');
    end;

    opPleno:
    begin
      ShowMessage('Eu ' + xNome + ' sou do n?vel Pleno.');
    end;

    opSenior:
    begin
      ShowMessage('Eu ' + xNome + ' sou do n?vel S?nior.');
    end;
  end;
end;

procedure TfrmPrincipal.btnIfClick(Sender: TObject);
begin
    if edtNome.Text = 'Victor' then
    ShowMessage('Sou eu. Presente.')
    else
    ShowMessage('N?o ? o Victor');
end;

end.

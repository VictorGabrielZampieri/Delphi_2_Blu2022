unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  USecoes;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var   //variavel global
  xCachorro: TCachorro;
begin
xCachorro := TCachorro.Create;

  try
  xCachorro.MeuSomEh;
  finally
   FreeAndNil(xCachorro);
  end;
end;

end.

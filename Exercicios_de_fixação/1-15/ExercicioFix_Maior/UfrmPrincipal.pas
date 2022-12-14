unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNumero: TEdit;
    btnVerificar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    function Verificar : boolean;
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  self.Exibir;
end;

procedure TfrmPrincipal.Exibir;
var
  xResultado : Boolean;
begin
  xResultado := Self.Verificar;

     if (xResultado ) then
     begin
       lblResultado.Caption := 'Sim';
       lblResultado.Visible := true;
     end
       else
      begin

         lblResultado.Caption := 'N?o';
          lblResultado.Visible := true;
      end;
end;

function TfrmPrincipal.Verificar: Boolean;
var
  xNumero : Double;
begin
  xNumero := StrToFloat(edtNumero.Text);

  if (xNumero > 10) then
  begin
     ShowMessage(xNumero.ToString + ' ? Maior que 10!');
     Result := true;
  end
  else
  begin
     ShowMessage(xNumero.ToString + ' N?o ? Maior que 10!');
     Result := false;
  end;
end;

end.

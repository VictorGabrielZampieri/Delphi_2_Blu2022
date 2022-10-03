unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumNumerosExtenso = (opUm = 1, opDois, opTres, opQuatro, opCinco);

  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnVerificar: TButton;
    lblResposta: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Exibir;
    function  VerificarNumero : String;
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
  xMensagem : String;
begin
  xMensagem := VerificarNumero;

  lblResposta.Visible := True;
  lblResposta.Caption := xMensagem;
end;

function TfrmPrincipal.VerificarNumero: String;
var
  xNumero : Integer;
begin

  if not (TryStrToInt(edtNumero.Text, xNumero)) then
    raise Exception.Create('Informe Um N�mero V�lido');

    if (xNumero >= 1) and (xNumero <= 5) then
    begin
      case TEnumNumerosExtenso(xNumero) of

       opUm :
       begin
         Result := 'Um';
       end;

       opDois :
       begin
         Result := 'Dois';
       end;

       opTres :
       begin
         Result := 'Tres';
       end;

       opQuatro :
       begin
          Result := 'Quatro';
       end;

       opCinco :
       begin
         Result := 'Cinco';
       end;
      end;
    end

    else
    begin
      ShowMessage('N�mero Inv�lido!');
      Result := 'N�mero Inv�lido!'
    end;
end;

end.

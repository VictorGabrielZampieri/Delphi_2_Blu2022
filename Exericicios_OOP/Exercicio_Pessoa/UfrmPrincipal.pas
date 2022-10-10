unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    edtData: TEdit;
    edtAltura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCadastrar: TButton;
    mmDadosPessoais: TMemo;
    Label4: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Principal;
    procedure ExibirDados;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UPessoa;

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  self.Principal;
end;

procedure TfrmPrincipal.ExibirDados;
begin

end;

procedure TfrmPrincipal.Principal;
var
  xPessoa: TPessoa;
  xInformações : String;
  xIdade : Double;
begin
  xPessoa := TPessoa.Create;

  try
    xPessoa.Nome := edtNome.Text;
    xPessoa.DataNascimento := StrToDate(edtData.Text);
    xPessoa.Altura := StrToFloat(edtAltura.Text);

    xIdade := xPessoa.CalcularIdade;
    xInformações := xPessoa.ExibirDados;
    mmDadosPessoais.Lines.Add(xInformações + ', e a Minha Idade é : '+ FloatToStr(xIdade)+ ' Anos.');
  finally
    FreeAndNil(xPessoa);
  end;
end;

end.

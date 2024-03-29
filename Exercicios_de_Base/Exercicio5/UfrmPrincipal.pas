unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAnimal = (tpCachorro, tpPassaro, tpGato, tpPeixe);

  TfrmPrincipal = class(TForm)
    btProcessar: TButton;
    cmbAnimal: TComboBox;
    Label1: TLabel;
    mmHistorico: TMemo;
    Button1: TButton;
    procedure btProcessarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure QueAnimalSouEu;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btProcessarClick(Sender: TObject);
begin
 { case cmbAnimal.ItemIndex of
  0: //cachorro
  begin
    mmHistorico.Lines.Add('Sou um cachorro e tenho 4 patas.');
  end;
  1: //P�ssaro
begin
    mmHistorico.Lines.Add('Sou um p�ssaro e tenho duas patas.');
end;
  2: //Gato
  begin
    mmHistorico.Lines.Add('Sou um gato e tenho 4 patas.');
  end;
  3: //Peixe
  begin
    mmHistorico.Lines.Add('Sou um peixe e possuo nadadeiras.');
  end;
  else //sem defini��o
  begin
    mmHistorico.Lines.Add('N�o foi definido nenhum animal.');
  end;

     end;  }

     QueAnimalSouEu;//chamando a func��o quanto apertar o botao
end;



procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  mmHistorico.Lines.Clear;
  cmbAnimal.Text := '';
end;

procedure TfrmPrincipal.QueAnimalSouEu;
var
xFrase: String;
begin
  case TAnimal (cmbAnimal.ItemIndex) of
  tpCachorro:
  begin
    xfrase := 'Sou um cachorro e tenho 4 patas.';
  end;
  tpPassaro:
begin
   xfrase :=  'Sou um p�ssaro e tenho duas patas.';
end;
  tpGato:
  begin
   xfrase := 'Sou um gato e tenho 4 patas.';
  end;
  tpPeixe:
  begin
   xfrase := 'Sou um peixe e possuo nadadeiras.';
  end;
  else
  begin
   xfrase := 'N�o foi definido nenhum animal.';
  end;
end;
        mmHistorico.Lines.Add(xFrase);
end;
end.

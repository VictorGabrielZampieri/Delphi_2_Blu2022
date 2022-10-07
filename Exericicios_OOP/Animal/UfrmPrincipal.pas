unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TfrmPrincipal = class(TForm)
    cbAnimais: TComboBox;
    Label1: TLabel;
    btnQueSom: TButton;
    procedure btnQueSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UAnimais;


{$R *.dfm}

procedure TfrmPrincipal.btnQueSomClick(Sender: TObject);
var
  xAnimal: TAnimal;
begin
   xAnimal  := nil;

   try
     case TEnumAnimal(cbAnimais.ItemIndex) of
        opCachorro:
         xAnimal  :=  TCachorro.Create;
        opGato:
         xAnimal  := TGato.Create;
        opPato:
         xAnimal  := TPato.Create;
     end;

      ShowMessage(xAnimal.RetornarSom);
      ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' Patas.')
   finally
       FreeAndNil(xAnimal);
   end;
end;

end.

unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtCelsius: TEdit;
    btnConverter: TButton;
    lblTemperatura: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConverterCelsiusFaherenheit;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnConverterClick(Sender: TObject);
begin
  self.ConverterCelsiusFaherenheit;
end;

procedure TfrmPrincipal.ConverterCelsiusFaherenheit;
var
  xCelsius, xFaherenheit : Double;
begin
   xCelsius := StrToFloat(edtCelsius.Text);

   xFaherenheit := ((9 * xCelsius +160) / 5);

   lblTemperatura.Caption := FormatFloat('0.00', xFaherenheit) + ' �';
end;

end.

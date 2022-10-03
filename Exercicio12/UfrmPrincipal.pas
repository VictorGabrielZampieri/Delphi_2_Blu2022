unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  FDayTemperatures = array [1..31] of Integer;
   //TMontTemps = array [1..31] of TFDayTemperatures;
   //TMatrizDinamica = array of string;

  TfrmPrincipal = class(TForm)
    edtDia: TEdit;
    edtTemperatura: TEdit;
    mmHistorico: TMemo;
    btnGravar: TButton;
    btnConsultar: TButton;
    procedure btnGravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    FDayTemperatures: FDayTemperatures;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}



procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
var
  xDia: Integer;
  xTemperatura: Integer;
begin
  xDia := StrToIntDef(edtDia.Text, 0);
  xTemperatura := StrToIntDef(edtTemperatura.Text, 0);

  FDayTemperatures[xDia] := xTemperatura;
end;

 procedure TfrmPrincipal.btnConsultarClick(Sender: TObject);
var
  I: Integer;
begin
   mmHistorico.Lines.Clear;

   for I := 1 to Length(FDayTemperatures) do
   begin
     if FDayTemperatures[I] > 0 then
        mmHistorico.Lines.Add('Dia ' + IntToStr(I)+
                              ' fez ' + IntToStr(FDayTemperatures[I]) +
                              ' graus.');
   end;
end;

end.

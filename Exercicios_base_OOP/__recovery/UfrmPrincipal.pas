unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblRespostaX: TLabel;
    lblRespostaY: TLabel;
    lblRespostaMaior: TLabel;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    edtXa: TEdit;
    edtXb: TEdit;
    edtXc: TEdit;
    edtYa: TEdit;
    edtYb: TEdit;
    edtYc: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure Principal;
    function CalcularAreaX : Double;
    function CalcularAreaY : Double;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  self.Principal;
end;

function TfrmPrincipal.CalcularAreaX: Double;
var
  xMedidaA, xMedidaB, xMedidaC, xArea, xP : Double;
begin
  if (TryStrToFloat(edtXa.Text, xMedidaA)) and (TryStrToFloat(edtXb.Text, xMedidaB)) and (TryStrToFloat(edtXc.Text, xMedidaC)) then
    begin
      xP := (xMedidaA + xMedidaB + xMedidaC)/2;
      xArea := Sqrt(xP*(xP-xMedidaA)*(xP-xMedidaB)*(xP-xMedidaC));
      Result := xArea;
    end

    else
      Result := 0;
end;

function TfrmPrincipal.CalcularAreaY: Double;
var
  xMedidaA, xMedidaB, xMedidaC, xArea, xP : Double;
begin
  if (TryStrToFloat(edtYa.Text, xMedidaA)) and (TryStrToFloat(edtYb.Text, xMedidaB)) and (TryStrToFloat(edtYc.Text, xMedidaC)) then
    begin
      xP := (xMedidaA + xMedidaB + xMedidaC)/2;
      xArea := Sqrt(xP*(xP-xMedidaA)*(xP-xMedidaB)*(xP-xMedidaC));
      Result := xArea;
    end

    else
      Result := 0;
end;

procedure TfrmPrincipal.Principal;
var
  xAreaX, xAreaY : Double;
begin
  xAreaX := self.CalcularAreaX;
  xAreaY := self.CalcularAreaY;

  if (xAreaX > xAreaY) then
  lblRespostaMaior.Caption := 'A área do Trinagulo X é Maior.'
  else if (xAreaY > xAreaX) then
  lblRespostaMaior.Caption := 'A área do Trinagulo Y é Maior.'
  else
  lblRespostaMaior.Caption := 'Ambas as Áreas são iguais.';

   lblRespostaX.Caption := 'Triangulo X Área' + FormatFloat('#,##0.00',xAreaX);
   lblRespostaY.Caption := 'Triangulo Y Área' + FormatFloat('#,##0.00',xAreaY);

end;

end.

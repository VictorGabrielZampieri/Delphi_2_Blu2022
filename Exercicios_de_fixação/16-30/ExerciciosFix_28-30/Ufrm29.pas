unit Ufrm29;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumMeses  = (opJaneiro, opFevereiro, opMarço, opAbril, opMaio, opJunho, opJulho, opAgosto, opSetembro, opOutubro, opNovembro, opDezembro);
  TArrayMeses = Array[0..12] of String;

  Tfrm29 = class(TForm)
    edtMes: TEdit;
    Label1: TLabel;
    lblResultado: TLabel;
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Controle;
    function  PopularArrayMeses : TArrayMeses;
    function  RetornaMesExtenso(aArrayMeses : TArrayMeses) : String;
  public
    { Public declarations }
  end;

var
  frm29: Tfrm29;

implementation

{$R *.dfm}

{ Tfrm29 }

procedure Tfrm29.btnExecutarClick(Sender: TObject);
begin
  self.Controle;
end;

procedure Tfrm29.Controle;
var
  xArrayMeses : TArrayMeses;
  xMes : String;
begin
   xArrayMeses := self.PopularArrayMeses;
   xMes := self.RetornaMesExtenso(xArrayMeses);
   lblResultado.Visible := True;
   lblResultado.Caption := xMes;
end;

function Tfrm29.PopularArrayMeses: TArrayMeses;
var
  xArrayMeses : TArrayMeses;
begin
  xArrayMeses[0] := 'Mês Inválido';
  xArrayMeses[1] := 'Janeiro';
  xArrayMeses[2] := 'Fevereiro';
  xArrayMeses[3] := 'Março';
  xArrayMeses[4] := 'Abril';
  xArrayMeses[5] := 'Maio';
  xArrayMeses[6] := 'Junho';
  xArrayMeses[7] := 'Julho';
  xArrayMeses[8] := 'Agosto';
  xArrayMeses[9] := 'Setembro';
  xArrayMeses[10] := 'Outubro';
  xArrayMeses[11] := 'Novembro';
  xArrayMeses[12] := 'Dezembro';

  Result := xArrayMeses;
end;

function Tfrm29.RetornaMesExtenso(aArrayMeses: TArrayMeses): String;
var
  xEdtResposta : Integer;
begin
  TryStrToInt(edtMes.Text, xEdtResposta);

  case TEnumMeses(xEdtResposta-1) of
    opJaneiro :
      Result := aArrayMeses[xEdtResposta];

    opFevereiro :
      Result := aArrayMeses[xEdtResposta];

    opMarço :
      Result := aArrayMeses[xEdtResposta];

    opAbril :
      Result := aArrayMeses[xEdtResposta];

    opMaio :
      Result := aArrayMeses[xEdtResposta];

    opJunho :
      Result := aArrayMeses[xEdtResposta];

    opJulho :
      Result := aArrayMeses[xEdtResposta];

    opAgosto :
      Result := aArrayMeses[xEdtResposta];

    opSetembro :
      Result := aArrayMeses[xEdtResposta];

    opOutubro :
      Result := aArrayMeses[xEdtResposta];

    opNovembro :
      Result := aArrayMeses[xEdtResposta];

    opDezembro :
      Result := aArrayMeses[xEdtResposta];

    else
      Result := aArrayMeses[0];

  end;
end;

end.

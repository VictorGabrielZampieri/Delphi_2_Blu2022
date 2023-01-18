unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TKey<T> = class
  private
    FKey: String;
    FValue: T;
    procedure SetKey(const Value: String);
    procedure SetValue(const Value: T);

  published
    property Key : String read FKey write SetKey;
    property Value : T read FValue write SetValue;
  end;
  TfrmPrincipal = class(TForm)
    btnInteracao: TButton;
    procedure btnInteracaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TKey<T> }

procedure TKey<T>.SetKey(const Value: String);
begin
  FKey := Value;
end;

procedure TKey<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

procedure TfrmPrincipal.btnInteracaoClick(Sender: TObject);
var
  xKV: TKey<TForm>;
  xKV2: TKey<TButton>;
begin
  xKV := TKey<TForm>.Create;
  xKV2 := TKey<TButton>.Create;

  try
    xKV.Key     := 'Form_1';
    xKV.Value   := Self;

    xKV2.Key    := 'Btn_1';
    xKV2.Value  := Sender as TButton;

    ShowMessage(xKV.Key + ' - ' + xKV.Value.Name);
    ShowMessage(xKV2.Key + ' - ' + xKV2.Value.Name);
  finally
    xKV.Free;
    xKV2.Free;
  end;
end;

end.

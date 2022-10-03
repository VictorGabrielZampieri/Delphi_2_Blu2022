unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btnReplace: TButton;
    btnTrim: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnReplaceClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  buttonSelected  : Integer;
begin
   buttonSelected := MessageDlg('Confirmação', mtError, mbOKCancel, 0);

   if buttonSelected = mrOk       then ShowMessage('Ok Pressionado');
   if buttonSelected =  mrCancel  then ShowMessage('Cancel Pressionado');

end;

procedure TForm1.btn2Click(Sender: TObject);
var
  buttonSelected  : Integer;
begin
  buttonSelected  :=  MessageDlg('Dialogo Costumizado', mtCustom, [mbYes, mbAll, mbCancel], 0);

   if buttonSelected = mrYes    then ShowMessage('Yes Pressionado');
   if buttonSelected = mrAll    then ShowMessage('All Pressionado');
   if buttonSelected = mrCancel then ShowMessage('Cancel Pressionado');
end;

procedure TForm1.btnReplaceClick(Sender: TObject);
var
  before, after : String;
begin
 before :=  'This is a way to live A big life';

 after  :=  StringReplace(before, ' a ', ' THE ', [rfReplaceAll, rfIgnoreCase]);

 ShowMessage('Before = ' + before);
 ShowMessage('After = ' + after);
end;

procedure TForm1.btnTrimClick(Sender: TObject);
const
  PaddeString = '   Letters    ';
begin
  ShowMessage('[' + PaddeString             + ']');
  ShowMessage('[' + TrimLeft(PaddeString)   + ']');
  ShowMessage('[' + TrimRight(PaddeString)  + ']');
  ShowMessage('[' + Trim(PaddeString)       + ']');
end;

end.

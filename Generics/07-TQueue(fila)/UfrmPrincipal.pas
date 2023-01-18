unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    btnEnqueue: TButton;
    btnDequeue: TButton;
    btnExtract: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnCount: TButton;
    btnCapacity: TButton;
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnDequeueClick(Sender: TObject);
    procedure btnEnqueueClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFila: TQueue<String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Capacity.ToString);
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Count.ToString);
end;

procedure TForm1.btnDequeueClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Dequeue);
end;

procedure TForm1.btnEnqueueClick(Sender: TObject);
begin
  FFila.Enqueue(Edit1.Text);
end;

procedure TForm1.btnExtractClick(Sender: TObject);
begin
  //Mesmo comportamento do Dequeue a diferen�a que vc pode capturar a a��o no notify
  Memo1.Lines.Add(FFila.Extract);
end;

procedure TForm1.btnPeekClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Peek);
end;

procedure TForm1.btnTrimExcessClick(Sender: TObject);
begin
  FFila.TrimExcess;
  Memo1.Lines.Add(FFila.Capacity.ToString);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FFila.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FFila := TQueue<String>.Create;
end;

end.

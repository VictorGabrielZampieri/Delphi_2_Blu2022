unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    rect_fundo_tab: TRectangle;
    lyt_tab1: TLayout;
    img_capa1: TImage;
    lyt_jogadores: TLayout;
    rect_morango: TRectangle;
    rect_banana: TRectangle;
    FlowLayout1: TFlowLayout;
    img_morango: TImage;
    img_banana: TImage;
    Layout2: TLayout;
    rect_deu_velha: TRectangle;
    rect_parabens: TRectangle;
    rect_game_over: TRectangle;
    rect_fundo_tab2: TRectangle;
    lyt_tab2: TLayout;
    Layout4: TLayout;
    img_capa2: TImage;
    Flowlayout2: TFlowLayout;
    rect_1_1: TRectangle;
    rect_1_2: TRectangle;
    rect_1_3: TRectangle;
    rect_2_1: TRectangle;
    rect_2_2: TRectangle;
    rect_2_3: TRectangle;
    rect_3_1: TRectangle;
    rect_3_2: TRectangle;
    rect_3_3: TRectangle;
    ShadowEffect1: TShadowEffect;
    img_1_1: TImage;
    img_2_3: TImage;
    img_1_2: TImage;
    img_1_3: TImage;
    img_2_1: TImage;
    img_2_2: TImage;
    img_3_1: TImage;
    img_3_2: TImage;
    img_3_3: TImage;
    img_jogador: TImage;
    img_computador: TImage;
    rec_fim_jogo: TRectangle;
    rect_progresso: TRectangle;
    procedure FormShow(Sender: TObject);

    procedure OnClickJogador(Sender : TObject);
    procedure OnClickSelecioneJogador(Sender : TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
   FJogoVelha : TJogoVelha;

    procedure MarcarJogadorComputador(const aCoordenadas: String);
    procedure ReiniciarJogo;
    procedure AnimarFimJogo(const aRetangulo: TRectangulo);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}


procedure TfrmPrincipal.OnClickJogador(Sender : TObject);
var
  xposicao: Integer;
  xCoordenadas : String;
  xLinha: Byte;
  xColuna: Byte;
  xRetangulo: TRectangle;
  xImagem : TImage;
begin
  xRetangulo := (Sender as TRectangle);

  xPosicao     := Pos('_', xRetangulo.Name);
  xCoordenadas := Copy(xRetangulo.Name, xposicao + 1, Length(xRetangulo.Name));

  xLinha  := StrToInt(Copy(xCoordenadas, 1 ,1));
  xColuna := StrToInt(Copy(xCoordenadas, 3 ,1));

  FJogoVelha.RealizarJogada(TJogador.tpPlayer1, xLinha, xColuna);

  xImagem         := TImage(FindComponent('img_' + xCoordenadas));
  xImagem.Bitmap  := img_jogador.Bitmap;
  xImagem.Visible := True;

  xRetangulo.HitTest := False;

  FJogoVelha.VerificarFimDoJogo(TJogador.tpPlayer);

  if (not FjogoVelha.FimJogo) and (FJogoVelha.Jogadas < 5) then
  begin
      xCoordenadas := FJogoVelha.JogadaComputador;
      Self.MarcarJogadaComputador(xCoordenadas);

      FJogoVelha.VerificarFimJogo(TJogador.tpCpu);

      if (FJogoVelha.FimJogo) then
        Self.AnimarFimJogo(rect_game_over);
    end
    else
    begin
      if (FJogoVelha.Jogadas < 5) or (FJogoVelha.FimJogo) then
        self.AnimarFimJogo(rect_parabens)
      else
        Self.Self.AnimarFimJogo(rect_deu_velha);

  end;
end;

procedure TfrmPrincipal.OnClickSelecioneJogador(Sender : TObject);
var
  xPosicao: Integer;
  xRetangulo : String;
  xJogador: String;
begin
  TabControl1.ActiveTab := TabItem2;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao   := Pos('_', xRetangulo);
  xJogador   := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if (xJogador = 'morango') then
  begin
    img_jogador.Bitmap    := img_morango.Bitmap;
    img_computador.Bitmap := img_banana.Bitmap;
  end
  else //banana
  begin
    img_jogador.Bitmap    := img_banana.Bitmap;
    img_computador.Bitmap := img_morango.Bitmap;
  end;
end;

procedure TfrmPrincipal.AnimarFimJogo(const aRetangulo: TRectangulo);
begin
  rec_fim_jogo.Visible := True;
  rect_progresso.Width := 20;

  aRetangulo.Opacity := 0;
  aRetangulo.Visible := True;

  TTheread.CreateAnonymousThread(procedure
  begin
    TThread.Synchronize(nil, procedure
    begin
      aRetangulo.AnimateFloat('Opacity', 1, 0.3);
    end);
  end).Start;

  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(450);

    while (rect_progresso.Width < rec_fim_jogo.Width) do
    begin
        TThread.Synchronize(nil, procedure
        begin
          rect_progresso.AnimateFloat('width', rect_progresso.Width + 50, 0.3);
        end);

        Sleep(150);
    end;

    TThread.Synchronize(nil, procedure
    begin
      aRetangulo.Visible   := False;
      rec_fim_jogo.Visible := False;

      Self.ReiniciarJogo;
    end);
  end).Start;
end;

procedure TfrmPrincipal.ReiniciarJogo;
var
  I : Integer;
begin
  TabControl1.ActiveTab := TabItem1;

  for I := 0 to Pred(Self.ComponentCount) do
    begin
      if (Self.Components[I] is TRectangle) and (Self.Components[I].Tag > 0) then
        TRectangle(Self.Components[I]).HitTest := True;

      if (Self.Components[I] is TImage) and (Self.Components[I].Tag > 0) then
        TImage(Self.Components[I]).BitMap := nil;
    end;

    FJogoVelha.ReiniciarJogo;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FjogoVelha.DisposeOf;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FJogoVelha := TJogoVelha.Create;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab   := TabItem1;
end;

procedure TfrmPrincipal.MarcarJogadorComputador(const aCoordenadas: String);
var
  xLinha, xColuna : Byte;
  xRetangulo : TRectangle;
  xImagem : TImage;
begin
  xLinha := StrToInt(Copy(aCoordenadas, 1 , 1));
  xColuna := StrToInt(Copy(aCoordenadas, 3, 1));

  FJogoVelha.RealizarJogada(TJogador.tpCpu, xLinha, xColuna);

  xRetangulo := TRectangle(FindComponent('rect_'+ aCoordenadas));

  if Assigned(xRetangulo) then
  begin
      xImagem         := TImage(FindComponent('img_'+ aCoordenadas));
      xImagem.Bitmap  := img_computador.Bitmap;
      xImagem.Visible := True;

      xRetangulo.HitTest := False;
  end;
end;

end.

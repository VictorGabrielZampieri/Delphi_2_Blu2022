unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UBombaCombustivel;

type
  TEnumTipoCombustivel = (opGasolina, opAlchool, opDisel);
  TfrmPrincipal = class(TForm)
    btnPrimeiraBomba: TButton;
    btnSegundaBomba: TButton;
    btnTerceiraBomba: TButton;
    btnQuartaBomba: TButton;
    edtValorLitro: TEdit;
    edtQuantidadeCombustivel: TEdit;
    edtAbastecerPValor: TEdit;
    edtAbastecerPLitro: TEdit;
    lblAbastecerPorValor: TLabel;
    lblAbastecerPorLitro: TLabel;
    cmTiposCombustiveis: TComboBox;
    lblValorLitro: TLabel;
    lblQuantidadeCombustivel: TLabel;
    btnCadastrar: TButton;
    mmBomba: TMemo;
    btnAbastecer: TButton;
    btnConfiguracoes: TButton;
    btnAbastecerCarro: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrimeiraBombaClick(Sender: TObject);
    procedure btnAbastecerClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnSegundaBombaClick(Sender: TObject);
    procedure btnTerceiraBombaClick(Sender: TObject);
    procedure btnQuartaBombaClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnAbastecerCarroClick(Sender: TObject);
  private
    { Private declarations }

    //Variaveis Globais
    FPrimeira_Bomba : TBomba;
    FSegunda_Bomba  : TBomba;
    FTerceira_Bomba : TBomba;
    FQuarta_Bomba   : TBomba;
    FControle : Integer;
    ////////////////////////

    //porcedure de controle das 4 bombas e se a bomba esta cadastrada
    procedure ZAlterarBotaoCadastra;
    function  ZControleExistenciaBomba : Boolean;
    procedure ZPrimeiraBomba(var FControle : Integer);
    procedure ZSegundaBomba(var FControle : Integer);
    procedure ZTerceiraBomba(var FControle : Integer);
    procedure ZQuartaBomba(var FControle : Integer);
    ////////////////////////////////////////////////

     //Cadastro, tipo de combustivel e atualizão da classe Bomba, e abastecimento
     function  RetornarTipo : String;
     procedure Cadastrar;
     procedure Atualizar;
     procedure AbastecerCarro;
     ///////////////////

    //Exibicao
    procedure LimparFormulario;
    procedure ExibirOpcoes;
    procedure ExibirCadastro;
    procedure ExibirAbastecimento;
    procedure ExibirAtributosMemo;
    //////////////////////////////
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Cadastrar;
var
  xTipo : String;
  xValor : Currency;
  xQuantidade : Double;
begin

  if (btnCadastrar.Caption = 'Cadastrar') then
  begin
  xTipo := Self.RetornarTipo;
  xValor := StrToCurr(edtValorLitro.Text);
  xQuantidade := StrToFloat(edtQuantidadeCombustivel.Text);

   if (FControle = 1) then //Bomba 1
   begin
     FPrimeira_Bomba := nil;
     FPrimeira_Bomba := TBomba.Create;

     FPrimeira_Bomba.Tipo_Combustivel         := xTipo;
     FPrimeira_Bomba.Valor_Combustivel        := xValor;
     FPrimeira_Bomba.Quantidade_Combustivel   := xQuantidade;
        btnPrimeiraBomba.Caption := 'Bomba 1';
   end

   else if (FControle = 2) then //Bomba 2
        begin
           FSegunda_Bomba := nil;
           FSegunda_Bomba := TBomba.Create;

           FSegunda_Bomba.Tipo_Combustivel         := xTipo;
           FSegunda_Bomba.Valor_Combustivel        := xValor;
           FSegunda_Bomba.Quantidade_Combustivel   := xQuantidade;
           btnSegundaBomba.Caption := 'Bomba 2';
        end

   else if (FControle = 3) then //Bomba 3
         begin
           FTerceira_Bomba := nil;
           FTerceira_Bomba := TBomba.Create;

           FTerceira_Bomba.Tipo_Combustivel         := xTipo;
           FTerceira_Bomba.Valor_Combustivel        := xValor;
           FTerceira_Bomba.Quantidade_Combustivel   := xQuantidade;
           btnTerceiraBomba.Caption := 'Bomba 3';
        end

   else if (FControle = 4) then //Bomba 4
        begin
          FQuarta_Bomba := nil;
          FQuarta_Bomba := TBomba.Create;

          FQuarta_Bomba.Tipo_Combustivel         := xTipo;
          FQuarta_Bomba.Valor_Combustivel        := xValor;
          FQuarta_Bomba.Quantidade_Combustivel   := xQuantidade;
          btnQuartaBomba.Caption := 'Bomba 4';
        end;
        Self.ZAlterarBotaoCadastra;
        Self.ExibirAtributosMemo;
        ShowMessage('Bomba Cadastrada!');
  end

  else
    begin
      Self.Atualizar;
      Self.ExibirAtributosMemo;
      ShowMessage('Bomba Atualizada!');
    end;
end;

procedure TfrmPrincipal.AbastecerCarro;
var
  xValor, xValorAPagar : Currency;
  xLitro, xLitrosParaCarro: Double;
begin

if (edtAbastecerPValor.Text = '') and (edtAbastecerPLitro.Text = '') then
    raise Exception.Create('Não foi informado nenhum valor para abastecer!!!');

  xLitrosParaCarro := 0;
  xValorAPagar := 0;
  if (edtAbastecerPLitro.Text <> '') and (TryStrToFloat(edtAbastecerPLitro.Text, xLitro)) then
  begin
  if (FControle = 1) And (btnPrimeiraBomba.Caption = 'Bomba 1') then
   xValorAPagar := FPrimeira_Bomba.AbastecerPorLitro(xLitro)

  else if (FControle = 2) And (btnSegundaBomba.Caption = 'Bomba 2') then
   xValorAPagar := FSegunda_Bomba.AbastecerPorLitro(xLitro)

  else if (FControle = 3) And (btnTerceiraBomba.Caption = 'Bomba 3') then
   xValorAPagar := FTerceira_Bomba.AbastecerPorLitro(xLitro)

  else if (FControle = 4) And (btnQuartaBomba.Caption = 'Bomba 4') then
   xValorAPagar := FQuarta_Bomba.AbastecerPorLitro(xLitro);
  end;

  if (edtAbastecerPValor.Text <> '') and (TryStrToCurr(edtAbastecerPValor.Text, xValor)) then
  begin
  if (FControle = 1) And (btnPrimeiraBomba.Caption = 'Bomba 1') then
   xLitrosParaCarro := FPrimeira_Bomba.AbastecerPorValor(xValor)

  else if (FControle = 2) And (btnSegundaBomba.Caption = 'Bomba 2') then
   xLitrosParaCarro := FSegunda_Bomba.AbastecerPorValor(xValor)

  else if (FControle = 3) And (btnTerceiraBomba.Caption = 'Bomba 3') then
   xLitrosParaCarro := FTerceira_Bomba.AbastecerPorValor(xValor)

  else if (FControle = 4) And (btnQuartaBomba.Caption = 'Bomba 4') then
   xLitrosParaCarro := FQuarta_Bomba.AbastecerPorValor(xValor);
  end;

  Self.ExibirAtributosMemo; //Altualizar o memo
  if (xLitro > 0) then
  begin
    xValor := xValor + xValorAPagar;
    mmBomba.Lines.Add('O Cliente Pagou '+ CurrToStr(xValor) +' R$');
  end;
  if (xValor > 0) then
  begin
    xLitro := xLitro + xLitrosParaCarro;
    mmBomba.Lines.Add('O Cliente encheu '+ xLitro.ToString +' Litros');
  end;

end;

procedure TfrmPrincipal.Atualizar;
var
  xTipo : String;
  xValor : Currency;
  xQuantidade : Double;
begin
  xTipo := Self.RetornarTipo;
  xValor := StrToCurr(edtValorLitro.Text);
  xQuantidade := StrToFloat(edtQuantidadeCombustivel.Text);

  if (FControle = 1) then //Bomba 1
      begin
      FPrimeira_Bomba.AlterarCombustivel(xTipo);
      FPrimeira_Bomba.AlterarValor(xValor);
      FPrimeira_Bomba.AlterarQuantidadeCombustivel(xQuantidade);
      end

    else if (FControle = 2) then //Bomba 2
          begin
            FSegunda_Bomba.AlterarCombustivel(xTipo);
            FSegunda_Bomba.AlterarValor(xValor);
            FSegunda_Bomba.AlterarQuantidadeCombustivel(xQuantidade);
          end

    else if (FControle = 3) then //Bomba 3
         begin
            FTerceira_Bomba.AlterarCombustivel(xTipo);
            FTerceira_Bomba.AlterarValor(xValor);
            FTerceira_Bomba.AlterarQuantidadeCombustivel(xQuantidade);
          end

    else if (FControle = 4) then //Bomba 4
         begin
            FQuarta_Bomba.AlterarCombustivel(xTipo);
            FQuarta_Bomba.AlterarValor(xValor);
            FQuarta_Bomba.AlterarQuantidadeCombustivel(xQuantidade);
          end;
end;

procedure TfrmPrincipal.btnAbastecerCarroClick(Sender: TObject);
begin
  Self.AbastecerCarro;
end;

procedure TfrmPrincipal.btnAbastecerClick(Sender: TObject);
begin
  Self.ExibirAtributosMemo;
  Self.ExibirAbastecimento;
end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  Self.Cadastrar;
end;

procedure TfrmPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  Self.ExibirCadastro;
end;

procedure TfrmPrincipal.btnPrimeiraBombaClick(Sender: TObject);
begin
  Self.LimparFormulario;
  Self.ZPrimeiraBomba(FControle);
  Self.ExibirOpcoes;
end;

procedure TfrmPrincipal.btnQuartaBombaClick(Sender: TObject);
begin
  Self.LimparFormulario;
  Self.ZQuartaBomba(FControle);
  Self.ExibirOpcoes;
end;

procedure TfrmPrincipal.btnSegundaBombaClick(Sender: TObject);
begin
   Self.LimparFormulario;
   Self.ZSegundaBomba(FControle);
   Self.ExibirOpcoes;
end;

procedure TfrmPrincipal.btnTerceiraBombaClick(Sender: TObject);
begin
  Self.LimparFormulario;
  Self.ZTerceiraBomba(FControle);
  Self.ExibirOpcoes;
end;

procedure TfrmPrincipal.ExibirAbastecimento;
var
  xLiberar : Boolean;
begin
   xLiberar := Self.ZControleExistenciaBomba;

   if (xLiberar) then
   begin
  //Liberando visão Abastecimento
  btnAbastecerCarro.Visible    := True;
  edtAbastecerPValor.Visible   := True;
  edtAbastecerPLitro.Visible   := True;
  lblAbastecerPorValor.Visible := True;
  lblAbastecerPorLitro.Visible := True;
  btnConfiguracoes.Visible     := True;
  ////////////////////////////////////

  //Bloqueando visão de Cadastro
  Self.ZAlterarBotaoCadastra;
  edtValorLitro.Visible            := False;
  edtQuantidadeCombustivel.Visible := False;
  cmTiposCombustiveis.Visible      := False;
  btnCadastrar.Visible             := False;
  lblValorLitro.Visible            := False;
  lblQuantidadeCombustivel.Visible := False;
  btnAbastecer.Visible             := False;
  //////////////////////////////////////////
  end

  else
   ShowMessage('Essa Bomba Não foi Cadastrada!')
end;

procedure TfrmPrincipal.ExibirAtributosMemo;
begin
   if (FControle = 1) And (btnPrimeiraBomba.Caption = 'Bomba 1') then
   begin
    mmBomba.Clear;
    mmBomba.Lines.Add('----------Bomba 1----------');
    mmBomba.Lines.Add('--Combustivel :'+ FPrimeira_Bomba.Tipo_Combustivel+'-');
    mmBomba.Lines.Add('--Valor : '+ CurrToStr(FPrimeira_Bomba.Valor_Combustivel)+'-');
    mmBomba.Lines.Add('--Quantidade : '+ FloatToStr(FPrimeira_Bomba.Quantidade_Combustivel)+'-');
   end

  else if (FControle = 2) And (btnSegundaBomba.Caption = 'Bomba 2') then
    begin
    mmBomba.Clear;
    mmBomba.Lines.Add('----------Bomba 2----------');
    mmBomba.Lines.Add('--Combustivel :'+ FSegunda_Bomba.Tipo_Combustivel+'-');
    mmBomba.Lines.Add('--Valor : '+ CurrToStr(FSegunda_Bomba.Valor_Combustivel)+'-');
    mmBomba.Lines.Add('--Quantidade : '+ FloatToStr(FSegunda_Bomba.Quantidade_Combustivel)+'-');
   end

  else if (FControle = 3) And (btnTerceiraBomba.Caption = 'Bomba 3') then
    begin
    mmBomba.Clear;
    mmBomba.Lines.Add('----------Bomba 3----------');
    mmBomba.Lines.Add('--Combustivel :'+ FTerceira_Bomba.Tipo_Combustivel+'-');
    mmBomba.Lines.Add('--Valor : '+ CurrToStr(FTerceira_Bomba.Valor_Combustivel)+'-');
    mmBomba.Lines.Add('--Quantidade : '+ FloatToStr(FTerceira_Bomba.Quantidade_Combustivel)+'-');
   end

  else if (FControle = 4) And (btnQuartaBomba.Caption = 'Bomba 4') then
    begin
    mmBomba.Clear;
    mmBomba.Lines.Add('----------Bomba 4----------');
    mmBomba.Lines.Add('--Combustivel :'+ FQuarta_Bomba.Tipo_Combustivel+'-');
    mmBomba.Lines.Add('--Valor : '+ CurrToStr(FQuarta_Bomba.Valor_Combustivel)+'-');
    mmBomba.Lines.Add('--Quantidade : '+ FloatToStr(FQuarta_Bomba.Quantidade_Combustivel)+'-');
   end
  else
    mmBomba.Lines.Add('Bomba Não Cadastrada!');
end;

function TfrmPrincipal.RetornarTipo: String;
begin
  case TEnumTipoCombustivel(cmTiposCombustiveis.ItemIndex) of
     opGasolina :
      Result := 'Gasolina';

     opAlchool :
      Result := 'Alchool';

     opDisel :
      Result := 'Dissel';
      else
        ShowMessage('Opção Inválida');
  end;
end;

procedure TfrmPrincipal.ExibirCadastro;
begin
  //Liberando visão Cadastro
  Self.ZAlterarBotaoCadastra;
  edtValorLitro.Visible            := True;
  edtQuantidadeCombustivel.Visible := True;
  cmTiposCombustiveis.Visible      := True;
  btnCadastrar.Visible             := True;
  lblValorLitro.Visible            := True;
  lblQuantidadeCombustivel.Visible := True;
  btnAbastecer.Visible             := True;
  /////////////////////////////////////////

  //Bloqueando Visão Abastecimento
  btnAbastecerCarro.Visible     := False;
  edtAbastecerPValor.Visible    := False;
  edtAbastecerPLitro.Visible    := False;
  lblAbastecerPorValor.Visible  := False;
  lblAbastecerPorLitro.Visible  := False;
  btnConfiguracoes.Visible      := False;
  edtValorLitro.Text            :=    '';
  edtQuantidadeCombustivel.Text :=    '';
  cmTiposCombustiveis.ItemIndex :=     0;
  ////////////////////////////////////////
end;

procedure TfrmPrincipal.ExibirOpcoes;
begin
  if (Self.ZControleExistenciaBomba) then
  Self.ExibirAtributosMemo

  else
  begin
    mmBomba.Clear;
    mmBomba.Lines.Add('---------------------------');
  end;

  btnAbastecer.Visible := True;
  btnConfiguracoes.Visible := True;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FreeAndNil(FPrimeira_Bomba);
    FreeAndNil(FSegunda_Bomba);
    FreeAndNil(FTerceira_Bomba);
    FreeAndNil(FQuarta_Bomba);
end;

procedure TfrmPrincipal.LimparFormulario;
begin
  edtValorLitro.Visible            := False;
  edtQuantidadeCombustivel.Visible := False;
  cmTiposCombustiveis.Visible      := False;
  btnCadastrar.Visible             := False;
  lblValorLitro.Visible            := False;
  lblQuantidadeCombustivel.Visible := False;
  btnAbastecerCarro.Visible        := False;
  edtAbastecerPValor.Visible       := False;
  edtAbastecerPLitro.Visible       := False;
  lblAbastecerPorValor.Visible     := False;
  lblAbastecerPorLitro.Visible     := False;
end;

procedure TfrmPrincipal.ZAlterarBotaoCadastra;
begin
  if (FControle = 1) And (btnPrimeiraBomba.Caption = 'Bomba 1') then
    btnCadastrar.Caption := 'Atualizar'

  else if (FControle = 2) And (btnSegundaBomba.Caption = 'Bomba 2') then
    btnCadastrar.Caption := 'Atualizar'

  else if (FControle = 3) And (btnTerceiraBomba.Caption = 'Bomba 3') then
    btnCadastrar.Caption := 'Atualizar'

  else if (FControle = 4) And (btnQuartaBomba.Caption = 'Bomba 4') then
    btnCadastrar.Caption := 'Atualizar'
  else
    btnCadastrar.Caption := 'Cadastrar'
end;

function TfrmPrincipal.ZControleExistenciaBomba: Boolean;
begin
  if (FControle = 1) And (btnPrimeiraBomba.Caption = 'Bomba 1') then
    Result := True

  else if (FControle = 2) And (btnSegundaBomba.Caption = 'Bomba 2') then
    Result := True

  else if (FControle = 3) And (btnTerceiraBomba.Caption = 'Bomba 3') then
    Result := True

  else if (FControle = 4) And (btnQuartaBomba.Caption = 'Bomba 4') then
    Result := True
  else
    Result := False;
end;

procedure TfrmPrincipal.ZPrimeiraBomba(var FControle: Integer);
begin
  FControle := 1;
end;

procedure TfrmPrincipal.ZQuartaBomba(var FControle: Integer);
begin
  FControle := 4;
end;

procedure TfrmPrincipal.ZSegundaBomba(var FControle: Integer);
begin
  FControle := 2;
end;

procedure TfrmPrincipal.ZTerceiraBomba(var FControle: Integer);
begin
  FControle := 3;
end;

end.

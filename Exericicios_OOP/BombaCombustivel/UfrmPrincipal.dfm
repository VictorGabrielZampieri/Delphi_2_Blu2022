object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Posto de Gasolina'
  ClientHeight = 372
  ClientWidth = 721
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblAbastecerPorValor: TLabel
    Left = 480
    Top = 276
    Width = 147
    Height = 18
    Caption = 'Abastecer P/ Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblAbastecerPorLitro: TLabel
    Left = 484
    Top = 319
    Width = 143
    Height = 18
    Caption = 'Abastecer P/ Litro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblValorLitro: TLabel
    Left = 16
    Top = 278
    Width = 93
    Height = 16
    Caption = 'Valor do Litro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblQuantidadeCombustivel: TLabel
    Left = 16
    Top = 321
    Width = 250
    Height = 16
    Caption = 'Quantidade de Combustivel D'#237'sponivel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btnPrimeiraBomba: TButton
    Left = 456
    Top = 96
    Width = 75
    Height = 25
    Caption = '<Sem Bomba>'
    TabOrder = 0
    OnClick = btnPrimeiraBombaClick
  end
  object btnSegundaBomba: TButton
    Left = 624
    Top = 96
    Width = 75
    Height = 25
    Caption = '<Sem Bomba>'
    TabOrder = 1
    OnClick = btnSegundaBombaClick
  end
  object btnTerceiraBomba: TButton
    Left = 456
    Top = 160
    Width = 75
    Height = 25
    Caption = '<Sem Bomba>'
    TabOrder = 2
    OnClick = btnTerceiraBombaClick
  end
  object btnQuartaBomba: TButton
    Left = 624
    Top = 160
    Width = 75
    Height = 25
    Caption = '<Sem Bomba>'
    TabOrder = 3
    OnClick = btnQuartaBombaClick
  end
  object edtValorLitro: TEdit
    Left = 115
    Top = 277
    Width = 89
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object edtQuantidadeCombustivel: TEdit
    Left = 272
    Top = 320
    Width = 89
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object edtAbastecerPValor: TEdit
    Left = 648
    Top = 277
    Width = 51
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object edtAbastecerPLitro: TEdit
    Left = 648
    Top = 320
    Width = 51
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object cmTiposCombustiveis: TComboBox
    Left = 16
    Top = 232
    Width = 129
    Height = 21
    TabOrder = 8
    Text = 'Tipo de Combustiveis'
    Visible = False
    Items.Strings = (
      'Gasolina'
      'Alcool'
      'Disel')
  end
  object btnCadastrar: TButton
    Left = 286
    Top = 275
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 9
    Visible = False
    OnClick = btnCadastrarClick
  end
  object mmBomba: TMemo
    Left = 19
    Top = 32
    Width = 185
    Height = 161
    Lines.Strings = (
      '---------------------------')
    TabOrder = 10
  end
  object btnAbastecer: TButton
    Left = 359
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Abastecer'
    TabOrder = 11
    Visible = False
    OnClick = btnAbastecerClick
  end
  object btnConfiguracoes: TButton
    Left = 246
    Top = 126
    Width = 83
    Height = 25
    Caption = 'Configuracoes'
    TabOrder = 12
    Visible = False
    OnClick = btnConfiguracoesClick
  end
  object btnAbastecerCarro: TButton
    Left = 598
    Top = 230
    Width = 101
    Height = 25
    Caption = 'Abastecer Carro'
    TabOrder = 13
    Visible = False
    OnClick = btnAbastecerCarroClick
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Game'
  ClientHeight = 388
  ClientWidth = 599
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 147
    Width = 68
    Height = 16
    Caption = 'Seu Saldo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 187
    Width = 50
    Height = 16
    Caption = 'Ma'#231#227's :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lbtQuantidade: TLabel
    Left = 88
    Top = 187
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblComprarMacas: TLabel
    Left = 32
    Top = 289
    Width = 175
    Height = 16
    Caption = 'Comprar 5 Ma'#231#227's por 10R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblCaixas: TLabel
    Left = 32
    Top = 209
    Width = 115
    Height = 16
    Caption = 'Caixas de Ma'#231#227's :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblQuantidadeCaixas: TLabel
    Left = 153
    Top = 209
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblVendas: TLabel
    Left = 32
    Top = 237
    Width = 57
    Height = 16
    Caption = 'Vendas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblNumeroVendas: TLabel
    Left = 95
    Top = 237
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblPrecotxt: TLabel
    Left = 416
    Top = 147
    Width = 103
    Height = 16
    Caption = 'Pre'#231'o da caixa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblPrecoMercado: TLabel
    Left = 525
    Top = 147
    Width = 16
    Height = 16
    Caption = '25'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblPro: TLabel
    Left = 416
    Top = 187
    Width = 60
    Height = 16
    Caption = 'Procura :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblCura: TLabel
    Left = 482
    Top = 187
    Width = 38
    Height = 16
    Caption = 'Media'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblQuantidadeMer: TLabel
    Left = 526
    Top = 187
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblPlVendas: TLabel
    Left = 526
    Top = 187
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtSaldo: TEdit
    Left = 106
    Top = 146
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object btnAdicionar: TButton
    Left = 208
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object btnComprarMacas: TButton
    Left = 213
    Top = 286
    Width = 65
    Height = 25
    Caption = 'Comprar'
    TabOrder = 2
    Visible = False
    OnClick = btnComprarMacasClick
  end
  object btnTrabalhar: TButton
    Left = 304
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Trabalhar'
    TabOrder = 3
    Visible = False
    OnClick = btnTrabalharClick
  end
  object btnFazerCaixa: TButton
    Left = 175
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Fazer Caixa'
    TabOrder = 4
    Visible = False
    OnClick = btnFazerCaixaClick
  end
  object btnVendas: TButton
    Left = 120
    Top = 237
    Width = 75
    Height = 20
    Caption = 'Vender'
    TabOrder = 5
    Visible = False
    OnClick = btnVendasClick
  end
end

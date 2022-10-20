object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Elevador'
  ClientHeight = 577
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblAndar: TLabel
    Left = 224
    Top = 40
    Width = 68
    Height = 25
    Caption = 'T'#233'rreo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 129
    Top = 40
    Width = 76
    Height = 25
    Caption = 'Andar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPessoas: TLabel
    Left = 382
    Top = 224
    Width = 13
    Height = 25
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 272
    Top = 224
    Width = 99
    Height = 25
    Caption = 'Pessoas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmAndares: TComboBox
    Left = 288
    Top = 296
    Width = 137
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'T'#233'rreo'
    Items.Strings = (
      'T'#233'rreo')
  end
  object btnSelecionar: TButton
    Left = 320
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 1
    OnClick = btnSelecionarClick
  end
  object btnDescer: TButton
    Left = 112
    Top = 408
    Width = 89
    Height = 25
    Caption = 'Descer Pessoas'
    TabOrder = 2
  end
  object btnEntrar: TButton
    Left = 224
    Top = 408
    Width = 89
    Height = 25
    Caption = 'Entrar Pessoas'
    TabOrder = 3
  end
  object btnCriarElevador: TButton
    Left = 160
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Criar Elevador'
    TabOrder = 4
    OnClick = btnCriarElevadorClick
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 281
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 80
    Top = 28
    Width = 294
    Height = 24
    Caption = 'Calcular Consumo de Energia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 76
    Width = 386
    Height = 18
    Caption = 'Informe a Quantidade de enegia consumida em KW :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResposta: TLabel
    Left = 25
    Top = 247
    Width = 88
    Height = 18
    Caption = 'lblResposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtQuantidade: TEdit
    Left = 400
    Top = 77
    Width = 88
    Height = 21
    TabOrder = 0
  end
  object rgTipoCliente: TRadioGroup
    Left = 25
    Top = 120
    Width = 185
    Height = 105
    Caption = 'Cliente'
    Items.Strings = (
      'Resid'#234'ncia(0,60 KW/h)'
      'Com'#233'rcio(0,48 KW/h)'
      'Ind'#250'stria(1,29 KW/h)')
    TabOrder = 1
  end
  object btnExecutar: TButton
    Left = 232
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
end

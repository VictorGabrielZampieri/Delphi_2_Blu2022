object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 281
  ClientWidth = 418
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
    Left = 12
    Top = 55
    Width = 190
    Height = 18
    Caption = 'Quantidades de Pessoas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtQuantidadePessoas: TEdit
    Left = 208
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object mm_Pessoas: TMemo
    Left = 32
    Top = 120
    Width = 185
    Height = 121
    TabOrder = 1
  end
  object btnExecutar: TButton
    Left = 272
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
end

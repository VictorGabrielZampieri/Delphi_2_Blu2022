object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Carrango Apenas'
  ClientHeight = 281
  ClientWidth = 299
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
    Left = 88
    Top = 24
    Width = 98
    Height = 18
    Caption = 'Loja Carango'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 31
    Top = 65
    Width = 127
    Height = 18
    Caption = 'Comprar Carros :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnComprar: TButton
    Left = 164
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Comprar'
    TabOrder = 0
    OnClick = btnComprarClick
  end
  object mmCarros: TMemo
    Left = 8
    Top = 104
    Width = 249
    Height = 161
    TabOrder = 1
  end
end

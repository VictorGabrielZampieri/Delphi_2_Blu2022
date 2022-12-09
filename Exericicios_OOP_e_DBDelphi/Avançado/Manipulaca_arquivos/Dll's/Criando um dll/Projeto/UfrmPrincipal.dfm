object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 168
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label2: TLabel
    Left = 24
    Top = 45
    Width = 75
    Height = 13
    Caption = 'Digite um Texto'
  end
  object Label3: TLabel
    Left = 240
    Top = 168
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTexto: TEdit
    Left = 24
    Top = 64
    Width = 355
    Height = 21
    TabOrder = 0
  end
  object edtTextoConvertido: TEdit
    Left = 240
    Top = 205
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object edtNumero: TEdit
    Left = 40
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnMaiusculo: TButton
    Left = 40
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Maiusculos'
    TabOrder = 3
    OnClick = btnMaiusculoClick
  end
  object btnMinunsculas: TButton
    Left = 240
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Minunsculas'
    TabOrder = 4
    OnClick = btnMinunsculasClick
  end
  object btnConverter: TButton
    Left = 160
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 5
    OnClick = btnConverterClick
  end
end

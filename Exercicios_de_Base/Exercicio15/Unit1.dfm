object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 196
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 48
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Confirma'#231#227'o'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Costumizado'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btnReplace: TButton
    Left = 112
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Replace'
    TabOrder = 2
    OnClick = btnReplaceClick
  end
  object btnTrim: TButton
    Left = 120
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Trim'
    TabOrder = 3
    OnClick = btnTrimClick
  end
end

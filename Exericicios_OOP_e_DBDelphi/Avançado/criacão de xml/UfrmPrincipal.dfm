object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 342
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmLeitura: TMemo
    Left = 8
    Top = 24
    Width = 598
    Height = 265
    TabOrder = 0
  end
  object btnExecutar: TButton
    Left = 8
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btnExecutarClick
  end
  object XMLDocument1: TXMLDocument
    Left = 480
    Top = 216
  end
end

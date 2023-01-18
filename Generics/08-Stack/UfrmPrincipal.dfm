object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 234
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 240
    Top = 9
    Width = 210
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnPush: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 2
  end
  object btnPop: TButton
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 3
  end
  object btnExtract: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
  end
  object btnPeek: TButton
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
  end
  object btnTrimExcess: TButton
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
  end
  object btnCount: TButton
    Left = 24
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
  end
  object btnCapacity: TButton
    Left = 24
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
  end
end

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
    Left = 64
    Top = 80
    Width = 56
    Height = 16
    Caption = 'N'#250'mero 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 80
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 2'
  end
  object lblResultado: TLabel
    Left = 314
    Top = 240
    Width = 46
    Height = 19
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNumero1: TEdit
    Left = 64
    Top = 112
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 256
    Top = 112
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end

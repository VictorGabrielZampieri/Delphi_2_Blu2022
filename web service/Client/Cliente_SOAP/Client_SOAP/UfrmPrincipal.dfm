object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 88
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
    Left = 8
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object lbl_Resultado: TLabel
    Left = 151
    Top = 56
    Width = 82
    Height = 19
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_valor: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn_EchoDouble: TButton
    Left = 151
    Top = 25
    Width = 75
    Height = 25
    Caption = 'EchoDouble'
    TabOrder = 1
    OnClick = btn_EchoDoubleClick
  end
  object btn_HelloWorld: TButton
    Left = 256
    Top = 25
    Width = 75
    Height = 25
    Caption = 'HelloWorld'
    TabOrder = 2
    OnClick = btn_HelloWorldClick
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Explorando o Debugger'
  ClientHeight = 332
  ClientWidth = 521
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
    Left = 72
    Top = 32
    Width = 401
    Height = 29
    Caption = 'Explorando o Debugger do Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnProcessar: TButton
    Left = 192
    Top = 200
    Width = 113
    Height = 49
    Caption = 'Processar'
    TabOrder = 0
    OnClick = btnProcessarClick
  end
  object mmAtalhos: TMemo
    Left = 8
    Top = 88
    Width = 185
    Height = 106
    Lines.Strings = (
      'F7 - Debug - Trace Into'
      'Ctrl + F7 - Evaluate/Modify'
      'F8 - Debug - Step Over'
      'F9 - Run'
      'Ctrl + F9 - Compile Project'
      'F11 - Object Inspector'
      'F12 - Toggle Form/Unit'
      'Ctrl + F12 - Search Units'
      'Shift + F12 - Search Forms')
    TabOrder = 1
  end
  object mmAtalhos2: TMemo
    Left = 305
    Top = 88
    Width = 185
    Height = 106
    Lines.Strings = (
      'BreakPoints - Ctrl + Alt + B'
      'Call Stack - Ctrl + Alt + S'
      'Watches - Ctrl + Alt + W'
      'Threads - Ctrl + Alt + T')
    TabOrder = 2
  end
end

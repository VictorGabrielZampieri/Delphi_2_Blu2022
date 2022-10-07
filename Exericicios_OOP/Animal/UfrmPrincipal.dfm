object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'OOP'
  ClientHeight = 224
  ClientWidth = 383
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
    Left = 152
    Top = 72
    Width = 51
    Height = 18
    Caption = 'Animal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbAnimais: TComboBox
    Left = 112
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'Pato')
  end
  object btnQueSom: TButton
    Left = 136
    Top = 152
    Width = 97
    Height = 25
    Caption = 'Que Som Eu Fa'#231'o?'
    TabOrder = 1
  end
end

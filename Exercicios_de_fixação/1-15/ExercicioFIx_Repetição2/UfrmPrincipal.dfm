object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Comandos de Repeti'#231#227'o'
  ClientHeight = 281
  ClientWidth = 392
  Color = clGray
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
    Top = 32
    Width = 328
    Height = 29
    Caption = 'COMANDOS DE REPETI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtN1: TEdit
    Left = 40
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtN2: TEdit
    Left = 40
    Top = 234
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object rgComandos: TRadioGroup
    Left = 40
    Top = 67
    Width = 185
    Height = 105
    Caption = 'Comandos'
    Color = clSilver
    Items.Strings = (
      'For'
      'While'
      'Repeat')
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
  end
  object btnExecutar: TButton
    Left = 167
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = btnExecutarClick
  end
end

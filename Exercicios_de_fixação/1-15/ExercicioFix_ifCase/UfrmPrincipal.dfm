object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Comando Condicionais - IF e Case'
  ClientHeight = 235
  ClientWidth = 527
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
    Left = 48
    Top = 16
    Width = 405
    Height = 29
    Caption = 'Comandos Condicional - IF e Case'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 72
    Top = 80
    Width = 163
    Height = 21
    TabOrder = 0
  end
  object btnIf: TButton
    Left = 72
    Top = 128
    Width = 75
    Height = 25
    Caption = 'If'
    TabOrder = 1
    OnClick = btnIfClick
  end
  object btnCase: TButton
    Left = 160
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Case'
    TabOrder = 2
    OnClick = btnCaseClick
  end
  object rgNivel: TRadioGroup
    Left = 281
    Top = 80
    Width = 185
    Height = 105
    Caption = 'Nivel'
    Color = clWhite
    Items.Strings = (
      'Estagiario'
      'Junior'
      'Pleno'
      'S'#234'nior')
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
  end
end

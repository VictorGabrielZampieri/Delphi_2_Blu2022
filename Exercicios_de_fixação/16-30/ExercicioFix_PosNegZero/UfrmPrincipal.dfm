object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Positivo, Negativo ou Zero'
  ClientHeight = 281
  ClientWidth = 418
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
    Left = 32
    Top = 48
    Width = 142
    Height = 18
    Caption = 'Quantos N'#250'meros :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumero: TEdit
    Left = 188
    Top = 49
    Width = 53
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 264
    Top = 47
    Width = 57
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
  object mmNumeros: TMemo
    Left = 32
    Top = 120
    Width = 185
    Height = 137
    TabOrder = 2
  end
end

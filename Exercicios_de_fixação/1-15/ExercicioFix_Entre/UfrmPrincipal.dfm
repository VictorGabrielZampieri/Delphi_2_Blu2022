object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Entre 100 e 200'
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
    Left = 24
    Top = 48
    Width = 373
    Height = 24
    Caption = 'O N'#250'mero vai estar entre 100 e 200?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 168
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtNumero: TEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
end

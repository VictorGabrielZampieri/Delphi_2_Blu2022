object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Qual '#233' Maior'
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
    Left = 88
    Top = 40
    Width = 231
    Height = 29
    Caption = 'Qual Ser'#225' o Maior ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 159
    Width = 73
    Height = 18
    Caption = 'Numero 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 296
    Top = 159
    Width = 73
    Height = 18
    Caption = 'Numero 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPrimeiro: TEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSegundo: TEdit
    Left = 265
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnComparar: TButton
    Left = 168
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Comparar'
    TabOrder = 2
    OnClick = btnCompararClick
  end
end

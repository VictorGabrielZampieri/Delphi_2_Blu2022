object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Servi'#231'o Militar'
  ClientHeight = 392
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
    Left = 16
    Top = 64
    Width = 173
    Height = 18
    Caption = 'Quantidade de Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAptos: TLabel
    Left = 40
    Top = 151
    Width = 42
    Height = 18
    Caption = 'Aptos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNaoAptos: TLabel
    Left = 272
    Top = 151
    Width = 76
    Height = 18
    Caption = 'N'#227'o Aptos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtQuantidadePessoas: TEdit
    Left = 195
    Top = 65
    Width = 54
    Height = 21
    TabOrder = 0
  end
  object mmAptos: TMemo
    Left = 8
    Top = 175
    Width = 153
    Height = 209
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object mmNaoAptos: TMemo
    Left = 232
    Top = 175
    Width = 153
    Height = 209
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object btnVerificar: TButton
    Left = 288
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 3
    OnClick = btnVerificarClick
  end
end

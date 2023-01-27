object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Adapter'
  ClientHeight = 220
  ClientWidth = 315
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
    Left = 48
    Top = 16
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object lblLogradouro: TLabel
    Left = 48
    Top = 104
    Width = 105
    Height = 18
    Caption = 'lblLogradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBairro: TLabel
    Left = 48
    Top = 136
    Width = 66
    Height = 18
    Caption = 'lblBairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCidade: TLabel
    Left = 48
    Top = 176
    Width = 70
    Height = 18
    Caption = 'lblCidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCEP: TEdit
    Left = 48
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnConsultarViaCep: TButton
    Left = 192
    Top = 33
    Width = 107
    Height = 25
    Caption = 'Consultar ViaCep'
    TabOrder = 1
    OnClick = btnConsultarViaCepClick
  end
  object btnConsultarCorreio: TButton
    Left = 192
    Top = 72
    Width = 107
    Height = 25
    Caption = 'Consultar Correio'
    TabOrder = 2
    OnClick = btnConsultarCorreioClick
  end
end

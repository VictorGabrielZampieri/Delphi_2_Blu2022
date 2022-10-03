object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conversor de Graus'
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
  object lblTemperatura: TLabel
    Left = 176
    Top = 170
    Width = 207
    Height = 18
    Caption = 'Temperatura em Fahrenheit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 380
    Height = 24
    Caption = 'Convers'#227'o de Celsius Para Fehrenheit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 117
    Height = 16
    Caption = 'Temp. Em Celsius :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCelsius: TEdit
    Left = 136
    Top = 111
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnConverter: TButton
    Left = 16
    Top = 169
    Width = 137
    Height = 25
    Caption = 'Converter para Fahrenheit'
    TabOrder = 1
    OnClick = btnConverterClick
  end
end

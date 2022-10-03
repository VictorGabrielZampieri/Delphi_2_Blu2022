object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Compra de Carro'
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
    Top = 81
    Width = 201
    Height = 18
    Caption = 'Informe o Custo de Fabrica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 136
    Width = 136
    Height = 18
    Caption = 'O Pre'#231'o do Carro :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 192
    Width = 78
    Height = 18
    Caption = 'Impostos :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 224
    Width = 99
    Height = 18
    Caption = 'Distribuidor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblprcDistribuidor: TLabel
    Left = 129
    Top = 224
    Width = 35
    Height = 18
    Caption = '0 R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblImpostos: TLabel
    Left = 125
    Top = 192
    Width = 35
    Height = 18
    Caption = '0 R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPreco: TLabel
    Left = 166
    Top = 136
    Width = 35
    Height = 18
    Caption = '0 R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCustoFabrica: TEdit
    Left = 231
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalcularImposto: TButton
    Left = 264
    Top = 135
    Width = 88
    Height = 25
    Caption = 'Calcular Imposto'
    TabOrder = 1
    OnClick = btnCalcularImpostoClick
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Minha Primeira Classe'
  ClientHeight = 365
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
    Left = 176
    Top = 16
    Width = 85
    Height = 18
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 144
    Width = 86
    Height = 18
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 56
    Width = 14
    Height = 13
    Caption = 'A :'
  end
  object Label4: TLabel
    Left = 152
    Top = 56
    Width = 13
    Height = 13
    Caption = 'B :'
  end
  object Label5: TLabel
    Left = 272
    Top = 56
    Width = 14
    Height = 13
    Caption = 'C :'
  end
  object Label6: TLabel
    Left = 32
    Top = 184
    Width = 14
    Height = 13
    Caption = 'A :'
  end
  object Label7: TLabel
    Left = 152
    Top = 184
    Width = 13
    Height = 13
    Caption = 'B :'
  end
  object Label8: TLabel
    Left = 272
    Top = 184
    Width = 14
    Height = 13
    Caption = 'C :'
  end
  object lblRespostaX: TLabel
    Left = 32
    Top = 264
    Width = 85
    Height = 18
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRespostaY: TLabel
    Left = 32
    Top = 288
    Width = 86
    Height = 18
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRespostaMaior: TLabel
    Left = 32
    Top = 312
    Width = 160
    Height = 18
    Caption = 'A '#225'rea do Triangulo...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCalcular: TButton
    Left = 90
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 211
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 1
  end
  object edtXa: TEdit
    Left = 52
    Top = 53
    Width = 77
    Height = 21
    TabOrder = 2
  end
  object edtXb: TEdit
    Left = 171
    Top = 53
    Width = 77
    Height = 21
    TabOrder = 3
  end
  object edtXc: TEdit
    Left = 292
    Top = 53
    Width = 77
    Height = 21
    TabOrder = 4
  end
  object edtYa: TEdit
    Left = 52
    Top = 181
    Width = 77
    Height = 21
    TabOrder = 5
  end
  object edtYb: TEdit
    Left = 171
    Top = 181
    Width = 77
    Height = 21
    TabOrder = 6
  end
  object edtYc: TEdit
    Left = 292
    Top = 181
    Width = 77
    Height = 21
    TabOrder = 7
  end
end

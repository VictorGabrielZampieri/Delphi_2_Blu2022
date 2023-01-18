object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 250
  ClientWidth = 225
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
    Top = 24
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 47
    Top = 80
    Width = 50
    Height = 13
    Caption = 'N'#250'mero 2:'
  end
  object Label3: TLabel
    Left = 47
    Top = 128
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object lblResultado: TLabel
    Left = 47
    Top = 212
    Width = 96
    Height = 23
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNum1: TEdit
    Left = 47
    Top = 43
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 47
    Top = 99
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object cbxOperacoes: TComboBox
    Left = 47
    Top = 147
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'Somar'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnCalcular: TButton
    Left = 46
    Top = 181
    Width = 145
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end

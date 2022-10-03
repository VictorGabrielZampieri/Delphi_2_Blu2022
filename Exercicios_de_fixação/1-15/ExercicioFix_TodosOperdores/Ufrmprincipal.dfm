object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Operadores'
  ClientHeight = 257
  ClientWidth = 418
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 269
    Height = 29
    Caption = 'Exibi'#231#227'o de Opera'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 51
    Height = 13
    Caption = '1'#186' N'#250'mero'
  end
  object Label3: TLabel
    Left = 24
    Top = 131
    Width = 51
    Height = 13
    Caption = '2'#186' N'#250'mero'
  end
  object btnCalcular: TButton
    Left = 81
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object edtPrimeiroNumero: TEdit
    Left = 81
    Top = 101
    Width = 75
    Height = 21
    TabOrder = 1
  end
  object edtSegundoNumero: TEdit
    Left = 81
    Top = 128
    Width = 75
    Height = 21
    TabOrder = 2
  end
  object rgOperacoes: TRadioGroup
    Left = 184
    Top = 96
    Width = 185
    Height = 105
    Caption = 'Operacoes'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
    TabOrder = 3
  end
end

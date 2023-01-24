object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculado com interface'
  ClientHeight = 281
  ClientWidth = 176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 24
    Top = 120
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Somar'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object edt_num1: TEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = '1'#186' N'#250'mero'
  end
  object edt_num2: TEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = '2'#186' N'#250'mero'
  end
  object btnCalcular: TButton
    Left = 24
    Top = 147
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object mm_historico: TMemo
    Left = 24
    Top = 184
    Width = 121
    Height = 89
    TabOrder = 4
  end
end

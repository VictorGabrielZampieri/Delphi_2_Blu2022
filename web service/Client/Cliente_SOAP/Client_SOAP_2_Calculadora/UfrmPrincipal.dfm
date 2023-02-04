object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 193
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
  object lbl_Resultado: TLabel
    Left = 168
    Top = 136
    Width = 82
    Height = 19
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_Num1: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = '1'#186' n'#250'mero'
  end
  object edt_num2: TEdit
    Left = 232
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = '2'#186' N'#250'mero'
  end
  object cmb_Operacoes: TComboBox
    Left = 40
    Top = 72
    Width = 121
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
  object btn_calcular: TButton
    Left = 232
    Top = 70
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btn_calcularClick
  end
end

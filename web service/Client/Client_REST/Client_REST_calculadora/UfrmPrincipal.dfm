object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object btn_calcular: TButton
    Left = 232
    Top = 70
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btn_calcularClick
  end
  object cmb_Operacoes: TComboBox
    Left = 40
    Top = 72
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Somar'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object edt_Num1: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = '1'#186' n'#250'mero'
  end
  object edt_num2: TEdit
    Left = 232
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = '2'#186' N'#250'mero'
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090'
    Params = <>
    Left = 16
    Top = 192
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 80
    Top = 200
  end
  object RESTResponse1: TRESTResponse
    Left = 144
    Top = 192
  end
end

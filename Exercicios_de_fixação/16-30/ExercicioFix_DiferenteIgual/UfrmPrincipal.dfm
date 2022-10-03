object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Numeros Iguais ou Diferentes'
  ClientHeight = 213
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
    Left = 32
    Top = 55
    Width = 81
    Height = 18
    Caption = '1'#186' N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 95
    Width = 81
    Height = 18
    Caption = '2'#186' N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResposta: TLabel
    Left = 32
    Top = 151
    Width = 88
    Height = 18
    Caption = 'lblResposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtPrimeiroNumero: TEdit
    Left = 119
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object edtSegundoNumero: TEdit
    Left = 119
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object btnVerificar: TButton
    Left = 224
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = btnVerificarClick
  end
end

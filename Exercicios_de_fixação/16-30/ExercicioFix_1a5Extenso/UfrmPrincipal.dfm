object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'N'#250'mero Por Extenso'
  ClientHeight = 205
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
    Left = 24
    Top = 64
    Width = 214
    Height = 18
    Caption = 'Informe Um N'#250'mero de 1 a 5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResposta: TLabel
    Left = 24
    Top = 160
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
  object edtNumero: TEdit
    Left = 256
    Top = 65
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 163
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end

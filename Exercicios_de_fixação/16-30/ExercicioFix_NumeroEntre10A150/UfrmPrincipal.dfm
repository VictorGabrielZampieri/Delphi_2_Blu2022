object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Verifica'#231#227'o de N'#250'mero'
  ClientHeight = 239
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
    Top = 48
    Width = 366
    Height = 18
    Caption = 'Verifica'#231#227'o de n'#250'meros que est'#227'o entre 10 e 150'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 24
    Top = 120
    Width = 328
    Height = 18
    Caption = 'Dos N'#250'meros Infomardos H'#225' entre 10 e 150'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btnIniciar: TButton
    Left = 152
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object edtSizeArray: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
end

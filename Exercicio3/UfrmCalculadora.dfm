object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 281
  ClientWidth = 554
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuHighlight
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 344
    Top = 92
    Width = 16
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Calculadora: TLabel
    Left = 128
    Top = 24
    Width = 322
    Height = 24
    Caption = 'CALCULADOR +DEVS2 - DELPHI'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object cmbOperador: TComboBox
    Left = 136
    Top = 96
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir'
      'Resto'
      'Divis'#227'o Inteira')
  end
  object btCalcular: TButton
    Left = 200
    Top = 152
    Width = 129
    Height = 49
    Caption = 'CALCULAR'
    TabOrder = 1
    OnClick = btCalcularClick
  end
  object edtNumerador: TEdit
    Left = 24
    Top = 96
    Width = 89
    Height = 24
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object edtDenominador: TEdit
    Left = 256
    Top = 96
    Width = 73
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtResultado: TEdit
    Left = 376
    Top = 96
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
end

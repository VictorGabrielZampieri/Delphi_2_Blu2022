object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 308
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 23
    Caption = 'R$:0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 97
    Top = 61
    Width = 118
    Height = 13
    Caption = 'Trabalhar para mamacos'
  end
  object Label3: TLabel
    Left = 97
    Top = 109
    Width = 119
    Height = 13
    Caption = 'Trabalhar para mendigos'
    Visible = False
  end
  object Label4: TLabel
    Left = 97
    Top = 157
    Width = 107
    Height = 13
    Caption = 'trabalhar para agiotas'
    Visible = False
  end
  object Label5: TLabel
    Left = 97
    Top = 205
    Width = 115
    Height = 13
    Caption = 'Trabalhar para Crian'#231'as'
    Visible = False
  end
  object Button1: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Trabalhar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Trabalhar'
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 221
    Top = 61
    Width = 116
    Height = 17
    TabOrder = 2
  end
  object ProgressBar2: TProgressBar
    Left = 222
    Top = 109
    Width = 115
    Height = 17
    Max = 450
    TabOrder = 3
    Visible = False
  end
  object Button3: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Trabalhar'
    TabOrder = 4
    Visible = False
    OnClick = Button3Click
  end
  object ProgressBar3: TProgressBar
    Left = 222
    Top = 157
    Width = 115
    Height = 17
    Max = 1000
    TabOrder = 5
    Visible = False
  end
  object Button4: TButton
    Left = 16
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Trabalhar'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object ProgressBar4: TProgressBar
    Left = 222
    Top = 205
    Width = 115
    Height = 17
    Max = 2000
    TabOrder = 7
    Visible = False
  end
  object Button5: TButton
    Left = 16
    Top = 248
    Width = 321
    Height = 25
    Caption = 'Criar uma Empresa'
    TabOrder = 8
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 32
    Width = 359
    Height = 268
    Caption = 'COMPRAR O MUNDO'
    TabOrder = 9
    Visible = False
    OnClick = Button6Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 344
    Top = 56
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 344
    Top = 104
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer3Timer
    Left = 344
    Top = 152
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer4Timer
    Left = 344
    Top = 200
  end
end

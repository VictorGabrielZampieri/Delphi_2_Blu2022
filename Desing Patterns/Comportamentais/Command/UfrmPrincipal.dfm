object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Command'
  ClientHeight = 305
  ClientWidth = 585
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
    Top = 77
    Width = 55
    Height = 13
    Caption = 'Programas:'
  end
  object Label2: TLabel
    Left = 176
    Top = 77
    Width = 52
    Height = 13
    Caption = 'Processos:'
  end
  object Label3: TLabel
    Left = 368
    Top = 77
    Width = 115
    Height = 13
    Caption = 'Vari'#225'veis de Ambientes:'
  end
  object Memo1: TMemo
    Left = 8
    Top = 96
    Width = 145
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 176
    Top = 96
    Width = 169
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Memo3: TMemo
    Left = 368
    Top = 96
    Width = 185
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object btn_Executar: TButton
    Left = 208
    Top = 8
    Width = 105
    Height = 42
    Caption = 'Executar Comando'
    TabOrder = 3
    OnClick = btn_ExecutarClick
  end
end

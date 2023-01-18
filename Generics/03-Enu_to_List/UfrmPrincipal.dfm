object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
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
  object ComboBox1: TComboBox
    Left = 40
    Top = 32
    Width = 177
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object btnMes: TButton
    Left = 40
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Mes'
    TabOrder = 1
    OnClick = btnMesClick
  end
  object btnDia: TButton
    Left = 142
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Dia'
    TabOrder = 2
    OnClick = btnDiaClick
  end
end

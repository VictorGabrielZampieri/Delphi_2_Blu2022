object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Array e Record'
  ClientHeight = 307
  ClientWidth = 313
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtDia: TEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Dia'
  end
  object edtTemperatura: TEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Temperatura'
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 144
    Width = 243
    Height = 113
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 192
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnConsultar: TButton
    Left = 192
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = btnConsultarClick
  end
end

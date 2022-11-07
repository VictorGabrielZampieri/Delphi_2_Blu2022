object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aviao'
  ClientHeight = 287
  ClientWidth = 670
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnTremDePouso: TButton
    Left = 248
    Top = 104
    Width = 137
    Height = 25
    Caption = 'Subir Trem de Pouso'
    TabOrder = 0
    OnClick = btnTremDePousoClick
  end
end

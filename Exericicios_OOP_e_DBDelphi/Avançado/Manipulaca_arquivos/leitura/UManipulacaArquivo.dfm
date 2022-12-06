object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Manipulacao de arquivo'
  ClientHeight = 203
  ClientWidth = 251
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
    Left = 80
    Top = 56
    Width = 95
    Height = 13
    Caption = 'Informe um Numero'
  end
  object btnTabuada: TButton
    Left = 80
    Top = 152
    Width = 95
    Height = 25
    Caption = 'btnTabuada'
    TabOrder = 0
    OnClick = btnTabuadaClick
  end
  object edtNumero: TEdit
    Left = 64
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
end

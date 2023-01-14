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
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 32
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Relatrios2: TMenuItem
        Caption = 'Execicio 01'
        OnClick = Relatrios2Click
      end
      object Exercicio021: TMenuItem
        Caption = 'Exercicio 02'
        OnClick = Exercicio021Click
      end
      object Exercicio022: TMenuItem
        Caption = 'Exercicio 03'
        OnClick = Exercicio022Click
      end
    end
  end
end

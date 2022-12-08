object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 414
  ClientWidth = 554
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
    Left = 56
    Top = 32
    Width = 104
    Height = 13
    Caption = 'Nome do Computador'
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 81
    Height = 13
    Caption = 'Nome do Usu'#225'rio'
  end
  object Label3: TLabel
    Left = 56
    Top = 144
    Width = 96
    Height = 13
    Caption = 'Diret'#243'rio do Sistema'
  end
  object Label4: TLabel
    Left = 56
    Top = 200
    Width = 102
    Height = 13
    Caption = 'Diret'#243'rio do Windows'
  end
  object Label5: TLabel
    Left = 56
    Top = 256
    Width = 84
    Height = 13
    Caption = 'Pasta Tempor'#225'ria'
  end
  object Label6: TLabel
    Left = 56
    Top = 320
    Width = 94
    Height = 13
    Caption = 'Vers'#227'o do Windows'
  end
  object edtNomePc: TEdit
    Left = 56
    Top = 51
    Width = 473
    Height = 21
    TabOrder = 0
  end
  object edtNomeUser: TEdit
    Left = 56
    Top = 104
    Width = 473
    Height = 21
    TabOrder = 1
  end
  object edtDirSistema: TEdit
    Left = 56
    Top = 160
    Width = 473
    Height = 21
    TabOrder = 2
  end
  object edtDirWindows: TEdit
    Left = 56
    Top = 216
    Width = 473
    Height = 21
    TabOrder = 3
  end
  object edtDirTemp: TEdit
    Left = 56
    Top = 270
    Width = 473
    Height = 21
    TabOrder = 4
  end
  object edtVersaoWindows: TEdit
    Left = 56
    Top = 339
    Width = 473
    Height = 21
    TabOrder = 5
  end
  object btnInformacoes: TButton
    Left = 232
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Informa'#231#245'es'
    TabOrder = 6
    OnClick = btnInformacoesClick
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 383
  ClientWidth = 501
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
    Top = 21
    Width = 200
    Height = 19
    Caption = 'Informe o nome do Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mmArquivo: TMemo
    Left = 8
    Top = 117
    Width = 485
    Height = 258
    TabOrder = 0
  end
  object edtArquivo: TEdit
    Left = 8
    Top = 40
    Width = 485
    Height = 21
    TabOrder = 1
  end
  object btnLeitura: TButton
    Left = 8
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Ler Arquivo'
    TabOrder = 2
    OnClick = btnLeituraClick
  end
end

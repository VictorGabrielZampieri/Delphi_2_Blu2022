object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conversao'
  ClientHeight = 189
  ClientWidth = 418
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 69
    Height = 18
    Caption = 'Cota'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 67
    Height = 18
    Caption = 'Dol'#225'res :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblReais: TLabel
    Left = 22
    Top = 152
    Width = 69
    Height = 18
    Caption = 'Cota'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtQuantidadeDolar: TEdit
    Left = 112
    Top = 97
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object edtCotacao: TEdit
    Left = 112
    Top = 65
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object btnConverter: TButton
    Left = 232
    Top = 63
    Width = 121
    Height = 42
    Caption = 'Converter para Real'
    TabOrder = 2
    OnClick = btnConverterClick
  end
end

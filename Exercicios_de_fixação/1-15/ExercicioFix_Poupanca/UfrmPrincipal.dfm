object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Poupan'#231'a'
  ClientHeight = 212
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
    Left = 40
    Top = 87
    Width = 75
    Height = 18
    Caption = 'Deposito :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 127
    Width = 196
    Height = 18
    Caption = 'Rendimento da Poupan'#231'a :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 242
    Top = 127
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDeposito: TEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnDepoistar: TButton
    Left = 280
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Depoistar'
    TabOrder = 1
    OnClick = btnDepoistarClick
  end
end

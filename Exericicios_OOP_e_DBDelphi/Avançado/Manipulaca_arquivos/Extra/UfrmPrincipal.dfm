object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 364
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 32
    Width = 50
    Height = 19
    Caption = 'Codigo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 32
    Width = 42
    Height = 19
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 28
    Top = 74
    Width = 141
    Height = 19
    Caption = 'Data de Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtCodigo: TEdit
    Left = 96
    Top = 34
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 240
    Top = 34
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object mskDataNascimento: TMaskEdit
    Left = 192
    Top = 76
    Width = 104
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object btnGravar: TButton
    Left = 28
    Top = 111
    Width = 75
    Height = 26
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object mmRegistros: TMemo
    Left = 14
    Top = 168
    Width = 291
    Height = 177
    TabOrder = 4
  end
  object btnLer: TButton
    Left = 192
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Ler Registros'
    TabOrder = 5
    OnClick = btnLerClick
  end
end

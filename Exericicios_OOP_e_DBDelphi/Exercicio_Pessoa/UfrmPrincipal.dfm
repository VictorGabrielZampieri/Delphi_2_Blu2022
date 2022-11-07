object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 341
  ClientWidth = 567
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
    Left = 16
    Top = 95
    Width = 52
    Height = 18
    Caption = 'Nome :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 143
    Width = 158
    Height = 18
    Caption = 'Data de Nascimento :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 191
    Width = 55
    Height = 18
    Caption = 'Altura :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 36
    Top = 23
    Width = 478
    Height = 24
    Caption = 'Cadastro de Pessoas e Exibi'#231#227'o de Informa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 180
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtData: TEdit
    Left = 180
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtAltura: TEdit
    Left = 180
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCadastrar: TButton
    Left = 344
    Top = 94
    Width = 113
    Height = 25
    Caption = 'Cadastrar e Exibir'
    TabOrder = 3
    OnClick = btnCadastrarClick
  end
  object mmDadosPessoais: TMemo
    Left = 8
    Top = 238
    Width = 551
    Height = 89
    TabOrder = 4
  end
end

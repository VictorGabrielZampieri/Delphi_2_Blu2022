object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro De Pessoas'
  ClientHeight = 281
  ClientWidth = 506
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 63
    Width = 48
    Height = 18
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 107
    Width = 74
    Height = 18
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCpf_Cnpj: TLabel
    Left = 32
    Top = 199
    Width = 87
    Height = 18
    Caption = 'lblCpf_Cnpj'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblIdade_Fie: TLabel
    Left = 32
    Top = 243
    Width = 95
    Height = 18
    Caption = 'lblIdade_Fie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtNome: TEdit
    Left = 86
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtEndereco: TEdit
    Left = 86
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnPessoaFisica: TButton
    Left = 8
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Pessoa Fisica'
    TabOrder = 2
    OnClick = btnPessoaFisicaClick
  end
  object btnPessoaJuridica: TButton
    Left = 128
    Top = 142
    Width = 79
    Height = 25
    Caption = 'Pessoa Juridica'
    TabOrder = 3
    OnClick = btnPessoaJuridicaClick
  end
  object edtCpf_Cnpj: TEdit
    Left = 86
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object edtIdade_Fie: TEdit
    Left = 86
    Top = 244
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object btnCadastrar: TButton
    Left = 240
    Top = 222
    Width = 79
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 6
    Visible = False
    OnClick = btnCadastrarClick
  end
  object mmExibirPessoa: TMemo
    Left = 240
    Top = 63
    Width = 177
    Height = 152
    TabOrder = 7
    Visible = False
  end
  object btnExibir: TButton
    Left = 338
    Top = 221
    Width = 79
    Height = 25
    Caption = 'Exibir Pessoa'
    TabOrder = 8
    Visible = False
    OnClick = btnExibirClick
  end
  object btnNovaPessoa: TButton
    Left = 423
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Nova Pessoa'
    TabOrder = 9
    Visible = False
    OnClick = btnNovaPessoaClick
  end
end

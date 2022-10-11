object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conta Bancaria'
  ClientHeight = 384
  ClientWidth = 556
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
    Left = 24
    Top = 79
    Width = 91
    Height = 18
    Caption = 'N'#186' Da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 127
    Width = 43
    Height = 18
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 175
    Width = 42
    Height = 18
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 392
    Top = 56
    Width = 126
    Height = 18
    Caption = 'Extrato Da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCadastro: TButton
    Left = 26
    Top = 222
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btnCadastroClick
  end
  object btnAlterarNome: TButton
    Left = 56
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 1
    Visible = False
    OnClick = btnAlterarNomeClick
  end
  object btnDeposito: TButton
    Left = 368
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Dep'#243'sito'
    TabOrder = 2
    Visible = False
    OnClick = btnDepositoClick
  end
  object btnSaque: TButton
    Left = 216
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Saque'
    TabOrder = 3
    Visible = False
    OnClick = btnSaqueClick
  end
  object edtNumeroConta: TEdit
    Left = 122
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtNomeUsuario: TEdit
    Left = 122
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtSaldo: TEdit
    Left = 122
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtDeposito: TEdit
    Left = 338
    Top = 274
    Width = 121
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object edtSaque: TEdit
    Left = 186
    Top = 274
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
  end
  object edtNovoNome: TEdit
    Left = 26
    Top = 274
    Width = 121
    Height = 21
    TabOrder = 9
    Visible = False
  end
  object mmExtrato: TMemo
    Left = 360
    Top = 80
    Width = 188
    Height = 177
    TabOrder = 10
  end
  object btnSair: TButton
    Left = 136
    Top = 222
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 11
    Visible = False
    OnClick = btnSairClick
  end
end

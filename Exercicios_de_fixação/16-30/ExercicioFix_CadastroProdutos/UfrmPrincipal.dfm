object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 555
  ClientWidth = 586
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
    Left = 8
    Top = 57
    Width = 291
    Height = 18
    Caption = 'Quantos Produtos Ser'#227'o Cadastrados : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCusto: TLabel
    Left = 8
    Top = 113
    Width = 122
    Height = 18
    Caption = 'M'#233'dia de Custo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPreco: TLabel
    Left = 8
    Top = 145
    Width = 123
    Height = 18
    Caption = 'M'#233'dia de Pre'#231'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCadastrar: TButton
    Left = 367
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object edtQuantidadeProdutos: TEdit
    Left = 298
    Top = 58
    Width = 63
    Height = 21
    TabOrder = 1
  end
  object mmProdutos: TMemo
    Left = 8
    Top = 218
    Width = 249
    Height = 329
    TabOrder = 2
  end
  object mmInfo: TMemo
    Left = 298
    Top = 218
    Width = 265
    Height = 329
    TabOrder = 3
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Folha de Pagamento'
  ClientHeight = 278
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
    Top = 46
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
    Left = 24
    Top = 70
    Width = 99
    Height = 18
    Caption = 'Salario Fixo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 98
    Width = 127
    Height = 18
    Caption = 'Total de Vendas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 169
    Top = 184
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblSalarioFixo: TLabel
    Left = 169
    Top = 208
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblSalarioFinal: TLabel
    Left = 167
    Top = 236
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 32
    Top = 184
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
  object Label5: TLabel
    Left = 32
    Top = 208
    Width = 99
    Height = 18
    Caption = 'Salario Fixo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 236
    Width = 118
    Height = 18
    Caption = 'Salario No M'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 118
    Top = 154
    Width = 41
    Height = 18
    Caption = 'Folha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNomeFuncionario: TEdit
    Left = 169
    Top = 44
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtVendas: TEdit
    Left = 169
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSalarioFixo: TEdit
    Left = 169
    Top = 71
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnGerarFolha: TButton
    Left = 312
    Top = 69
    Width = 75
    Height = 25
    Caption = 'Gerar Folha'
    TabOrder = 3
    OnClick = btnGerarFolhaClick
  end
end

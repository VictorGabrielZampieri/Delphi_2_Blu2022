object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'M'#233'dia Aritimetica'
  ClientHeight = 339
  ClientWidth = 357
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
    Top = 41
    Width = 105
    Height = 16
    Caption = 'Nome do Aluno :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 81
    Width = 96
    Height = 16
    Caption = 'Primeira Nota :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 121
    Width = 99
    Height = 16
    Caption = 'Segunda Nota :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 161
    Width = 96
    Height = 16
    Caption = 'Terceira Nota :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNomeAluno: TLabel
    Left = 40
    Top = 257
    Width = 105
    Height = 16
    Caption = 'Nome do Aluno :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblMedia: TLabel
    Left = 40
    Top = 279
    Width = 108
    Height = 16
    Caption = 'Media do Aluno :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblSituacaoAluno: TLabel
    Left = 40
    Top = 301
    Width = 126
    Height = 16
    Caption = 'Situacao do Aluno :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtNomeAluno: TEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 168
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNota2: TEdit
    Left = 168
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNota3: TEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnCalcularMedia: TButton
    Left = 40
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Calcular Media'
    TabOrder = 4
    OnClick = btnCalcularMediaClick
  end
end

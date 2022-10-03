object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculo da Media'
  ClientHeight = 309
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
    Top = 57
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
    Top = 84
    Width = 120
    Height = 16
    Caption = 'Nota da 1'#186' Prova :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 116
    Width = 120
    Height = 16
    Caption = 'Nota da 2'#186' Prova :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 138
    Width = 120
    Height = 16
    Caption = 'Nota da 3'#186' Prova :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 40
    Top = 225
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
  object lblMedia: TLabel
    Left = 40
    Top = 247
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
  object edtNomeAluno: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 192
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNota2: TEdit
    Left = 192
    Top = 137
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNota3: TEdit
    Left = 192
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnCalcularMedia: TButton
    Left = 136
    Top = 176
    Width = 97
    Height = 25
    Caption = 'Calcular a Media'
    TabOrder = 4
    OnClick = btnCalcularMediaClick
  end
end

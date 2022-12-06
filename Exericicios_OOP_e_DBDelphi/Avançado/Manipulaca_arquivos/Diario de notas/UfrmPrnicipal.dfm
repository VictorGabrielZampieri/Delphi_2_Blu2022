object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Diario da Classe'
  ClientHeight = 404
  ClientWidth = 450
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
    Left = 24
    Top = 24
    Width = 72
    Height = 13
    Caption = 'Nome do Aluno'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 37
    Height = 13
    Caption = '1'#170' Nota'
  end
  object Label3: TLabel
    Left = 136
    Top = 75
    Width = 37
    Height = 13
    Caption = '2'#170' Nota'
  end
  object edtNome: TEdit
    Left = 24
    Top = 48
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edtPrimeiraNota: TEdit
    Left = 24
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object edtSegundaNota: TEdit
    Left = 136
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 240
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Gravar Aluno'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 342
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Ler Alunos'
    TabOrder = 4
    OnClick = btnLerClick
  end
  object mmDiario: TMemo
    Left = 24
    Top = 136
    Width = 393
    Height = 260
    TabOrder = 5
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema'
  ClientHeight = 323
  ClientWidth = 331
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
  object mmAlunos: TMemo
    Left = 40
    Top = 208
    Width = 249
    Height = 99
    TabOrder = 0
  end
  object btnDisciplina: TButton
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Disciplina'
    TabOrder = 1
    OnClick = btnDisciplinaClick
  end
  object btnAluno: TButton
    Left = 200
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Aluno'
    Enabled = False
    TabOrder = 2
    OnClick = btnAlunoClick
  end
  object btnResultados: TButton
    Left = 120
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Resultados'
    Enabled = False
    TabOrder = 3
    OnClick = btnResultadosClick
  end
end

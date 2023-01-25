object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 490
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtValor: TEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Valor Atual'
  end
  object edtQtdParcelas: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Qtd Parcelas'
  end
  object cmbPrazoParcelas: TComboBox
    Left = 328
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 2
    TextHint = 'Prazo de Pagamento'
    Items.Strings = (
      'Mensal'
      'Anual')
  end
  object btnGerar: TButton
    Left = 512
    Top = 46
    Width = 97
    Height = 25
    Caption = 'Gerar a Proje'#231#227'p'
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 32
    Top = 96
    Width = 577
    Height = 353
    TabOrder = 4
  end
end

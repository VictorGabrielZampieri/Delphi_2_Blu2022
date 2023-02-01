object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Observer'
  ClientHeight = 518
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline Frame11: TFrame1
    Left = 0
    Top = 8
    Width = 385
    Height = 385
    TabOrder = 0
    ExplicitTop = 8
    ExplicitWidth = 385
    inherited btnGravar: TButton
      Left = 264
      Top = 26
      Width = 97
      Height = 65
      ExplicitLeft = 264
      ExplicitTop = 26
      ExplicitWidth = 97
      ExplicitHeight = 65
    end
  end
  inline frmSaldo1: TfrmSaldo
    Left = 391
    Top = 8
    Width = 257
    Height = 156
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 391
    ExplicitTop = 8
    ExplicitWidth = 257
    inherited lbl_creditos: TLabel
      Left = 211
      Top = 60
      ExplicitLeft = 211
      ExplicitTop = 60
    end
    inherited lbl_debitos: TLabel
      Left = 211
      Top = 82
      ExplicitLeft = 211
      ExplicitTop = 82
    end
    inherited lbl_saldo: TLabel
      Left = 211
      ExplicitLeft = 211
    end
  end
  inline frmLog1: TfrmLog
    Left = 0
    Top = 359
    Width = 482
    Height = 173
    TabOrder = 2
    ExplicitTop = 359
    ExplicitWidth = 482
    inherited Memo1: TMemo
      Left = 24
      Top = 40
      Width = 417
      Height = 121
      ExplicitLeft = 24
      ExplicitTop = 40
      ExplicitWidth = 417
      ExplicitHeight = 121
    end
  end
  inline frmHistorico1: TfrmHistorico
    Left = 391
    Top = 152
    Width = 266
    Height = 225
    TabOrder = 3
    ExplicitLeft = 391
    ExplicitTop = 152
    ExplicitWidth = 266
    inherited Label1: TLabel
      Left = 101
      ExplicitLeft = 101
    end
    inherited DBGrid1: TDBGrid
      Left = 3
      Top = 46
      Width = 265
    end
    inherited ClientDataSet1: TClientDataSet
      Left = 128
      Top = 112
    end
  end
end

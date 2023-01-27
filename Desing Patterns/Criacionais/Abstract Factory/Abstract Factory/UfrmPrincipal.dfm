object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sem Abstract Factory'
  ClientHeight = 401
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cbx_marcas: TComboBox
    Left = 32
    Top = 32
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Dell'
    Items.Strings = (
      'Dell'
      'Apple')
  end
  object btn_exibir: TButton
    Left = 102
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 1
    OnClick = btn_exibirClick
  end
  object gbx_dados_notebook: TGroupBox
    Left = 32
    Top = 112
    Width = 233
    Height = 105
    Caption = 'Dados do Notebook'
    TabOrder = 2
    object lblTamanhoTela: TLabel
      Left = 24
      Top = 24
      Width = 98
      Height = 16
      Caption = 'lblTamanhoTela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_MemoriaRam: TLabel
      Left = 24
      Top = 64
      Width = 105
      Height = 16
      Caption = 'lbl_MemoriaRam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gbx_dados_desktop: TGroupBox
    Left = 32
    Top = 252
    Width = 233
    Height = 105
    Caption = 'Dados do Desktop'
    TabOrder = 3
    object lblProcessador: TLabel
      Left = 24
      Top = 36
      Width = 95
      Height = 16
      Caption = 'lblProcessador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTamanhoHD: TLabel
      Left = 24
      Top = 71
      Width = 90
      Height = 16
      Caption = 'lblTamanhoHD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end

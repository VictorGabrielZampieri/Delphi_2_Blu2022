object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Observer'
  ClientHeight = 341
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Opera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 32
    Top = 53
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object Label3: TLabel
    Left = 32
    Top = 78
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Shape1: TShape
    Left = 247
    Top = 21
    Width = 2
    Height = 108
  end
  object cmbOperacao: TComboBox
    Left = 96
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object cmbCategoria: TComboBox
    Left = 96
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 96
    Top = 75
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 144
    Width = 393
    Height = 177
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Operacao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object btnGravar: TButton
    Left = 280
    Top = 24
    Width = 145
    Height = 105
    Caption = 'Gravar'
    TabOrder = 4
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      770000009619E0BD0100000018000000030000000000030000007700084F7065
      726163616F01004900000001000557494454480200020064000943617465676F
      72696101004900000001000557494454480200020064000556616C6F72080004
      000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 208
    object ClientDataSet1Operacao: TStringField
      FieldName = 'Operacao'
      Size = 100
    end
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object ClientDataSet1Valor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 280
    Top = 216
  end
end

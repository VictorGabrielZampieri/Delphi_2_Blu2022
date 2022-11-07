object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
  ClientHeight = 304
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 56
    Width = 67
    Height = 13
    Caption = 'id_fornecedor'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 40
    Top = 99
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 40
    Top = 141
    Width = 20
    Height = 13
    Caption = 'cnpj'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 216
    Width = 441
    Height = 72
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Width = 200
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 72
    Width = 134
    Height = 21
    DataField = 'id_fornecedor'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 118
    Width = 134
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 157
    Width = 134
    Height = 21
    DataField = 'cnpj'
    DataSource = DataSource1
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_fornecedor'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.fornecedor'
    Left = 352
    Top = 128
    object FDTable1id_fornecedor: TFDAutoIncField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 95
    end
    object FDTable1cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 14
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 336
    Top = 48
  end
end

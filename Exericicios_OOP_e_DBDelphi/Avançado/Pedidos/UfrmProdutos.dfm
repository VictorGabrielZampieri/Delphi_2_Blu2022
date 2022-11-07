object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 422
  ClientWidth = 642
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
    Left = 56
    Top = 80
    Width = 52
    Height = 13
    Caption = 'id_produto'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 136
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 200
    Width = 91
    Height = 13
    Caption = 'Unidade de Medida'
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 96
    Width = 134
    Height = 21
    DataField = 'id_produto'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 152
    Width = 150
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 272
    Width = 529
    Height = 137
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
        FieldName = 'id_produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idunidade_medida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupUnidadeMedida'
        Title.Caption = 'Unidade Medida'
        Width = 150
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 219
    Width = 145
    Height = 21
    DataField = 'idunidade_medida'
    DataSource = DataSource1
    KeyField = 'id_unidade'
    ListField = 'descricao'
    ListSource = DataSource2
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 400
    Top = 56
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_produto'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.produto'
    Left = 488
    Top = 104
    object FDTable1descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object FDTable1id_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1idunidade_medida: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idunidade_medida'
      Origin = 'idunidade_medida'
    end
    object FDTable1LookupUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupUnidadeMedida'
      LookupDataSet = FDTableLookup
      LookupKeyFields = 'id_unidade'
      LookupResultField = 'descricao'
      KeyFields = 'idunidade_medida'
      Size = 95
      Lookup = True
    end
  end
  object FDTableLookup: TFDTable
    IndexFieldNames = 'id_unidade'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.unidade_medida'
    Left = 344
    Top = 136
    object FDTableLookupid_unidade: TFDAutoIncField
      FieldName = 'id_unidade'
      Origin = 'id_unidade'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableLookupdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 95
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTableLookup
    Left = 456
    Top = 152
  end
end
